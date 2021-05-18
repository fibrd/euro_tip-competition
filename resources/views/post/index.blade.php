@extends('layouts.master')

@section('header')
    {{ __('Příspěvky') }}
@endsection

@section('content')

<form action="{{ route('post.store') }}" method="POST" class="post-form">
    @csrf
        
    <div class="field">
        <div class="control">
            <textarea class="postarea textarea is-light" style="resize: none;" name="post" maxlength="200" cols="30" rows="4" placeholder="{{ __('Co nám napíšeš pěkného?') }}"></textarea>
        </div>
    </div>
    @include('partials.emojis')
    <input class="button is-light" type="submit" value="{{ __('Odeslat') }}">
</form>

@foreach ($posts as $post)

    <div class="card post-card">
        <header class="card-header">
            <p class="card-header-title">
                {{ $post->user->alias }}
            </p>
        </header>
        <div class="card-content">
            <div class="content">
                <p>{!! $post->rich_post !!}</p>
            </div>
        </div>
        <footer class="card-footer">
            <p class="card-footer-item"><img src="{{ asset($post->user->avatar) }}" alt="avatar" width="55"></p>
            <time class="card-footer-item" datetime="{{ $post->created_at->format('Y-m-d') }}">{{ $post->created_at->diffForHumans() }}</time>
            @can ('delete-post', $post)
                <a href="{{ route('post.show', $post->id) }}" class="card-footer-item">Vymazat</a>
            @endcan
            
        </footer>
        
    </div>

@endforeach

<div class="is-half">
    {{ $posts->links() }}
</div>

@endsection



@section('footer')
    @parent
    <br>
    <small class="avatar-footer">Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></small>
@endsection