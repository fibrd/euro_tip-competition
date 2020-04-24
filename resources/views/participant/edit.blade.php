@extends('layouts.master')

@section('content')

    <article class="message">
        <div class="message-header">
            {{ $user->alias }}
        </div>
        <div class="message-body is-mobile has-text-centered">

            <blockquote>Email: {{ $user->email }}</blockquote>
        </div>

        <form action="{{ route('participant.update', $user->id) }}" method="POST">
            @csrf

            <input type="hidden" name="_method" value="put">
            <div class="form-group">
                <input class="button is-primary is-default" type="submit" value="{{ __('Add participant') }}">
            </div>
        </form>
    </article>

    

@endsection