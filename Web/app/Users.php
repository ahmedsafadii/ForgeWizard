<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    public function users() {
        return $this->belongsTo('App\Builds');
    }
}
