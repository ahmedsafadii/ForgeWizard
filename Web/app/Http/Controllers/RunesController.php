<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Exception\BadResponseException ;
use GuzzleHttp\Client;
use App\Runes;


use Illuminate\Http\Request;

class RunesController extends Controller
{
    
        
    public function InstallOrUpdateRunes()
        {
            try {
                $client = new \GuzzleHttp\Client();
                $response = $client->request('GET', "http://forge.com/en_US_runesReforged.json",['verify' => false]);
                $data = json_decode($response->getBody(), true);
                dd($data);
//                foreach ($data["data"] as $key => $value){
//                    $champion = Champions::firstOrNew(['champion_id' => $value["id"]]);
//                    $champion->champion_key = $value["key"];
//                    $champion->champion_name = $value["name"];
//                    $champion->champion_title = $value["title"];
//                    $champion->champion_isFree = 0;
//                    $champion->save();
//                }
                return Controller::filed( "Runes has been updated",$response->getStatusCode());
            }
            catch (BadResponseException $e) {
                return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
            }

        }

}
