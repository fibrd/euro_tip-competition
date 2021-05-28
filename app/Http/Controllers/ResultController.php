<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Match;
use App\Participant;
use App\Result;

class ResultController extends Controller
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
     * Show the admin page of results.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $this->authorize('admin');

        $matches = Match::all();


        return view('result.index')
            ->with('matches', $matches);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->authorize('admin');

        $result = Result::where('match_id', $id)->first();

        if ($result != null) {
            return view('result.edit')
            ->withResult($result);
        }
        else{
            $match = Match::findOrFail($id);
            
            return view('result.create')
                ->withMatch($match);
        }
    }

    /**
     * Store the specified match result in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->authorize('admin');
        
        $request->validate([
            'home' => 'required|integer|between:0,19',
            'away' => 'required|integer|between:0,19',
            'match_id' => 'required|integer|between:1,136',
        ]);
        
        $result = Result::create([
            'score_home' => $request->home,
            'score_away' => $request->away,
            'match_id' => $request->match_id,
        ]);

        // // Updating players score
        $result->updatePlayersScore();

        // flash
        session()->flash('flash-message', 'Výsledek byl úspěšně přidán.');
        session()->flash('flash-warning', 'Všem hráčům se aktualizovalo skóre.');
        return redirect()->route('result.index');
    }



    /**
     * Update the specified match result in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->authorize('admin');
        
        $request->validate([
            'home' => 'required|integer|between:0,19',
            'away' => 'required|integer|between:0,19',
            'match_id' => 'required|integer|between:1,136',
        ]);

        $result = Result::where('match_id', $request->match_id)->first();

        $result->update([
            'score_home' => $request->home,
            'score_away' => $request->away,
            'match_id' => $request->match_id,
        ]);

        // // Updating players score
        $result->updatePlayersScore();

        // flash
        session()->flash('flash-message', 'Výsledek byl úspěšně aktualizován.');
        session()->flash('flash-warning', 'Všem hráčům se aktualizovalo skóre.');
        return redirect()->route('result.index');
    }


    
    /**
     * Show the form for deleting a resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $this->authorize('admin');

        $result = Result::where('match_id', $id)->firstOrFail();
        
        return view('result.delete')
            ->with('result', $result);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('admin');

        $result = Result::where('match_id', $id)->firstOrFail();
        $result->delete();


        // Updating players score
        $participants = Participant::all();
        foreach ($participants as $participant) {
            $score = $participant->recountScore();
            $participant->update([
                'score' => $score,
            ]);
        }

        //flash
        session()->flash('flash-warning', 'Výsledek byl vymazán.');
        session()->flash('flash-warning', 'Všem hráčům se aktualizovalo skóre.');
        return redirect()->route('result.index');

    }

}
