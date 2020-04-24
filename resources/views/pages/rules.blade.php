@extends('layouts.master')

@section('title', 'Rules')

@section('header')
    {{ __('Rules') }}
@endsection

@section('content')

    
    
    <ul>
        <li>All users can participate with creating tips for the match results of the group stage European Football Championship 2020.</li>
        <li>Tips can be created and edited until the championship starts: 12th&nbsp;Jun&nbsp;2020,&nbsp;21:00&nbsp;CET.</li>
        <li>Each user can participate only once. Multiaccounting is strictly forbidden and leads to user disqualification.</li>
        <li>If two or more players reach the same final score, they will share the placement and eventual winnings proportionally.</li>
        <li>It is not possible to participate in the competition after the championship starts.</li>
        <li>The updated list of confirmed participants can be found in <a href="{{ route('table') }}"><strong>the table tab</strong></a>.</li>
        <li>The final participant score will be counted as follows. The bettor gets:
            <ul>
                <li><strong>4 points</strong> for the very accurate tip of the match result (FE: the tip is 3:1 and the match ends 3:1). </li>
                <li><strong>5 points</strong>, one bonus point in addition, for the very accurate tip of the match result with five or more goals scored in total (FE: the tip is 4:1 and the match ends 4:1).</li>
                <li><strong>2 points</strong> for the tip of correct match score difference (FE: the tip is 3:1 and the match ends 2:0). </li>
                <li><strong>1 point</strong> for the tip of correct match winner tip (FE: the tip is 3:1 and the match ends 3:0). <small>(note. Not possible if the result is a draw.)</small></li>
                <li><strong>0 points</strong> for the incorrect tip (FE: the tip is 3:1 and the match ends 1:1). </li>              
            </ul>
        </li>
    </ul>

@endsection
