<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reviews extends Model
{

    protected $table = 'reviews';

    protected $guarded = [];

    public function reviews() {
        return $this->belongsTo('App\Builds');
    }
}
