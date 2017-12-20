<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Runes extends Model
{
    protected $table = 'runes';
    protected $hidden = ['created_at','updated_at','role_id','id'];

    protected $guarded = [];

    public function keystones()
    {
        return $this->hasMany('App\Keystones');
    }


    public function rune_main() {
        return $this->belongsTo('App\Builds');
    }

    public function rune_secondary() {
        return $this->belongsTo('App\Builds');
    }
}
