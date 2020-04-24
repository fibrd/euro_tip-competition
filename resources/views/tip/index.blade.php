@extends('layouts.master')

@section('header')
    {{ __('Tips') }}
@endsection

@section('content')

@if ( isset($tips) )

<a href="{{ route('tip.edit', $tips->id) }}" class="button is-primary is-default">{{ __('Edit my tips') }}</a>
<table class="table is-fullwidth">

    <thead>
        <tr>
            <th>HOME</th>
            <th>AWAY</th>
            <th>TIP</th>
            <th>RESULT</th>
            <th>POINTS</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($tips->tips as $match_id => $tip_score)

            <tr>
                <td>{{ $matches[$match_id]->team_home->abbreviation }}</td>
                <td>{{ $matches[$match_id]->team_away->abbreviation }}</td>
                <td>{{ $tip_score[0] }}:{{ $tip_score[1] }}</td>
                @if (isset($results[$match_id]->score))
                    <td>{{ $results[$match_id]->score }}</td>
                    <td>{{ countScore($tip_score[0], $tip_score[1], $results[$match_id]->score[0], $results[$match_id]->score[2]) }}</td>
                @else
                    <td>--</td>
                    <td>--</td>
                @endif
                
            </tr>

        @endforeach

    </tbody>
</table>


@else
    <p class="h6">{{ __('There have not been any tips found. Please add the new ones. ') }}</p>
    <a href="{{ route('tip.create') }}" class="button is-primary">{{ __('Add new tips') }}</a>
@endif

    
@endsection