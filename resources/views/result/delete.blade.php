@extends('layouts.master')

@section('title', 'Výsledky')
@section('heading', 'Vymazat výsledek?')

@section('content')

<form action="{{ route('result.destroy', $result->match_id) }}" method="POST">
    @csrf
    <input type="hidden" name="_method" value="delete">
        

    <article class="message">
        <div class="message-header">
            <p>{{ $result->match->city }}</p>
            <time datetime="{{ $result->match->match_time_datetime }}">
                <small>({{ $result->match->match_time }})</small>
            </time>
        </div>
        <div class="message-body is-mobile has-text-centered">

            <blockquote>{{ $result->match->team_home->team }} vs. {{ $result->match->team_away->team }}</blockquote>
            <blockquote>{{ $result->score }}</blockquote>
        </div>
        <div class="message-footer">
            <div class="field">
                <input class="button is-primary is-default" type="submit" value="{{ __('Vymazat') }}">
            </div>
        </div>
    </article>

</form>

@endsection
