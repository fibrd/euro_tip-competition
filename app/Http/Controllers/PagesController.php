<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Match;
use App\Participant;
use App\User;
use App\Team;
use \Auth;
use Illuminate\Support\Str;

class PagesController extends Controller
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
     * Show the application homepage.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('pages.index');
    }


    /**
     * Show the competiton rules.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function rules()
    {
        return view('pages.rules')
            ->withTitle('rules');
    }


    /**
     * Show the user profile.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function profile()
    {
        return view('pages.profile')
            ->withTitle('profile')
            ->withUser(Auth::user());
    }

    /**
     * Show the competiton table - current participants results.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function table()
    {
        $participants = Participant::orderBy('score', 'desc')->get();
        $matches = Match::all();
        $teams = Team::all();
        return view('pages.table')
            ->withTitle('table')
            ->withParticipants($participants)
            ->withMatches($matches)
            ->withTeams($teams);
    }

    /**
     * Show the page w/ all avatars available.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function avatar()
    {
        return view('pages.avatars')
            ->withTitle('avatars');
    }

    /**
     * Store the selected avatar in user profile.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function storeAvatar(Request $request)
    {
        $request->validate([
            'avatar' => 'required|string|max:50',
        ]);

        Auth::user()->avatar = $request->avatar;
        Auth::user()->update();
    

        // Redirect to post page w/ success mess.
        session()->flash('flash-message', 'Avatar úspěšně aktualizován!');
        return redirect()->route('profile');
    }

    /**
     * Show the editable alias form of selected user
     * 
     * Only admin can edit that.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function alias($id)
    {
        $this->authorize('admin');

        $user = User::findOrFail($id);

        return view('pages.alias')
            ->withTitle('alias')
            ->withUser($user);
    }

    /**
     * Store new alias in user profile.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateAlias(Request $request, $id)
    {
        $this->authorize('admin');

        $request->validate([
            'alias' => 'required|string|regex:/([a-z])\w+/|min:5|max:10',
        ]);

        $new_alias = Str::slug($request->alias);

        $user = User::findOrFail($id);
        $user->alias = $new_alias;
        $user->update();
    

        // Redirect to participants page w/ success mess.
        session()->flash('flash-message', 'Alias úspěšně aktualizován!');
        return redirect()->route('participant.index');
    }


}
