<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Runes extends Model
{
    protected $table = 'runes';
    
    protected $guarded = [];
    
    
    public function keystones()
    {
        return $this->hasMany('App\Keystones');
    }

    public function runes() {
        return $this->belongsTo('App\Builds');
    }
 
}
