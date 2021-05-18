@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Ověřte Vaši emailovou adresu') }}</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('A fresh verification link has been sent to your email address.') }}
                        </div>
                    @endif

                    {{ __('Před odesláním prosím zkontrolujte Vaši emailovou schránku.') }}
                    {{ __('Pokud jste neobdrželi email s daným linkem') }},
                    <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                        @csrf
                        <button type="submit" class="btn btn-link p-0 m-0 align-baseline">{{ __('Klikněte zde pro zaslání jiného') }}</button>.
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
