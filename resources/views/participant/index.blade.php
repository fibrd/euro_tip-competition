@extends('layouts.master')

@section('header')
    {{ __('Users') }}
@endsection

@section('content')

    <table class="table users-table is-fullwidth">
        <thead>
            <tr>
                <th>Avatar</th>
                <th>User</th>
                <th>Alias</th>
                <th>Validate</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>
                        <img src="{{ asset($user->avatar) }}" alt="user_avatar" class="table-avatar" width="25">
                    </td>
                    <td>
                        {{ $user->firstname . ' ' .  $user->lastname . ' / ' . $user->email }}
                    </td>
                    <td><a href="{{ route('alias', $user->id) }}">{{ $user->alias }}</a></td>
                    @if (isset($user->participant))
                        <td><a href="{{ route('participant.delete', $user->id) }}"><i class="fas fa-user-minus"></i> remove</a></td>
                    @elseif( $user->tips->first() != null )
                        <td><a href="{{ route('participant.edit', $user->id) }}"><i class="fas fa-user-plus"></i> add</a></td>
                    @else
                        <td>--</td>
                    @endif
                </tr> 
            @endforeach
        </tbody>
    </table>

@endsection


@section('footer')
    @parent
    <br>
    <small class="avatar-footer">Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></small>
@endsection
