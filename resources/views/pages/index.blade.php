@extends('layouts.master')

@section('title', 'MS v Hokeji 2021 Tipovačka')

@section('header')
    <h1 class="main-title title is-1">
        {{ __('MS v Hokeji 2021 - Lotyšsko') }}
    </h1>
    <h3 class="main-title subtitle is-2">
        {{ __('Tipovačka') }}
    </h3>
@endsection
    
@section('content')
    <figure class="image big-logo">
        <img src="{{ asset('img/logo/logo.jpg') }}" alt="logo">
    </figure>
@endsection
