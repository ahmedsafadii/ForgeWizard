<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// Riot Endpoint
Route::get('v1/champions/update',"RiotController@InstallOrUpdateChampions");
Route::get('v1/champions/updateFreeRotate',"RiotController@updateFreeRotate");
Route::post('v1/summoner/verify','RiotController@VerifySummonerAccount');


// Runes Endpoint
Route::get('v1/runes/updateRunes',"RunesController@InstallOrUpdateRunes");
Route::get('v1/runes/updateLanes',"RunesController@InstallOrUpdateLanes");
Route::get('v1/runes/getRunes',"RunesController@getRunes");


// Patch Endpoint
Route::post('v1/patch/addPatch',"PatchController@AddPatch");
Route::post('v1/patch/addNote',"PatchController@AddNote");
Route::get('v1/patch/getPatches',"PatchController@getPatches");


// Rune Build Endpoint
Route::get('v1/build/setupData',"BuildsController@setupData");
Route::post('v1/build/addTopPlayer',"BuildsController@AddTopPlayer");
Route::get('v1/build/getBuilds',"BuildsController@getData");
Route::get('v1/build/getBuilds/champion/{id}/',"BuildsController@getDataByChampionId");
Route::get('v1/build/getBuilds/user/{id}/',"BuildsController@getDataByUserId");
Route::post('v1/build/addBuild',"BuildsController@AddBuild");
Route::post('v1/build/removeBuild',"BuildsController@RemoveBuild");
//Route::post('v1/build/addRate',"BuildsController@AddRate");


