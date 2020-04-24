# EURO-project

Osobní projekt aplikace k vytvoření vlastní tipovací soutěže na fotbalové ME 2020.
Tvorba backendu v Laravel PHP Frameworku.

## Popis

Tipovací soutěž má spefická pravidla bodování na základě přesných výsledků zápasů.
Stavy bodů účastníků se vždy přepočítají po manuální úpravě výsledku ze strany admina.
Noví uživatelé se mohou do tipovačky registrovat libovolně, nicméně pro účast v soutěži je nutné jejich manuální přidání adminem.
Aplikaci lze využít jako šablonu k vytvoření vlastních soukromých tipovaček.
Další pravidla tipovačky k zobrazení po přihlášení zde: [Pravidla](https://tipovacka.tk/rules).

## Website

Ukázka webové stránky k nahlédnutí na adrese: [Tipovačka website](https://tipovacka.tk).
Bez nutnosti registrace lze využít testovací účty:

-   Admin účet: admin@admin.admin, heslo: admin
-   Guest účet: guest@guest.guest, heslo: guest

## Přihlašování

Pro návštěvu stránky je přihlášení defaultně vyžadováno.
Je možno se přihlašovat pomocí OAUTH poskytnutím uživatelských údajů přímo z Facebookové stránky.
Po registraci uživatele se z jeho celého jména vygeneruje unikátní veřejný alias, pod kterým bude uživatel vystupovat.
Ostatní údaje jako email a reálné jméno zůstanou pro ostatní uživatele (neadministrátory) skryté.

## Databáze

Využití MySQL databázových tabulek. V Laravel struktura databáze vymezena také pomoci migracií.
K přístupu ke konkrétním datům pro ME 2020 nutno import kompletní databáze ze souboru: "~database/data/euro-project.sql"

## TODO

V plánu:

-   dodělání exportu tabulky s průběžnými a konečnými výsledky účastníků do samostatného excelového souboru včetně download linku daných souborů
-   jazykové překlady stránky a přepínání mezi jazykovými překlady
-   automatizované načítání výsledků pomocí API, k dispozici např.: [footbal-data.org](https://www.football-data.org/).
