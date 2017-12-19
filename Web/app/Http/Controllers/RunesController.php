<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Exception\BadResponseException ;
use GuzzleHttp\Client;
use App\Runes;
use App\Keystones;

class RunesController extends Controller
{
    
        
    public function InstallOrUpdateRunes()
        {
            try {
                $client = new \GuzzleHttp\Client();
                $response = $client->request('GET', "http://forge.com/en_US_runesReforged.json",['verify' => false]);
                $data = json_decode($response->getBody(), true);
                foreach ($data as $key => $value){
                    $rune = Runes::firstOrNew(['rune_id' => $value["id"]]);
                    $rune->rune_title = $value["name"];
                    $rune->rune_image = $value["image"];
                    $rune->rune_sub_title = $value["rune_sub_title"];
                    $rune->rune_description = json_encode($value["rune_description"], true);
                    $rune->save(); 
                    $rune = Runes::firstOrNew(['rune_id' => $value["id"]]);
                    
                    foreach ($data[$key]["slots"] as $key => $value){
                        if($key == 0){
                        // main key
                        foreach ($value["runes"] as $key => $value){
                                $keystoneMajor = Keystones::firstOrNew(['stone_id' => $value["id"]]);
                                $keystoneMajor->stone_title = $value["name"];
                                $keystoneMajor->stone_image = $value["id"];
                                $keystoneMajor->isKey = 1;
                                $keystoneMajor->stone_video = $value["video"];
                                $keystoneMajor->stone_long_description = $value["longDesc"];
                                $keystoneMajor->stone_short_description = $value["shortDesc"];
                                $keystoneMajor->stone_taken_on = json_encode($value["taken_on"], true);
                                $rune->keystones()->save($keystoneMajor);
                        }
                        }
                        else{
                        foreach ($value["runes"] as $key => $value){
                                $keystoneMajor = Keystones::firstOrNew(['stone_id' => $value["id"]]);
                                $keystoneMajor->stone_title = $value["name"];
                                $keystoneMajor->stone_image = $value["id"];
                                $keystoneMajor->isKey = 0;
                                $keystoneMajor->stone_video = $value["video"];
                                $keystoneMajor->stone_long_description = $value["longDesc"];
                                $keystoneMajor->stone_short_description = $value["shortDesc"];
                                $keystoneMajor->stone_taken_on = json_encode($value["taken_on"], true);
                                $rune->keystones()->save($keystoneMajor);
                        }
                        }
                    }
                    
                    // here add the keystones
                }
                return Controller::filed( "Runes has been updated",$response->getStatusCode());
            }
            catch (BadResponseException $e) {
                return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
            }

        }

}
