<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keystones_why extends Model
{

    protected $table = 'keystones_why';

    protected $guarded = [];



    public function why() {
        return $this->belongsTo('App\Builds');
    }
}
