<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Roles extends Model
{
    protected $table = 'roles';
    
    protected $guarded = [];

    public function roles() {
        return $this->belongsTo('App\Builds');
    }


}
