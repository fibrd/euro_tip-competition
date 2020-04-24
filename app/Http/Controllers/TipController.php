<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Match;
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
        return view('tip.create')
            ->with('matches', $matches);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $matches_score = $this->getScoreFromRequest($request->get('home'), $request->get('away'));

        Tip::create([
            'user_id' => Auth::id(),
            'score' => $matches_score,
        ]);
        
        // flashmessage and redirect
        flash()->success('Your tips have been added.');
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

        return view('tip.edit')
            ->withMatches($matches)
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
        $matches_score = $this->getScoreFromRequest($request->get('home'), $request->get('away'));
        
        $user_tips = Auth::user()->tips->first();
        $user_tips->update([
            'user_id' => Auth::id(),
            'score' => $matches_score,
        ]);
        
        // flashmessage and redirect
        flash()->success('Your tips have been modified.');
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

}
