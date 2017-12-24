<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Exception\BadResponseException;
use GuzzleHttp\Client;
use App\Builds;
use App\Keystones_why;
use App\Top_Player;
use App\Reviews;
use App\Champions;
use App\Roles;
use App\Patch;
use App\Users;
use App\Runes;
use App\Keystones;


class BuildsController extends Controller
{

    public function getTools(){
        $data = array();
        $data["champions"] = Champions::orderBy('champion_name', 'asc')->get();
        $data["lanes"] = Roles::get();
        $data["patches"] = Patch::orderBy('id', 'desc')->get();
        return response()->json($data);
    }

    public function setupData()
    {

        try {
            $client = new \GuzzleHttp\Client();
            //$response = $client->request('GET', "http://forge.com/data.json", ['verify' => false]);
            $data = json_decode(file_get_contents("data.json"), true);

            foreach ($data as $key => $value) {
                $champion_id = Controller::getChampionId($key);
                foreach ($data[$key] as $key => $valuex) {
                    if ($valuex["top_player"] == "") {
                        $topPlayer = Top_Player::firstOrNew(['name' => "Free"]);
                        $topPlayer->name = "Free";
                        $topPlayer->image = "FREE";
                        $topPlayer->role_id = Controller::laneDetected($valuex["position"]);
                        $topPlayer->save();
                    } else {
                        $topPlayer = Top_Player::firstOrNew(['name' => $valuex["top_player"]]);
                        $topPlayer->name = $valuex["top_player"];
                        $topPlayer->image = strtoupper(str_replace(' ', '', $valuex["top_player"]));
                        $topPlayer->role_id = Controller::laneDetected($valuex["position"]);
                        $topPlayer->save();
                    }
                    $title = $valuex["title"];
                    $description = $valuex["description"];
                    $role_id = Controller::laneDetected($valuex["position"]);
                    $patch_id = Controller::getPatchId($valuex["patch"]);
                    $rune_main_id = Controller::getRuneId($valuex["primary"]);
                    $rune_secondary_id = Controller::getRuneId($valuex["secondry"]);
                    $main_keystones = array();
                    $secondary_keystones = array();
                    foreach ($valuex["primary_data"] as $key => $value) {
                        array_push($main_keystones,Controller::getKeystoneId($value["name"]));
                    }
                    foreach ($valuex["secondary_data"] as $key => $value) {
                        array_push($secondary_keystones,Controller::getKeystoneId($value["name"]));
                    }
                    $keystones = array();
                    $keystones["primary_data"] = $main_keystones;
                    $keystones["secondary_data"] = $secondary_keystones;

                    $newUser = Users::firstOrNew(['account_id' => 1]);
                    $newUser->verify = true;
                    $newUser->summoner_name = "Runeforge.gg";
                    $newUser->summoner_region = "";
                    $newUser->summoner_id = "";
                    $newUser->summoner_profile_icon = "";
                    $newUser->summoner_level = "";
                    $newUser->save();
                    $build = Builds::firstOrNew(['title' => (string)$title]);
                    $build->title = (string)$title;
                    $build->user_id = $newUser->id;
                    $build->description = (string)$description;
                    $build->keystones = (json_encode($keystones,true));
                    $build->rune_secondary_id = $rune_secondary_id;
                    $build->rune_main_id = $rune_main_id;
                    $build->patch_id = $patch_id;
                    $build->role_id = $role_id;
                    $build->champion_id = $champion_id;
                    $build->top_player_id = $topPlayer->id;
                    $build->save();
                    foreach ($valuex["primary_data"] as $key => $value) {
                        $newWhy = Keystones_why::firstOrNew(['builds_id' => $build->id,'keystones_id' => Controller::getKeystoneId($value["name"])]);
                        $newWhy->stone_why = $value["why"];
                        $newWhy->save();
                    }
                    foreach ($valuex["secondary_data"] as $key => $value) {
                        $newWhy = Keystones_why::firstOrNew(['builds_id' => $build->id,'keystones_id' => Controller::getKeystoneId($value["name"])]);
                        $newWhy->stone_why = $value["why"];
                        $newWhy->save();
                    }
                }
            }

            return Controller::filed( "Verifying Runes has been updated","200");

        } catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }

    }

    public function getDataByUserId($id){
        $userBuilds = Builds::where('user_id', $id)->orderBy('id', 'DESC')->get();
        $championData = array();
        foreach ($userBuilds as $key => $value){
            $championData[$key]["id"] = intval($value["champions"]["id"]);
            $championData[$key]["champion_id"] = intval($value["champions"]["champion_id"]);
            $championData[$key]["name"] = $value["champions"]["champion_name"];
            $championData[$key]["key"] = $value["champions"]["champion_key"];
            $championData[$key]["title"] = $value["champions"]["champion_title"];
            $championData[$key]["isFree"] = intval($value["champions"]["champion_isFree"]);
            $championData[$key]["builds"] = [];
            $championData[$key]["builds"][0]["id"] = intval($value["id"]);
            $championData[$key]["builds"][0]["title"] = $value["title"];
            $championData[$key]["builds"][0]["description"] = $value["description"];
            $championData[$key]["builds"][0]["updated_at"] = $value["updated_at"]->diffForHumans();
            $keystones = json_decode($value["keystones"],true);
            $main_runes = Keystones_why::where('builds_id', '=', $value["id"])->whereIn('keystones_id', $keystones["primary_data"])->with('build_keystone')->get();
            $secondary_data = Keystones_why::where('builds_id', '=', $value["id"])->whereIn('keystones_id', $keystones["secondary_data"])->with('build_keystone')->get();
            $championData[$key]["builds"][0]["primary_data"] = $main_runes;
            $championData[$key]["builds"][0]["secondary_data"] = $secondary_data;
            $championData[$key]["builds"][0]["rune_main"] = $value["rune_main"];
            $championData[$key]["builds"][0]["rune_secondary"] = $value["rune_secondary"];
            $championData[$key]["builds"][0]["patch"] = $value["patch"];
            $championData[$key]["builds"][0]["lane"] = $value["lane"];
            $championData[$key]["builds"][0]["user"] = $value["user"];
            $championData[$key]["builds"][0]["player"] = $value["player"];
        }
        return response()->json($championData);
    }

    public function getDataByChampionId($championId){

        $champions = Champions::with('builds')->orderBy('id', 'DESC')->find($championId);
        $championData[0]["id"] = intval($champions["id"]);
        $championData[0]["champion_id"] = intval($champions["champion_id"]);
        $championData[0]["name"] = $champions["champion_name"];
        $championData[0]["key"] = $champions["champion_key"];
        $championData[0]["name"] = $champions["champion_name"];
        $championData[0]["title"] = $champions["champion_title"];
        $championData[0]["isFree"] = intval($champions["champion_isFree"]);
        $championData[0]["validBuild"] = array();
        $regUsere = 0;
        $paidUser = 0;
        $championData[0]["usersBuild"] = array();
        foreach ($champions["builds"] as $k => $v) {
            if ($v["user"]["summoner_name"] == "Runeforge.gg") {
                $championData[0]["validBuild"][$paidUser]["id"] = intval($v["id"]);
                $championData[0]["validBuild"][$paidUser]["title"] = $v["title"];
                $championData[0]["validBuild"][$paidUser]["description"] = $v["description"];
                $championData[0]["validBuild"][$paidUser]["updated_at"] = $v["updated_at"]->diffForHumans();
                $keystones = json_decode($v["keystones"], true);
                $main_runes = Keystones_why::where('builds_id', '=', $v["id"])->whereIn('keystones_id', $keystones["primary_data"])->with('build_keystone')->get();
                $secondary_data = Keystones_why::where('builds_id', '=', $v["id"])->whereIn('keystones_id', $keystones["secondary_data"])->with('build_keystone')->get();
                $championData[0]["validBuild"][$paidUser]["primary_data"] = $main_runes;
                $championData[0]["validBuild"][$paidUser]["secondary_data"] = $secondary_data;
                $championData[0]["validBuild"][$paidUser]["rune_main"] = $v["rune_main"];
                $championData[0]["validBuild"][$paidUser]["rune_secondary"] = $v["rune_secondary"];
                $championData[0]["validBuild"][$paidUser]["patch"] = $v["patch"];
                $championData[0]["validBuild"][$paidUser]["lane"] = $v["lane"];
                $championData[0]["validBuild"][$paidUser]["user"] = $v["user"];
                $championData[0]["validBuild"][$paidUser]["player"] = $v["player"];
                $paidUser += 1;
            }
            else{
                $championData[0]["usersBuild"][$regUsere]["id"] = intval($v["id"]);
                $championData[0]["usersBuild"][$regUsere]["title"] = $v["title"];
                $championData[0]["usersBuild"][$regUsere]["description"] = $v["description"];
                $championData[0]["usersBuild"][$regUsere]["updated_at"] = $v["updated_at"]->diffForHumans();
                $keystones = json_decode($v["keystones"], true);
                $main_runes = Keystones_why::where('builds_id', '=', $v["id"])->whereIn('keystones_id', $keystones["primary_data"])->with('build_keystone')->get();
                $secondary_data = Keystones_why::where('builds_id', '=', $v["id"])->whereIn('keystones_id', $keystones["secondary_data"])->with('build_keystone')->get();
                $championData[0]["usersBuild"][$regUsere]["primary_data"] = $main_runes;
                $championData[0]["usersBuild"][$regUsere]["secondary_data"] = $secondary_data;
                $championData[0]["usersBuild"][$regUsere]["rune_main"] = $v["rune_main"];
                $championData[0]["usersBuild"][$regUsere]["rune_secondary"] = $v["rune_secondary"];
                $championData[0]["usersBuild"][$regUsere]["patch"] = $v["patch"];
                $championData[0]["usersBuild"][$regUsere]["lane"] = $v["lane"];
                $championData[0]["usersBuild"][$regUsere]["user"] = $v["user"];
                $championData[0]["usersBuild"][$regUsere]["player"] = $v["player"];
                $regUsere += 1;
            }
        }

        return response()->json($championData);
    }

    public function getData(){

        $champions = Champions::with('builds')->orderBy('id', 'DESC')->get();;
        foreach ($champions as $key => $value){
            $championData[$key]["id"] = intval($value["id"]);
            $championData[$key]["champion_id"] = intval($value["champions"]["champion_id"]);
            $championData[$key]["name"] = $value["champion_name"];
            $championData[$key]["key"] = $value["champion_key"];
            $championData[$key]["name"] = $value["champion_name"];
            $championData[$key]["title"] = $value["champion_title"];
            $championData[$key]["isFree"] = intval($value["champion_isFree"]);
            $freeCounter = 0;
            $validCounter = 0;
            $championData[$key]["validBuild"] = array();
            $championData[$key]["usersBuild"] = array();
            $regUsere = 0;
            $paidUser = 0;
            foreach ($value["builds"] as $k => $v) {
                if ($v["user"]["summoner_name"] == "Runeforge.gg") {
                    if ($validCounter <= 5) {
                        $championData[$key]["validBuild"][$paidUser]["id"] = intval($v["id"]);
                        $championData[$key]["validBuild"][$paidUser]["title"] = $v["title"];
                        $championData[$key]["validBuild"][$paidUser]["description"] = $v["description"];
                        $championData[$key]["validBuild"][$paidUser]["updated_at"] = $v["updated_at"]->diffForHumans();
                        $keystones = json_decode($v["keystones"], true);
                        $main_runes = Keystones_why::where('builds_id', '=', $v["id"])->whereIn('keystones_id', $keystones["primary_data"])->with('build_keystone')->get();
                        $secondary_data = Keystones_why::where('builds_id', '=', $v["id"])->whereIn('keystones_id', $keystones["secondary_data"])->with('build_keystone')->get();
                        $championData[$key]["validBuild"][$paidUser]["primary_data"] = $main_runes;
                        $championData[$key]["validBuild"][$paidUser]["secondary_data"] = $secondary_data;
                        $championData[$key]["validBuild"][$paidUser]["rune_main"] = $v["rune_main"];
                        $championData[$key]["validBuild"][$paidUser]["rune_secondary"] = $v["rune_secondary"];
                        $championData[$key]["validBuild"][$paidUser]["patch"] = $v["patch"];
                        $championData[$key]["validBuild"][$paidUser]["lane"] = $v["lane"];
                        $championData[$key]["validBuild"][$paidUser]["user"] = $v["user"];
                        $championData[$key]["validBuild"][$paidUser]["player"] = $v["player"];
                        $validCounter += 1;
                        $paidUser += 1;
                    }
                }
                else{
                    if ($freeCounter <= 5) {
                        $championData[$key]["usersBuild"][$regUsere]["id"] = intval($v["id"]);
                        $championData[$key]["usersBuild"][$regUsere]["title"] = $v["title"];
                        $championData[$key]["usersBuild"][$regUsere]["description"] = $v["description"];
                        $championData[$key]["usersBuild"][$regUsere]["updated_at"] = $v["updated_at"]->diffForHumans();
                        $keystones = json_decode($v["keystones"], true);
                        $main_runes = Keystones_why::where('builds_id', '=', $v["id"])->whereIn('keystones_id', $keystones["primary_data"])->with('build_keystone')->get();
                        $secondary_data = Keystones_why::where('builds_id', '=', $v["id"])->whereIn('keystones_id', $keystones["secondary_data"])->with('build_keystone')->get();
                        $championData[$key]["usersBuild"][$regUsere]["primary_data"] = $main_runes;
                        $championData[$key]["usersBuild"][$regUsere]["secondary_data"] = $secondary_data;
                        $championData[$key]["usersBuild"][$regUsere]["rune_main"] = $v["rune_main"];
                        $championData[$key]["usersBuild"][$regUsere]["rune_secondary"] = $v["rune_secondary"];
                        $championData[$key]["usersBuild"][$regUsere]["patch"] = $v["patch"];
                        $championData[$key]["usersBuild"][$regUsere]["lane"] = $v["lane"];
                        $championData[$key]["usersBuild"][$regUsere]["user"] = $v["user"];
                        $championData[$key]["usersBuild"][$regUsere]["player"] = $v["player"];
                        $freeCounter += 1;
                        $regUsere += 1;
                    }
                }
            }
        }

        return response()->json($championData);
    }

    public function AddBuild(Request $request)
    {
        $input = $request->input();
        $userId = $input['userId'];
        $title = $input['title'];
        $description = $input['desc'];
        $keystones = $input['keystones'];
        $rune_secondary_id = $input['rune_secondary_id'];
        $rune_main_id = $input['rune_main_id'];
        $patch_id = $input['patch_id'];
        $role_id = $input['role_id'];
        $champion_id = $input['champion_id'];
        $top_player_id = $input['top_player_id'];
        $stone_why = $input['stone_why'];
        try {
            $build = new Builds;
            $build->title = (string)$title;
            $build->user_id = $userId;
            $build->description = (string)$description;
            $build->keystones = (string)$keystones;
            $build->rune_secondary_id = $rune_secondary_id;
            $build->rune_main_id = $rune_main_id;
            $build->patch_id = $patch_id;
            $build->role_id = $role_id;
            $build->champion_id = $champion_id;
            $build->top_player_id = $top_player_id;
            $build->save();
            $whyArray = json_decode($stone_why,true);

            foreach($whyArray as $key => $value){
                $newWhy = new Keystones_why;
                $newWhy->builds_id = $build->id;
                $newWhy->keystones_id = $value["keystones_id"];
                $newWhy->stone_why =  $value["why"];
                $newWhy->save();
            }

            return Controller::filed("Build has been added successfully", 200);
        } catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }
    }

    public function removeBuild(Request $request)
    {

        $input = $request->input();
        $build_id = $input['build_id'];
        $user_id = $input['user_id'];
        try {
            $whereArray = array('id' => $build_id, 'user_id' => $user_id);
            Builds::where($whereArray)->delete();
            return Controller::filed("Build has been removed successfully", 200);
        } catch (BadResponseException $e) {
            return Controller::filed("unexpected error", 500);
        }

    }

    public function AddRate(Request $request)
    {

        $input = $request->input();
        $build_id = $input['build_id'];
        $user_id = $input['user_id'];
        $rate = $input['rate'];

        try {
            $review = Reviews::firstOrNew(['builds_id' => $build_id, 'user_id' => $user_id]);
            $review->rate = $rate;
            $review->builds_id = $build_id;
            $review->user_id = $user_id;
            $review->save();

            return Controller::filed("Review has been added successfully", 200);

        } catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }

    }

    public function AddTopPlayer(Request $request)
    {

        $input = $request->input();
        $name = $input['name'];
        $image = $input['image'];
        $role_id = $input['role_id'];

        try {
            $top = new Top_Player();
            $top->name = (string)$name;
            $top->image = (string)$image;
            $top->role_id = $role_id;
            $top->save();

            return Controller::filed("Player has been added successfully", 200);
        } catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }

    }
}
