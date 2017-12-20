<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Patch extends Model
{
    protected $table = 'patch';
    protected $hidden = ['id','created_at','updated_at'];

    protected $guarded = [];


    public function notes()
    {
        return $this->hasMany('App\Notes');
    }


    public function patch() {
        return $this->belongsTo('App\Builds');
    }

}
