@extends('layouts.master')

@section('title', 'Login form')

@section('header')
    <h3 class="subtitle is-2">
        {{ __('Login Form') }}
    </h3>
@endsection


@section('content')

<form method="POST" action="{{ ('login') }}">
    @csrf

    <div class="field">
        <div class="control has-icons-right">
            <input class="input" name="email" type="email" placeholder="{{ __('email') }}" value="{{ old('email') }}" required autocomplete="email" autofocus>
            <span class="icon is-small is-right">
                <i class="fas fa-envelope"></i>
            </span>
        </div>
    </div>

    <div class="field">
        <div class="control has-icons-right">
            <input class="input" name="password" type="password" placeholder="{{ __('password') }}">
            <span class="icon is-small is-right">
                <i class="fas fa-key"></i>
            </span>
        </div>
    </div>


    <div class="field">
        @if (Route::has('password.request'))
            <div class="control has-text-right">
                <a href="{{ route('facebook') }}" class="button is-light is-small">
                    <i class="fab fa-facebook"></i>{{ __('acebook Instant Login ') }}
                </a>

                <a href="{{ route('password.request') }}" class="button is-light is-small">
                    {{ __('Forgot Your Password?') }}
                </a>
             
            </div>
        @endif

    </div>


    <div class="field is-grouped">
        <div class="control">
            <input type="submit" class="button is-link" value="{{ __('Login') }}">
        </div>
        <div class="control">
            <a href="{{ route('register') }}" class="button is-link is-light">{{ __('Register form') }}</a>
        </div>
        
    </div>

</form>

@endsection




{{-- 
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div> --}}
