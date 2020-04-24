@extends('layouts.master')

@section('title', 'EURO 2020 Tip Competition')

@section('header')
    <h1 class="main-title title is-1">
        {{ __('EURO 2020') }}
    </h1>
    <h3 class="main-title subtitle is-2">
        {{ __('Tip Competition') }}
    </h3>
@endsection
    
@section('content')
    <figure class="image big-logo">
        <img src="{{ asset('img/logo/logo.svg') }}" alt="logo">
    </figure>
@endsection
