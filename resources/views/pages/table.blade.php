@extends('layouts.master')

@section('title', 'Tabulka')

@section('header')
    {{ __('Tabulka') }}
@endsection

@section('content')

<div style="height: 75vh; overflow: auto;" class="table-container">
        
    <table class="table is-bordered is-narrow is-striped is-hoverable is-fullwidth">
        <thead>
            <tr>
                <th colspan="4">Konečné výsledky</th>

                @foreach ($matches as $match)
                  @if ($match->result['score'])
                    <th style="position: sticky; top: -5px;">
                      <div class="tag is-normal is-success is-light">
                        {{ $match->result['score'] }}
                      </div>
                    </th>
                  @endif
                @endforeach
            </tr>
            <tr>
                <th>#</th>
                <th>Avatar</th>
                <th>Uživatel</th>
                <th>Skóre</th>
                @foreach ($matches as $match)
                    <th style="position: sticky; top: 20px;">
                      <div class="tag is-normal is-warning is-light">
                        {{ $match->team_home->abbreviation }}
                      </div>
                      <div class="tag is-normal is-warning is-light">
                        {{ $match->team_away->abbreviation }}
                      </div>
                    </th>
                @endforeach
                <th>Střelec</th>
                <th>Kan. bodování</th>
                <th>1. místo</th>
                <th>2. místo</th>
                <th>3. místo</th>
                <th>4. místo</th>
                <th>5.-8. místo</th>
                <th>5.-8. místo</th>
                <th>5.-8. místo</th>
                <th>5.-8. místo</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($participants as $rank => $participant)
                <tr title="{{ $participant->user->alias }}">
                    <td>{{ $rank + 1 }}.</td>
                    <td><img src="{{ asset($participant->user->avatar) }}" alt="avatar" class="table-avatar" width="25"></td>
                    <td style="position: sticky; left: 0">
                      <div class="tag is-medium is-info is-light" >{{ $participant->user->alias }}</div>
                    </td>
                    <td>{{ $participant->score }}</td>
                    
                    @foreach ($participant->user->tips[0]->tips as $tip)
                      <td>{{ $tip[0] }}:{{ $tip[1] }}</td>          
                    @endforeach 
                    <td>{{ $participant->user->tips[0]->players[0] }}</td>
                    <td>{{ $participant->user->tips[0]->players[3] }}</td>
                    <td>{{ $teams[ $participant->user->tips[0]->placement[0] - 1 ]->abbreviation }}</td>
                    <td>{{ $teams[ $participant->user->tips[0]->placement[1] - 1 ]->abbreviation }}</td>
                    <td>{{ $teams[ $participant->user->tips[0]->placement[2] - 1 ]->abbreviation }}</td>
                    <td>{{ $teams[ $participant->user->tips[0]->placement[3] - 1 ]->abbreviation }}</td>
                    <td>{{ $teams[ $participant->user->tips[0]->placement[4] - 1 ]->abbreviation }}</td>
                    <td>{{ $teams[ $participant->user->tips[0]->placement[5] - 1 ]->abbreviation }}</td>
                    <td>{{ $teams[ $participant->user->tips[0]->placement[6] - 1 ]->abbreviation }}</td>
                    <td>{{ $teams[ $participant->user->tips[0]->placement[7] - 1 ]->abbreviation }}</td>
                </tr>
            @endforeach
        </tbody>     
    </table>
</div>

<small>
  Uživatelské účty jsou na tomto aktualizovaném seznamu tipujících zobrazeny až po ověření adminem.
</small>  

@endsection


@section('footer')
    @parent
    <br>
    <small class="avatar-footer">Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></small>
@endsection