@extends('layouts.master')

@section('title', 'Pravidla')

@section('header')
    {{ __('Pravidla') }}
@endsection

@section('content')

    
    
    <ul>
        <li>Uživatelé tipují výsledky zápasu skupinové fáze MS v hokeji 2021.</li>
        <li>Pro účast v tipovačce je nutno předem znát, případně kontaktovat její organizátory: Davida Fábryho nebo Jakuba Hanuščíka.</li>
        <li>Soutěže se můžete zůčastnit vyplněním tipovačky také v papírové podobě, která je k dispozici u organizátorů.</li>
        <li>Tipy mohou být vytvářeny a upravovány nejpozději do zahájení šampionátu: 21.&nbsp;5.&nbsp;2021,&nbsp;15:15&nbsp;.</li>
        <li>Tipovačky se není možné zúčastnit dodatečně po zahájení šampionátu.</li>
        <li>Každý tipující se může soutěže účastnit pouze jednou. Zakládaní více účtů je zakázáno a může vést k diskvalifikaci soutěžícího.</li>
        <li>Zápisné ve výši 100 Kč je nutné organizátorům tipovačky uhradit ještě před zahájením MS (viz výše) v hotovosti, případně platební kartou <a href="https://paypal.me/pools/c/8zzJskSfjO">online zde</a>.</li>
        <li>Peněžní výhru si rozdělí první tři tipující s nejvyšším dosaženým skóre v poměru 50 % první, 30% druhý a 20 % třetí tipující <small>(Přesné částky budou včas upřesněny podle počtu všech soutěžících)</small>.</li>
        <li>Pokud dva nebo více hráčů dosáhnou shodného konečného skóre, rozdělí si umístění i případnou výhru rovnoměrně.</li>
        <li>Aktualizovaný seznam potvrzených soutěžících naleznete v <a href="{{ route('table') }}"><strong>záložce tabulka</strong></a>.</li>
        <li>Skóre se bude vypočítávat následujícím způsobem:
          <hr>
          <h5 class="h5">Základní skupiny:</h5>
          <ul>
            <li><strong>5 bodů</strong> za zcela přesný výsledek zápasu (Např. Tip 3:1 a zápas dopadne 3:1). </li>
            <li><strong>1 bod</strong> za správné určení vítěze, resp. určení remízy zápasu (Např. Tip 3:1 a zápas dopadne 3:0, Např. Tip 0:0 a zápas dopadne 3:3).</li>
            <li><strong>0 bodů</strong> za nesprávný tip (Např. Tip is 3:1 a zápas dopadne 1:1). </li>              
          </ul>
          <hr>
          <h5 class="h5">Vyřazovací fáze turnaje:</h5>
          <ul>
            <li><strong>8 bodů</strong> za správný tip umístění každého z prvních tří týmů celkového pořadí. </li>
            <li><strong>6 bodů</strong> za správný tip každého finalisty. </li>          
            <li><strong>4 body</strong> za správný tip každého semifinalisty. </li>          
            <li><strong>3 body</strong> za správný tip každého čtvrtfinalisty. </li>          
          </ul>
          <hr>
          <h5 class="h5">Individuální ocenění hráčů:</h5>
          <ul>
            <li><strong>15 bodů</strong> za správný tip nejlepšího střelce turnaje. </li>
            <li><strong>15 bodů</strong> za správný tip vítěze kanadského bodování.</li>           
          </ul>
        </li>
        <li><small>Změna pravidel vyhrazena.</small></li>
    </ul>

@endsection
