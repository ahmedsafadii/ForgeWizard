<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Roles extends Model
{
    protected $table = 'roles';
    protected $hidden = ['id','created_at','updated_at'];

    protected $guarded = [];

    public function toproles() {
        return $this->belongsTo('App\Top_Player');
    }

    public function role() {
        return $this->belongsTo('App\Top_Player');
    }

    public function lane() {
        return $this->belongsTo('App\Builds');
    }

}
