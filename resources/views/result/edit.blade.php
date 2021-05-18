@extends('layouts.master')

@section('header')
    {{ __('Upravit výsledek') }}
@endsection

@section('content')

    <form action="{{ route('result.update', $result->match_id) }}" method="POST" >
        @csrf
        <input type="hidden" name="_method" value="put">
        <input type="hidden" name="match_id" value="{{ $result->match_id }}">

        <article class="message">
            <div class="message-header">
                <p>{{ $result->match->city }}</p>
                <time datetime="{{ $result->match->match_time_datetime }}">
                    <small>({{ $result->match->match_time }})</small>
                </time>
            </div>
            <div class="message-body columns is-mobile has-text-centered">

                <div class="field column">
                    <label class="label">{{ $result->match->team_home->team }}</label>
                    <div class="control has-text-centered">
                        <div class="select is-primary">                        
                            <select name="home">
                                @for ($i = 0; $i < 10; $i++)
                                    <option value="{{ $i }}"        
                                        @if ($i == $result->score[0])
                                            {{ " selected" }}
                                        @endif                          
                                    >{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                    </div>
                </div>
                <div class="field column">
                    <label class="label">{{ $result->match->team_away->team }}</label>
                    <div class="control has-text-centered">
                        <div class="select is-primary">                        
                            <select name="away">
                                @for ($i = 0; $i < 10; $i++)
                                    <option value="{{ $i }}"        
                                        @if ($i == $result->score[2])
                                            {{ " selected" }}
                                        @endif                          
                                    >{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                    </div>
                </div>  
            </div>

            <div class="message-footer">
                <div class="field">
                    <input class="button is-primary is-default" type="submit" value="{{ __('Upravit') }}">
                </div>
            </div>
        </article>

        


    </form>

@endsection
