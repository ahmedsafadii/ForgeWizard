<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Champions extends Model
{
    protected $table = 'champions';
    
    protected $guarded = [];

    public function champions() {
        return $this->belongsTo('App\Builds');
    }
    
}
