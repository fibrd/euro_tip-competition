@extends('layouts.master')

@section('header')
    {{ __('Results') }}
@endsection

@section('content')

<table class="table is-fullwidth">
    <thead>
        <tr>
            <th>HOME</th>
            <th>AWAY</th>
            <th>RESULT</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>   
    </thead>
    <tbody>
        @foreach ($matches as $match)
            <tr>
                <td>{{ $match->team_home->abbreviation }}</td>
                <td>{{ $match->team_away->abbreviation }}</td>
                @if (isset( $match->result->score ))
                    <td>{{ $match->result->score }}</td>
                    <td><a href="{{ route('result.edit', $match->id) }}">edit</a></td>
                    <td><a href="{{ route('result.delete', $match->id) }}">delete</a></td>
                @else
                    <td>--</td>
                    <td><a href="{{ route('result.edit', $match->id) }}">create</a></td>
                    <td>--</td>
                @endif
            </tr> 
        @endforeach
    </tbody>

</table>

@endsection
