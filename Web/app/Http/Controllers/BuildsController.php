<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Exception\BadResponseException;
use GuzzleHttp\Client;
use App\Builds;
use App\Keystones_why;

class BuildsController extends Controller
{
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
            $build->save();

            $newWhy = new Keystones_why;
            $newWhy->builds_id = $build->id;
            $newWhy->keystones_id = 3;
            $newWhy->stone_why = "Azir is a champion who rapidly casts abilities thanks to his auto-attack nature with [W]. Because of this he is able to repeatedly cast Comets with relatively high hit-rate thanks to the slow on his [Q]";
            $newWhy->save();

            return $build;
            //return Controller::filed("Patch has been added successfully", 200);
        } catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }
    }

}
