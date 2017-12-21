<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{

    protected $table = 'users';
    protected $hidden = ['created_at','updated_at','id','account_id','verify','summoner_id'];

    protected $guarded = [];

    public function user() {
        return $this->belongsTo('App\Builds');
    }


}
