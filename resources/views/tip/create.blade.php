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

        <article class="message">
          <div class="message-header">
              <p>{{ _('Celkové umístění') }}</p>
              <small class="is-danger">{{ _('Pozor na duplicity!') }}</small>
          </div>
    
          <div class="message-body">
            <div class="columns is-mobile has-text-centered">
                <div class="field column">
                    <label class="label">{{ (_('1. místo'))}}</label>
                    <div class="control has-text-centered">
                        <div class="select is-primary">                        
                            <select name="first_place">
                                @foreach ($teams as $team)
                                    <option value="{{ $team->id}}">{{ $team->team }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="columns is-mobile has-text-centered">
                <div class="field column">
                    <label class="label">{{ (_('2. místo'))}}</label>
                    <div class="control has-text-centered">
                        <div class="select is-primary">                        
                            <select name="second_place">
                                @foreach ($teams as $team)
                                    <option value="{{ $team->id}}">{{ $team->team }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>  
            </div>
            <div class="columns is-mobile has-text-centered">
                <div class="field column">
                    <label class="label">{{ (_('3. místo'))}}</label>
                    <div class="control has-text-centered">
                        <div class="select is-primary">                        
                            <select name="third_place">
                                @foreach ($teams as $team)
                                    <option value="{{ $team->id}}">{{ $team->team }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>     
            </div>
            <div class=" columns is-mobile has-text-centered">
                <div class="field column">
                    <label class="label">{{ (_('4. místo'))}}</label>
                    <div class="control has-text-centered">
                        <div class="select is-primary">                        
                            <select name="fourth_place">
                                @foreach ($teams as $team)
                                    <option value="{{ $team->id}}">{{ $team->team }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>       
            </div>
    
            @for ($i = 5; $i < 9; $i++)
              <div class=" columns is-mobile has-text-centered">
                  <div class="field column">
                      <label class="label">{{ (_('5. - 8. místo'))}}</label>
                      <div class="control has-text-centered">
                          <div class="select is-primary">                        
                              <select name="next_places[]">
                                  @foreach ($teams as $team)
                                      <option value="{{ $team->id}}">{{ $team->team }}</option>
                                  @endforeach
                              </select>
                          </div>
                      </div>
                  </div>       
              </div>
            @endfor
        </div>
      </article>
    
      <article class="message">
        <div class="message-header">
            <p>{{ _('Individuální umístění') }}</p>
        </div>
    
        <div class="message-body">
          <div class="columns is-mobile has-text-centered">
              <div class="column">
                  <label class="label">{{ (_('Nejlepší střelec turnaje'))}}</label>
                  <div class="control has-text-centered">
                    <div class="field is-primary mb-4">                        
                        <input class="input mb-4" required name="striker_name" placeholder="Jméno hráče" />
                    </div>
                    <div class="field is-primary mb-4">                      
                        <input class="input mb-4" name="striker_number" type="number" min="1" max="99" placeholder="Číslo hráče (nepovinné)" />
                    </div>
                      <div class="field select is-primary">                        
                          <select name="striker_team">
                              @foreach ($teams as $team)
                                  <option value="{{ $team->id}}">{{ $team->team }}</option>
                              @endforeach
                          </select>
                      </div>
                  </div>
              </div>
            </div>
            <hr>
            <div class="column is-mobile has-text-centered">
                <label class="label">{{ (_('Nejlepší v kanadském bodování'))}}</label>
                <div class="control has-text-centered">
                  <div class="field is-primary mb-4">                        
                      <input class="input mb-4" required name="top_name" placeholder="Jméno hráče" />
                  </div>
                  <div class="field is-primary mb-4">                      
                      <input class="input mb-4" name="top_number" type="number" min="1" max="99" placeholder="Číslo hráče (nepovinné)" />
                  </div>
                    <div class="field select is-primary">                        
                        <select name="top_team">
                            @foreach ($teams as $team)
                                <option value="{{ $team->id}}">{{ $team->team }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
        </article>

    <div class="field">
        <input class="button is-primary is-default" type="submit" value="{{ __('Přidat') }}">
    </div>


</form>

@endsection
