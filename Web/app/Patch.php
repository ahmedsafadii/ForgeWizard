<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Patch extends Model
{
    protected $table = 'patch';
    
    protected $guarded = [];

    public function patchs() {
        return $this->belongsTo('App\Builds');
    }
    
}
