<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use \DB;

class Match extends Model
{
    public function getTeamHomeAttribute()
    {
        $teams = DB::table('teams')->get()->toArray();
        return $teams[ $this->attributes['team_home_id'] - 1 ];
    }

    public function getTeamAwayAttribute()
    {
        $teams = DB::table('teams')->get()->toArray();
        return $teams[ $this->attributes['team_away_id'] - 1 ];
    }

    public function getMatchTimeDatetimeAttribute()
    {
        return date( 'Y-m-d' , strtotime($this->attributes['match_time']) );
    }

    public function getMatchTimeAttribute($value)
    {
        return date( 'j. n. Y, G:i' , strtotime($value) );
    }

    public function result()
    {
        return $this->hasOne('App\Result');
    }

}
