@extends('layouts.master')

@section('header')
    {{ __('Nové tipy') }}
@endsection

@section('content')

<form action="{{ route('tip.store') }}" method="post" onsubmit="return confirm('Opravdu chcete odeslat takto vyplněné tipy?')">
    @csrf
    @foreach ($matches as $match_id => $match)

        <article class="message">
            <div class="message-header">
                <p>{{ $match->city }}</p>
                <time datetime="{{ $match->match_time_datetime }}">
                    <small>({{ $match->match_time }})</small>
                </time>
            </div>
            <div class="message-body columns is-mobile has-text-centered">

                <div class="field column">
                    <label class="label">{{ $match->team_home->team }}</label>
                    <div class="control has-text-centered">
                        <div class="select is-primary">                        
                            <select name="home[]">
                                @for ($i = 0; $i < 10; $i++)
                                    <option value="{{ $i }}">{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                    </div>
                </div>
                <div class="field column">
                    <label class="label">{{ $match->team_away->team }}</label>
                    <div class="control has-text-centered">
                        <div class="select is-primary">                        
                            <select name="away[]">
                                @for ($i = 0; $i < 10; $i++)
                                    <option value="{{ $i }}">{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                    </div>
                </div>
             
            </div>
        </article>

    @endforeach

    <div class="field">
        <input class="button is-primary is-default" type="submit" value="{{ __('Přidat') }}">
    </div>


</form>

@endsection
