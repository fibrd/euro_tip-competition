@extends('layouts.master')


@section('content')

    <form action="{{ route('result.store') }}" method="POST">
        @csrf
        <input type="hidden" name="match_id" value="{{ $match->id }}">
            
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
                            <select name="home">
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
                            <select name="away">
                                @for ($i = 0; $i < 10; $i++)
                                    <option value="{{ $i }}">{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                    </div>
                </div>
             
            </div>
            <div class="message-footer">
                <div class="field">
                    <input class="button is-primary is-default" type="submit" value="{{ __('Create') }}">
                </div>
            </div>
        </article>

    </form>

@endsection
