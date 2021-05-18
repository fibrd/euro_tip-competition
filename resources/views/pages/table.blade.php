@extends('layouts.master')

@section('title', 'Tabulka')

@section('header')
    {{ __('Tabulka') }}
@endsection

@section('content')

<div class="table-container">
        
    <table class="table is-bordered is-narrow is-hoverable is-fullwidth">
        <thead>
            <tr>
                <th colspan="4">Konečné výsledky</th>

                @foreach ($matches as $match)
                    <th>{{ $match->result['score'] }}</th>
                @endforeach
            </tr>
            <tr>
                <th>#</th>
                <th>Avatar</th>
                <th>Uživatel</th>
                <th>Skóre</th>
                @foreach ($matches as $match)
                    <th>{{ $match->team_home->abbreviation }} vs. {{ $match->team_away->abbreviation }}</th>
                @endforeach
            </tr>
        </thead>

        <tbody>
            @foreach ($participants as $rank => $participant)
                <tr title="{{ $participant->user->alias }}">
                    <td>{{ $rank + 1 }}.</td>
                    <td><img src="{{ asset($participant->user->avatar) }}" alt="avatar" class="table-avatar" width="25"></td>
                    <td>{{ $participant->user->alias }}</td>
                    <td>{{ $participant->score }}</td>
                
                    @foreach ($participant->user->tips[0]->tips as $tip)
                        <td>{{ $tip[0] }}:{{ $tip[1] }}</td>          
                    @endforeach
                </tr>
            @endforeach
        </tbody>     
    </table>
</div>

<small>
  Uživatelské účty jsou na tomto aktualizovaném seznamu tipujících zobrazeny až po validaci adminem.
</small>  

@endsection


@section('footer')
    @parent
    <br>
    <small class="avatar-footer">Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></small>
@endsection