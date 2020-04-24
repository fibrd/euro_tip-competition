<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tip extends Model
{
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'score',
    ];
    

    public function getTipsAttribute()
    {
        return explode('-', $this->score);
    }


}
