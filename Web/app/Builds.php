<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Builds extends Model
{
    protected $table = 'builds';

    protected $with = ['player','user','lane','patch','rune_main','rune_secondary','champions'];


    protected $hidden = ['created_at','top_player_id','user_id','role_id','patch_id','rune_main_id','rune_secondary_id'];

    protected $guarded = [];

    public function builds() {
        return $this->belongsTo('App\Champions');
    }

    public function player()
    {
        return $this->hasOne('App\Top_Player','id','top_player_id');
    }

    public function user()
    {
        return $this->hasOne('App\Users','id','user_id');
    }

    public function lane()
    {
        return $this->hasOne('App\Roles','id','role_id');
    }

    public function patch()
    {
        return $this->hasOne('App\Patch','id','patch_id');
    }

    public function champions()
    {
        return $this->hasOne('App\Champions','id','champion_id');
    }

    public function rune_main()
    {
        return $this->hasOne('App\Runes','id','rune_main_id');
    }

    public function rune_secondary()
    {
        return $this->hasOne('App\Runes','id','rune_secondary_id');
    }

}
