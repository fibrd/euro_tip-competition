@extends('layouts.master')

@section('content')
        
<?php
    $avatar_path = env('AVATAR_PATH', 'img/avatars/svg');
    $avatars = glob("$avatar_path/*.svg");           
?>

<form action="{{ route('avatar.store') }}" class="form-group" method="post">

    {!! link_back() !!}
    <div class="avatar-controls">
        <input type="submit" class="button is-link" value=" {{__('Submit') }}">
    </div>
        
    @csrf
    
    <div class="avatar-container">

        @foreach ($avatars as $avatar)
            <div class="control">
                <label class="radio">
                    <img src="{{ $avatar }}" alt="avatar" width="100">
                    <input type="radio" name="avatar" value="{{ $avatar }}" required>
                </label>
            </div>  
        @endforeach
        
    </div>


</form>

@endsection


@section('footer')
    @parent
    <br>
    <small class="avatar-footer">Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></small>
@endsection