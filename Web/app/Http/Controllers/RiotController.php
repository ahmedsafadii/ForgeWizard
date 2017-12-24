<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Exception\BadResponseException ;
use GuzzleHttp\Client;
use App\Champions;
use App\Users;
use App\Builds;
class RiotController extends Controller
{
    
    
    public function InstallOrUpdateChampions()
        {
            $RIOTAPI = "dasdas"; // env('RIOT_API','dsa');
            try {
                $client = new \GuzzleHttp\Client();
                
                //demo data
                $response = $client->request('GET', "http://forge.com/championsDemoData.json",['verify' => false]);
                
                //riot data
                //$response = $client->request('GET', "https://euw1.api.riotgames.com/lol/static-data/v3/champions?locale=en_US&tags=info&dataById=true&api_key=$RIOTAPI",['verify' => false]);
               
                $data = json_decode($response->getBody(), true);
                foreach ($data["data"] as $key => $value){
                    $champion = Champions::firstOrNew(['champion_id' => $value["id"]]);
                    $champion->champion_key = $value["key"];
                    $champion->champion_name = $value["name"];
                    $champion->champion_title = $value["title"];
                    $champion->champion_isFree = 0;
                    $champion->save();
                }
                return Controller::filed( "Champions has been updated",$response->getStatusCode());
              //  return $champion->get();
            }
            catch (BadResponseException $e) {
                return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
            }

        }
    
    public function VerifySummonerAccount(Request $request){
        $RIOTAPI = env('RIOT_API');
        $input = $request->input();
        $summonername = mb_strtolower(str_replace(' ', '', $input['name']));
        $summonerregion = Controller::regionDetect(mb_strtolower(str_replace(' ', '', $input['region'])));
        $code = Controller::regionDetect(mb_strtolower(str_replace(' ', '', $input['code'])));

            try {
                $client = new \GuzzleHttp\Client();
                $response = $client->request('GET', "https://$summonerregion.api.riotgames.com/lol/summoner/v3/summoners/by-name/$summonername?api_key=$RIOTAPI",['verify' => false]);
                $summonerData = json_decode($response->getBody(), true);
                $newUser = Users::firstOrNew(['account_id' => $summonerData["accountId"],'summoner_region' => $summonerregion]);
                $newUser->verify = false;
                $newUser->account_id = $summonerData["accountId"];
                $newUser->summoner_name = $summonerData["name"];
                $newUser->summoner_region = $summonerregion;
                $newUser->summoner_id = $summonerData["id"];
                $newUser->summoner_profile_icon = $summonerData["profileIconId"];
                $newUser->summoner_level = $summonerData["summonerLevel"];
                $newUser->save();
                $userBuilds = Builds::where('user_id', $newUser->id)->orderBy('id', 'DESC')->get();


                $summoner["verify"] = true;
                $summoner["summoner"] = $newUser;
                return response()->json($summoner);

//                return Controller::filed( "Player has been added",$response->getStatusCode());


                 // when riot activate the code
//                    try {
//                    $client = new \GuzzleHttp\Client();
//                    $response = $client->request('GET', "https://euw1.api.riotgames.com/lol/platform/v3/third-party-code/by-summoner/{$summonerData["id"]}?api_key=$RIOTAPI",['verify' => false]);
//                    $data = json_decode($response->getBody(), true);
//                       return $data;
//                    }
//                    catch (BadResponseException $e) {
//                        return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
//                    }
            }
            catch (BadResponseException $e) {
                return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
            }
    }
    
     public function updateFreeRotate()
        {
            try {
                $client = new \GuzzleHttp\Client();
                $RIOTAPI = env('RIOT_API','dsa');
                //demo data
                $response = $client->request('GET', "http://forge.com/FreeRotate.json",['verify' => false]);
                //riot data
//                $response = $client->request('GET', "https://euw1.api.riotgames.com/lol/platform/v3/champions?freeToPlay=false&api_key=$RIOTAPI",['verify' => false]);
                $data = json_decode($response->getBody(), true);
                foreach ($data["champions"] as $key => $value){
                    $champion = Champions::firstOrNew(['champion_id' => $value["id"]]);
                    if($value["freeToPlay"]){
                        $champion->champion_isFree = 1;
                    }
                    else{
                        $champion->champion_isFree = 0;
                    }
                    $champion->save();
                }
                return Controller::filed( "Free champions has been updated",$response->getStatusCode());
            }
            catch (BadResponseException $e) {
                return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
            }

        }
    
    
}



//                $freeDataBase = FreeRotate::all()->last();
//
//                if(isset($freeDataBase->free)){
//                    if($freeDataBase->free == (json_encode($data["champions"],true))){
//                        return Controller::filed( "Free champions already updated",$response->getStatusCode());
//                    }
//                    else{
//                        $freeRotate = new FreeRotate;
//                        $freeRotate->free = json_encode($data["champions"],true);
//                        $freeRotate->save();
//                        OneSignal::sendNotificationToUser("Some Message", "d7a80c81-b803-4753-a5a5-667085d774b4", "Free Rotation Template", $url = null, $data = null, $buttons = null, $schedule = null);
//                        return Controller::filed( "Free champions has been updated",$response->getStatusCode());
//                    }
//                }
//                else{
//                    $freeRotate = new FreeRotate;
//                    $freeRotate->free = json_encode($data["champions"],true);
//                    $freeRotate->save();
//                    OneSignal::sendNotificationToUser("Some Message", "d7a80c81-b803-4753-a5a5-667085d774b4", "Free Rotation Template", $url = null, $data = null, $buttons = null, $schedule = null);
//                    return Controller::filed( "Champions sales has been updated",$response->getStatusCode());
//                }
