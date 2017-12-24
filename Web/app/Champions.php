<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Champions extends Model
{
    protected $table = 'champions';
    
    protected $guarded = [];

    protected $hidden = ['created_at','updated_at'];


    public function builds()
    {
        return $this->hasMany('App\Builds','champion_id','id');
    }

    public function champions() {
        return $this->belongsTo('App\Builds');
    }


}
