<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use App\Champions;
use App\Roles;
use App\Patch;
use App\Users;
use App\Runes;
use App\Keystones;
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public static function filed($message,$status_code){
        $data['status'] =["message"=>$message,"status_code"=>$status_code];
        return response()->json($data);
    }

    public static function regionDetect($region){
        $lowerLane = strtolower($region);
        if($lowerLane == "br"){
            return "br1";
        }
        else if($lowerLane == "eune"){
            return "eun1";
        }
        else if($lowerLane == "euw"){
            return "euw1";
        }
        else if($lowerLane == "jp"){
            return "jp1";
        }
        else if($lowerLane == "kr"){
            return "kr";
        }
        else if($lowerLane == "lan"){
            return "la1";
        }
        else if($lowerLane == "las"){
            return "la2";
        }
        else if($lowerLane == "na"){
            return "na1";
        }
        else if($lowerLane == "oce"){
            return "oc1";
        }
        else if($lowerLane == "tr"){
            return "tr1";
        }
        else if($lowerLane == "ru"){
            return "ru";
        }
        else {
            return "pbe1";
        }
    }


    public static function laneDetected($lane){
        $lowerLane = strtolower($lane);
        if($lowerLane == "middle"){
            return 1;
        }
        else if($lowerLane == "top"){
            return 2;
        }
        else if($lowerLane == "support"){
            return 3;
        }
        else if($lowerLane == "jungle"){
            return 4;
        }
        else if($lowerLane == "bottom"){
            return 5;
        }
        else{
            return 6;
        }
    }

    public static function getChampionId($champion_key){
        //Check champions before get the ids
        //WUKONG ISSUE
//        $champion =  Champions::where('champion_key', $champion_key)->first();
//        if($champion != null){
//            return "works - ".$champion["champion_id"]." - ".$champion["champion_name"];
//        }
//        else{
//            return "error - ".$champion_key;
//        }
       $champion =  Champions::where('champion_key', $champion_key)->first();
       return intval($champion["id"]);
    }

    public static function getRuneId($runeName){
        $rune =  Runes::where('rune_title', $runeName)->first();
        return intval($rune["id"]);
    }

    public static function getPatchId($patchName){
        $patch =  Patch::where('patch', $patchName)->first();
        if($patch != null){
            return intval($patch["id"]);
        }
        else{
            return 1;
        }
    }

    public static function getKeystoneId($keystoneName){
        //Check keystones before get the ids
        //FUTREU MARKETS ISSUE '
        $keystone =  Keystones::where('stone_title', $keystoneName)->first();
        return intval($keystone["id"]);
//        if($keystone != null){
//            return "works - ".$keystone["stone_id"];
//        }
//        else{
//            return "error - ".$keystoneName;
//        }

    }

    
}
