@extends('layouts.master')

@section('header')
    {{ __('Edit tips') }}
@endsection

@section('content')

<form action="{{ route('tip.update', Auth::id()) }}" method="post" onsubmit="return confirm('Really wanna edit your tips?')">
    @csrf
    <input type="hidden" name="_method" value="put">
    
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
                                    <option value="{{ $i }}"        
                                        @if ($i == $tips->tips[ $match_id ][0])
                                            {{ " selected" }}
                                        @endif                          
                                    >{{ $i }}</option>
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
                                    <option value="{{ $i }}"        
                                        @if ($i == $tips->tips[ $match_id ][1])
                                            {{ " selected" }}
                                        @endif                          
                                    >{{ $i }}</option>
                                @endfor
                            </select>
                        </div>
                    </div>
                </div>
             
            </div>
        </article>

    @endforeach
    
    <div class="field">
        <input class="button is-primary is-default" type="submit" value="{{ __('Edit') }}">
    </div>
 

</form>

@endsection
