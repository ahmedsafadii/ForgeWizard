<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keystones_why extends Model
{

    protected $table = 'keystones_why';

    protected $guarded = [];

    protected $hidden = ['created_at','updated_at','builds_id','keystones_id'];


    public function build_keystone()
    {
        return $this->hasOne('App\Keystones','id','keystones_id');
    }



}
