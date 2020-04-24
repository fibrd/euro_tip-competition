<?php

namespace App\Http\Controllers;

use App\Participant;
use App\User;

class ParticipantController extends Controller
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
     * Show the admin page dashboard w/ all users & participants available.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $this->authorize('admin');

        $users = User::all();

        return view('participant.index')
            ->with('users', $users);
    }


    /**
     * Display editting form for adding selected user as a valid competitor.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->authorize('admin');

        $user = User::findOrFail($id);
        
        return view('participant.edit')
            ->withUser($user);
    }

    /**
     * Storing selected user as a valid competitor.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    {
        $user = User::findOrFail($id);

        if( $user->tips->first() == null ) {
            flash()->error('User has no tips created.');
            return redirect()->route('participant.index');
        };

        Participant::create([
            'user_id' => $user->id,
        ]);

        flash()->warning('User has been added.');
        return redirect()->route('participant.index');
    }


    /**
     * Display deleting form for removing selected participant out of valid competitors.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $this->authorize('admin');

        $participant = Participant::where('user_id', $id)->firstOrFail();

        return view('participant.delete')
            ->withUser($participant->user);
    }

    /**
     * Removing selected participant out of valid competitors.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('admin');

        $participant = Participant::where('user_id', $id)->firstOrFail();
        $participant->delete();

        flash()->warning('User has been removed.');
        return redirect()->route('participant.index');
    }
}
