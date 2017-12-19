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


// Local Endpoint
Route::get('v1/runes/updateRunes',"RunesController@InstallOrUpdateRunes");
