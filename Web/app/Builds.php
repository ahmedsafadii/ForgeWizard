<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Builds extends Model
{
    protected $table = 'builds';

    protected $guarded = [];

    public function users()
    {
        return $this->hasMany('App\Users');
    }

    public function roles()
    {
        return $this->hasMany('App\Roles');
    }

    public function patchs()
    {
        return $this->hasMany('App\Runes');
    }

    public function runes()
    {
        return $this->hasMany('App\Runes');
    }

    public function champions()
    {
        return $this->hasMany('App\Champions');
    }

    public function why()
    {
        return $this->hasMany('App\Keystones_why');
    }
}
