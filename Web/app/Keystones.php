<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keystones extends Model
{
    protected $table = 'keystones';
    
    protected $guarded = [];
    
    public function keystones() {
        return $this->belongsTo('App\Runes');
    }
    
}
