@extends('layouts.master')

@section('title', 'alias')
    
@endsection

@section('header')
    {{ __('Edit alias') }}
@endsection

@section('content')

    <form action="{{ route('alias.update', $user->id) }}" method="POST" >
        @csrf
        <input type="hidden" name="_method" value="put">
            

        <article class="message">
            <div class="message-header">
                <p>{{ $user->email }}</p>
            </div>
            <div class="message-body is-mobile">

                <div class="field">
                    <label class="label">Alias:</label>
                    <div class="control has-text-centered">
                        <input name="alias" type="text" class="input" value="{{ $user->alias }}">
                    </div>
                </div>
             
            </div>
           
            <div class="field">
                <input class="button is-primary is-default" type="submit" value="{{ __('Edit') }}">
            </div>

        </article>

    </form>

@endsection
