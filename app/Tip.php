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
    'user_id', 'score', 'placement', 'players'
  ];


  public function getTipsAttribute()
  {
    return explode('-', $this->score);
  }

  public function getPlacementAttribute()
  {
    return explode('-', $this->attributes['placement']);
  }

  public function getPlayersAttribute()
  {
    return explode('-', $this->attributes['players']);
  }
}
