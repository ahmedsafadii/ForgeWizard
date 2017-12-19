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
//        $champion =  Champions::where('champion_key', $champion_key)->first();
//        if($champion != null){
//            return "works - ".$champion["champion_id"]." - ".$champion["champion_name"];
//        }
//        else{
//            return "error - ".$champion_key;
//        }
       $champion =  Champions::where('champion_key', $champion_key)->first();
       return $champion["champion_id"];
    }

    public static function getRuneId($runeName){
        $rune =  Runes::where('rune_title', $runeName)->first();
        return $rune["rune_id"];
    }

    public static function getPatchId($patchName){
        $patch =  Patch::where('patch', $patchName)->first();
        return $patch["id"];
    }

    public static function getKeystoneId($keystoneName){
        //Check keystones before get the ids
        $keystone =  Keystones::where('stone_title', $keystoneName)->first();
        if($keystone != null){
            return "works - ".$keystone["stone_id"];
        }
        else{
            return "error - ".$keystoneName;
        }
        return $keystone["stone_id"];
    }

    
}
