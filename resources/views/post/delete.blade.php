@extends('layouts.master')

@section('content')

    <div class="card post-card">
        <header class="card-header">
            <p class="card-header-title">
                {{ $post->user->alias }}
            </p>
        </header>
        <div class="card-content">
            <div class="content">
                <p>{{ $post->post }}</p>
            </div>
        </div>
        <footer class="card-footer">
            <form action="{{ Route('post.destroy', $post->id) }}"  class="card-footer-item" method="POST">
                @csrf
                <input type="hidden" name="_method" value="delete">
                <input type="submit" class="button is-light is-default" value="Delete">
            </form>
            <time class="card-footer-item" datetime="{{ $post->created_at->format('Y-m-d') }}">{{ $post->created_at->diffForHumans() }}</time>      
        </footer>
    </div>

@endsection



@section('footer')
    @parent
    <small class="avatar-footer">Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></small>
@endsection