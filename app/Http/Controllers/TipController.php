<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Match;
use App\Team;
use App\Tip;
use \Auth;
use \DB;

class TipController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tips = Auth::user()->tips->first();
        $matches = Match::all();
        $results = DB::table('results')->get()->toArray();

        return view('tip.index')
            ->withTitle('tips')
            ->withTips($tips)
            ->withMatches($matches)
            ->withResults($results);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $matches = Match::all();
        $teams = Team::all();
        return view('tip.create')
            ->with('matches', $matches)
            ->with('teams', $teams);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $matches = Match::all();
        $teams = Team::all();

        $first_place = $request->get('first_place');
        $second_place = $request->get('second_place');
        $third_place = $request->get('third_place');
        $fourth_place = $request->get('fourth_place');
        $next_places = $request->get('next_places');
        $striker_name = $request->get('striker_name');
        $striker_team = $request->get('striker_team');
        $striker_number = $request->get('striker_number');
        $top_name = $request->get('top_name');
        $top_team = $request->get('top_team');
        $top_number = $request->get('top_number');

        if (!$striker_name || !$striker_team || !$top_name || !$top_team) {
          session()->flash('flash-error', 'Vyplňte všechna políčka v sekci individuální umístění.');
          return view('tip.create')
            ->withMatches($matches)
            ->withTeams($teams);
        }
        
        $matches_score = $this->getScoreFromRequest($request->get('home'), $request->get('away'));
        $placement = $this->getPlacementFromRequest($first_place, $second_place, $third_place, $fourth_place, $next_places);
        $players = $this->getPlayersFromRequest($striker_name, $striker_number, $striker_team, $top_name, $top_number, $top_team);
        
        Tip::create([
          'user_id' => Auth::id(),
          'score' => $matches_score,
          'placement' => $placement,
          'players' => $players,
          ]);

        $tips = Auth::user()->tips->first();

        if ($this->checkDuplicity($first_place, $second_place, $third_place, $fourth_place, $next_places)) {
          session()->flash('flash-error', 'V celkovém umístění týmů byly nalezeny duplicity.');
          return view('tip.edit')
            ->withMatches($matches)
            ->withTips($tips)
            ->withTeams($teams);
        }

        // flashmessage and redirect
        session()->flash('flash-message', 'Vaše tipy byly přidány.');
        return redirect()->route('tip.index');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tips = Auth::user()->tips->first();
        $matches = Match::all();
        $teams = Team::all();

        return view('tip.edit')
            ->withMatches($matches)
            ->withTeams($teams)
            ->withTips($tips);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tips = Auth::user()->tips->first();
        $matches = Match::all();
        $teams = Team::all();

        $first_place = $request->get('first_place');
        $second_place = $request->get('second_place');
        $third_place = $request->get('third_place');
        $fourth_place = $request->get('fourth_place');
        $next_places = $request->get('next_places');
        $striker_name = $request->get('striker_name');
        $striker_team = $request->get('striker_team');
        $striker_number = $request->get('striker_number');
        $top_name = $request->get('top_name');
        $top_team = $request->get('top_team');
        $top_number = $request->get('top_number');

        $matches_score = $this->getScoreFromRequest($request->get('home'), $request->get('away'));
        $placement = $this->getPlacementFromRequest($first_place, $second_place, $third_place, $fourth_place, $next_places);
        $players = $this->getPlayersFromRequest($striker_name, $striker_number, $striker_team, $top_name, $top_number, $top_team);
        
        $user_tips = Auth::user()->tips->first();
        $user_tips->update([
            'user_id' => Auth::id(),
            'score' => $matches_score,
            'placement' => $placement,
            'players' => $players,
        ]);

        if ($this->checkDuplicity($first_place, $second_place, $third_place, $fourth_place, $next_places)) {
          session()->flash('flash-error', 'V celkovém umístění týmů byly nalezeny duplicity.');
          return view('tip.edit')
            ->withMatches($matches)
            ->withTips($tips)
            ->withTeams($teams);
        }
        
        // flashmessage and redirect
        session()->flash('flash-message', 'Vaše tipy byly upraveny.');
        return redirect()->route('tip.index');
    }

    /**
     * Private helper function for getting all the Matches score that will be ready to store or update
     *
     * @param array $tips_home
     * @param array $tips_away
     * @return string $matches_score
     */
    private function getScoreFromRequest($tips_home, $tips_away)
    {
        $tips = [];
        for ($i=0; $i < count($tips_home); $i++) {
            array_push( $tips, $tips_home[$i] . $tips_away[$i] );
        }
        $matches_score = implode('-', $tips);
        return $matches_score;
    }
   
    /**
     * Private helper function for getting all the places will be ready to store or update
     *
     * @param array $tips_home
     * @param array $tips_away
     * @return string $placement
     */
    private function getPlacementFromRequest($first_place, $second_place, $third_place, $fourth_place, $next_places)
    {
        $placement_array = [];
        array_push($placement_array, $first_place);
        array_push($placement_array, $second_place);
        array_push($placement_array, $third_place);
        array_push($placement_array, $fourth_place);
        for ($i=0; $i < 4; $i++) {
            array_push( $placement_array, $next_places[$i] );
        }
        $placement = implode('-', $placement_array);
        return $placement;
    }
   
    /**
     * Private helper function for getting all the players will be ready to store or update
     *
     * @param array $tips_home
     * @param array $tips_away
     * @return string $players
     */
    private function getPlayersFromRequest($striker_name, $striker_number = 1, $striker_team, $top_name, $top_number = 1, $top_team)
    {
        $players_array = [];
        array_push($players_array, $striker_name);
        array_push($players_array, $striker_number);
        array_push($players_array, $striker_team);
        array_push($players_array, $top_name);
        array_push($players_array, $top_number);
        array_push($players_array, $top_team);
        $players = implode('-', $players_array);
        return $players;
    }

    /**
     * Private helper function for checking duplicities in placements
     *
     * @param array $tips_home
     * @param array $tips_away
     * @return boolean
     */
    private function checkDuplicity($first_place, $second_place, $third_place, $fourth_place, $next_places)
    {
        $placement_array = [];
        array_push($placement_array, $first_place);
        array_push($placement_array, $second_place);
        array_push($placement_array, $third_place);
        array_push($placement_array, $fourth_place);
        for ($i=0; $i < 4; $i++) {
            array_push( $placement_array, $next_places[$i] );
        }
        
        return count($placement_array) !== count(array_unique($placement_array));
    }

}
