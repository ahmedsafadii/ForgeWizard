<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keystones extends Model
{
    protected $table = 'keystones';

    protected $hidden = ['created_at','updated_at','id','stone_image','runes_id'];

    protected $guarded = [];

    public function keystones() {
        return $this->belongsTo('App\Runes');
    }

    public function build_keystone() {
        return $this->belongsTo('App\Keystones_why');
    }

    
}
