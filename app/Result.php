<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Participant;

class Result extends Model
{
    protected $fillable = ['score', 'match_id'];

    public $timestamps = false;

    /**
     * Function for updating all players score
     *
     * @return void
     */
    public function updatePlayersScore()
    {
        $participants = Participant::all();
        foreach ($participants as $participant) {
            $score = $participant->recountScore();
            $participant->update([
                'score' => $score,
            ]);
        }
    }

        

    public function match()
    {
        return $this->belongsTo('App\Match');
    }
}
