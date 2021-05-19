@extends('layouts.master')

@section('header')
    {{ __('Upravit tipy') }}
@endsection

@section('content')

<form action="{{ route('tip.update', Auth::id()) }}" method="post" onsubmit="return confirm('Opravdu chcete upravit vaše tipy?')">
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
    
    <article class="message">
      <div class="message-header">
          <p>{{ _('Celkové umístění') }}</p>
          <small class="text-danger is-danger">{{ _('Pozor na duplicity!') }}</small>
        </div>

      <div class="message-body">
        <div class="columns is-mobile has-text-centered">
            <div class="field column">
                <label class="label">{{ (_('1. místo'))}}</label>
                <div class="control has-text-centered">
                    <div class="select is-primary">                        
                        <select name="first_place">
                            @foreach ($teams as $team)
                                <option value="{{ $team->id}}"
                                  @if ($team->id == $tips->placement[0])
                                      {{ " selected" }}
                                  @endif  
                                >{{ $team->team }}</option>
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
                            <option value="{{ $team->id}}"
                              @if ($team->id == $tips->placement[1])
                                  {{ " selected" }}
                              @endif  
                            >{{ $team->team }}</option>
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
                            <option value="{{ $team->id}}"
                              @if ($team->id == $tips->placement[2])
                                  {{ " selected" }}
                              @endif  
                            >{{ $team->team }}</option>
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
                            <option value="{{ $team->id}}"
                              @if ($team->id == $tips->placement[3])
                                  {{ " selected" }}
                              @endif  
                            >{{ $team->team }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>       
        </div>

        @for ($i = 4; $i < 8; $i++)
          <div class=" columns is-mobile has-text-centered">
              <div class="field column">
                  <label class="label">{{ (_('5. - 8. místo'))}}</label>
                  <div class="control has-text-centered">
                      <div class="select is-primary">                        
                          <select name="next_places[]">
                              @foreach ($teams as $team)
                                <option value="{{ $team->id}}"
                                  @if ($team->id == $tips->placement[$i])
                                      {{ " selected" }}
                                  @endif  
                                >{{ $team->team }}</option>
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
                    <input class="input mb-4" required name="striker_name" placeholder="Jméno hráče" 
                      @if ($tips->players[0])
                        {{ "value=" . $tips->players[0] }}
                      @endif  
                    />
                </div>
                <div class="field is-primary mb-4">                      
                    <input class="input mb-4" required name="striker_number" type="number" min="0" max="99" placeholder="Číslo hráče" 
                      @if ($tips->players[1])
                        {{ "value=" . $tips->players[1] }}
                      @endif  
                    />
                </div>
                  <div class="field select is-primary">                        
                      <select name="striker_team">
                          @foreach ($teams as $team)
                              <option value="{{ $team->id}}"
                                @if ($team->id == $tips->players[2])
                                    {{ " selected" }}
                                @endif    
                              >{{ $team->team }}</option>
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
                  <input class="input mb-4" required name="top_name" placeholder="Jméno hráče" 
                    @if ($tips->players[3])
                      {{ "value=" . $tips->players[3] }}
                    @endif  
                  />
              </div>
              <div class="field is-primary mb-4">                      
                  <input class="input mb-4" required name="top_number" type="number" min="0" max="99" placeholder="Číslo hráče" 
                    @if ($tips->players[4])
                      {{ "value=" . $tips->players[4] }}
                    @endif  
                  />
              </div>
                <div class="field select is-primary">                        
                    <select name="top_team">
                        @foreach ($teams as $team)
                            <option value="{{ $team->id}}"
                              @if ($team->id == $tips->players[5])
                                  {{ " selected" }}
                              @endif  
                            >{{ $team->team }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
    </article>

    <div class="field">
        <input class="button button-submit is-primary is-default" type="submit" value="{{ __('Upravit') }}">
    </div>
 

</form>

@endsection
