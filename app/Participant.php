<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Participant extends Model
{
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'score',
    ];


    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function recountScore()
    {
        $participant_score = 0;
        $participant_tips = $this->user->tips[0]->tips;
        $results = Result::all();

        foreach ($results as $result) {
            $participant_score += countScore($participant_tips[ $result->match_id - 1 ][0], $participant_tips[ $result->match_id - 1 ][1], $result->score[0], $result->score[2]);
        }

        return $participant_score;

    }

}
