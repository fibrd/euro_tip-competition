@extends('layouts.master')

@section('title', 'Pravidla')

@section('header')
    {{ __('Pravidla') }}
@endsection

@section('content')

    
    
    <ul>
        <li>Uživatelé tipují výsledky zápasu skupinové fáze MS v hokeji 2021.</li>
        <li>Tipy mohou být vytvářeny a upravovány nejpozději do zahájení šampionátu: 21.&nbsp;5.&nbsp;2021,&nbsp;15:15&nbsp;.</li>
        <li>Každý tipující se může soutěže účastnit pouze jednou. Zakládaní více účtů je zakázáno a může vést k diskvalifikaci soutěžícího.</li>
        <li>Pokud dva nebo více hráčů dosáhnou shodného konečného skóre, rozdělí si umístění i případnou výhru rovnoměrně.</li>
        <li>Tipovačky se není možné zúčastnit dodatečně po zahájení šampionátu.</li>
        <li>Aktualizovaný seznam potvrzených soutěžících naleznete v <a href="{{ route('table') }}"><strong>záložce tabulka</strong></a>.</li>
        <li>Skóre se bude vypočítávat následujícím způsobem:
          <ul>
            <li><strong>4 body</strong> za zcela přesný výsledek zápasu (Např. Tip 3:1 a zápas dopadne 3:1). </li>
            <li><strong>5 bodů</strong>, tedy 1 bonusový bod navíc, za zcela přesný výsledek zápasu s celkovým počtem 5ti a více vstřelených gólů (Např. Tip 4:1 a zápas dopadne 4:1).</li>
            <li><strong>2 body</strong> za tip správného rozdílu skóre zápasu score difference (Např. Tip 3:1 a zápas dopadne 2:0). </li>
            <li><strong>1 bod</strong> za správné určení vítěze zápasu (Např. Tip 3:1 a zápas dopadne 3:0). <small>(pozn. Nemůže nastat při remíze.)</small></li>
            <li><strong>0 bodů</strong> za nesprávný tip (Např. Tip is 3:1 a zápas dopadne 1:1). </li>              
          </ul>
        </li>
        <li>Změna pravidel vyhrazena.</li>
    </ul>

@endsection
