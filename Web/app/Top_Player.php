<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Top_Player extends Model
{

    protected $table = 'top_player';

    protected $hidden = ['id','created_at','updated_at','role_id'];

    protected $with=['role'];

    protected $guarded = [];

    public function toproles()
    {
        return $this->hasMany('App\Roles','role_id','id');
    }

    public function player() {
        return $this->belongsTo('App\Builds');
    }

    public function role()
    {
        return $this->hasOne('App\Roles','id','role_id');
    }


}
