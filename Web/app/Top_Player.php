<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Top_Player extends Model
{

    protected $table = 'top_player';

    protected $guarded = [];


    public function top() {
        return $this->belongsTo('App\Builds');
    }
}
