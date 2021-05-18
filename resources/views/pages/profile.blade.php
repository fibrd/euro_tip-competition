@extends('layouts.master')

@section('header')
    {{ __('Můj profil') }}
@endsection

@section('content')

    <div class="card profile-card">
        <div class="card-image">
            <figure class="image big-avatar">
                <img src="{{ asset($user->avatar) }}" alt="Placeholder image">
            </figure>
        </div>
        <div class="card-content">
            <div class="media">
                <div class="media-left">
                    <figure class="image is-48x48">
                        <img src="{{ asset($user->avatar) }}" alt="Placeholder image">
                    </figure>
                </div>
                <div class="media-content">
                    <p class="title is-4">{{ $user->fullname }}</p>
                    <p class="subtitle is-6">{{ $user->email }}</p>
                </div>
            </div>
      
            <div class="content">
                <strong>{{ __('Registrován: ') }}</strong><time datetime="{{ $user->created_at->format('Y-m-d H:i:s') }}">{{ $user->created_at->format('jS F Y, H:i') }}</time>
                <br>
                @if (isset($user->participant))
                    {{ __('Tento uživatel už je platný soutěžícím tipovačky.') }}
                @else 
                    {{ __('Tento uživatel ještě není ověřen.') }}
                @endif
            </div>

            <div class="card-footer columns">
                <a href="{{ route('avatar') }}" class="card-footer-link column">Avatar</a>

                <a href="{{ route('logout') }}" class="card-footer-link column" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    {{ __('Odhlásit') }}
                </a>
            </div>
            

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </div>
    </div>
@endsection

@section('footer')
    @parent
    <br>
    <small class="avatar-footer">Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></small>
@endsection
