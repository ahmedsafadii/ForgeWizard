<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notes extends Model
{
    protected $table = 'notes';
    
    protected $guarded = [];

    public function notes() {
        return $this->belongsTo('App\Patch');
    }


}
