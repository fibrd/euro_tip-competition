@extends('layouts.master')

@section('content')

<form method="POST" action="{{ route('password.email') }}">
    @csrf

    <div class="field">
        <div class="control has-icons-right">
            <input class="input" name="email" type="email" placeholder="{{ __('email') }}" value="{{ old('email') }}" required autocomplete="email" autofocus>
            <span class="icon is-small is-right">
                <i class="fas fa-envelope"></i>
            </span>
        </div>
    </div>

    <div class="field is-grouped">
        <div class="control">
            <button type="submit" class="button button-primary">
                {{ __('Poslat link na reset hesla') }}
            </button>
        </div>
    </div>

</form>

@endsection