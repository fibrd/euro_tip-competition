@extends('layouts.master')

@section('header')
    {{ __('Tipy') }}
@endsection

@section('content')

@if ( isset($tips) )

<a href="{{ route('tip.edit', $tips->id) }}" class="button is-link is-default">{{ __('Upravit mé tipy') }}</a>
<table class="table is-fullwidth">

    <thead>
        <tr>
            <th>Datum</th>
            <th>Domácí</th>
            <th>Hosté</th>
            <th>Tip</th>
            <th>Výsledek</th>
            <th>Body</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($tips->tips as $match_id => $tip_score)

            <tr>
                <td>{{ $matches[$match_id]->match_time }}</td>
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
    <p class="h6">{{ __('Žádné tipy uživatele nebyly nalezeny. Prosím vyplňte po kliknutí zde. ') }}</p>
    <a href="{{ route('tip.create') }}" class="button is-primary">{{ __('Přidat nové tipy') }}</a>
@endif

    
@endsection