<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Exception\BadResponseException;
use GuzzleHttp\Client;
use App\Patch;
use App\Notes;

class PatchController extends Controller
{


    public function AddPatch(Request $request)
    {
        $input = $request->input();
        $patch = $input['patch'];
        $title = $input['title'];
        $description = $input['desc'];
        $patch_date = $input['patch_date'];
        try {
            $patch = Patch::firstOrNew(['patch' => $patch]);
            $patch->patch = (string)$patch;
            $patch->title = (string)$title;
            $patch->description = (string)$description;
            $patch->patch_date = (string)$patch_date;
            $patch->save();
            return Controller::filed("Patch has been added successfully", 200);
        } catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }
    }

    public function AddNote(Request $request)
    {
        $input = $request->input();
        $title = $input['title'];
        $description = $input['description'];
        $type = $input['type'];
        $rune_id = $input['rune_id'];
        $patch_id = $input['patch_id'];
        try {
            $patch = Notes::firstOrNew(['rune_id' => $rune_id],['patch_id' => $patch_id]);
            $patch->title = (string)$title;
            $patch->description = (string)$description;
            $patch->type = (string)$type;
            $patch->rune_id = (string)$rune_id;
            $patch->patch_id = (string)$patch_id;
            $patch->save();
            return Controller::filed("Note has been added successfully", 200);
        } catch (BadResponseException $e) {
            return Controller::filed($e->getResponse()->getReasonPhrase(), $e->getResponse()->getStatusCode());
        }
    }


}