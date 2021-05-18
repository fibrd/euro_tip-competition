@extends('layouts.master')

@section('header')
    {{ __('Výsledky') }}
@endsection

@section('content')

<table class="table is-fullwidth">
    <thead>
        <tr>
            <th>Domácí</th>
            <th>Hosté</th>
            <th>Výsledek</th>
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
                    <td><a href="{{ route('result.edit', $match->id) }}">upravit</a></td>
                    <td><a href="{{ route('result.delete', $match->id) }}">vymazat</a></td>
                @else
                    <td>--</td>
                    <td><a href="{{ route('result.edit', $match->id) }}">vytvořit</a></td>
                    <td>--</td>
                @endif
            </tr> 
        @endforeach
    </tbody>

</table>

@endsection
