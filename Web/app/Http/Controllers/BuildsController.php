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


    public function setupData(){

        try {
            $client = new \GuzzleHttp\Client();
            $response = $client->request('GET', "http://forge.com/data.json",['verify' => false]);
            $data = json_decode($response->getBody(), true);

            //Controller::getChampionId($key)
            //Controller::getRuneId($value["primary"]);
            //Controller::getRuneId($value["secondry"]);
            //Controller::getPatchId($value["patch"]);

            $test = [];

//            if($value["top_player"] == ""){
//                $champion = Top_Player::firstOrNew(['name' => "Free"]);
//                $champion->name = "Free";
//                $champion->image = "FREE";
//                $champion->role_id = Controller::laneDetected($value["position"]);
//                $champion->save();
//            }
//            else{
//                $champion = Top_Player::firstOrNew(['name' => $value["top_player"]]);
//                $champion->name = $value["top_player"];
//                $champion->image = strtoupper(str_replace(' ', '', $value["top_player"]));
//                $champion->role_id = Controller::laneDetected($value["position"]);
//                $champion->save();
//            }


            foreach ($data as $key => $value) {
                foreach($data[$key] as $key => $value){
                    foreach($value["primary_data"] as $key => $value){
                        array_push($test,Controller::getKeystoneId($value["name"]));
                    }
                }
            }

            return $test;
        //    return Controller::filed( "Verifying Runes has been updated",$response->getStatusCode());
        }
        catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }

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

            $newWhy = new Keystones_why;
            $newWhy->builds_id = $build->id;
            $newWhy->keystones_id = 3;
            $newWhy->stone_why = "Azir is a champion who rapidly casts abilities thanks to his auto-attack nature with [W]. Because of this he is able to repeatedly cast Comets with relatively high hit-rate thanks to the slow on his [Q]";
            $newWhy->save();

            return Controller::filed("Build has been added successfully", 200);
        } catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }
    }

    public function EditBuild(Request $request){
        $input = $request->input();
        $build_id = $input['build_id'];
        $user_id = $input['user_id'];
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
            $build = Builds::firstOrNew(['id' => $build_id,'userId' => $user_id]);
            $build->title = (string)$title;
            $build->user_id = $user_id;
            $build->description = (string)$description;
            $build->keystones = (string)$keystones;
            $build->rune_secondary_id = $rune_secondary_id;
            $build->rune_main_id = $rune_main_id;
            $build->patch_id = $patch_id;
            $build->role_id = $role_id;
            $build->champion_id = $champion_id;
            $build->top_player_id = $top_player_id;
            $build->save();

            $newWhy = new Keystones_why;
            $newWhy->builds_id = $build->id;
            $newWhy->keystones_id = 3;
            $newWhy->stone_why = "Azir is a champion who rapidly casts abilities thanks to his auto-attack nature with [W]. Because of this he is able to repeatedly cast Comets with relatively high hit-rate thanks to the slow on his [Q]";
            $newWhy->save();

            return Controller::filed("Build has been edited successfully", 200);
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
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }

    }

    public function AddRate(Request $request)
    {

        $input = $request->input();
        $build_id = $input['build_id'];
        $user_id = $input['user_id'];
        $rate = $input['rate'];

        try {
            $review = Reviews::firstOrNew(['builds_id' => $build_id,'user_id' => $user_id]);
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
