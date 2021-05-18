<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="{{ route('home') }}">
            <strong>MS v Hokeji 2021</strong>
        </a>
    
        <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>
    
    <div id="navbarBasicExample" class="navbar-menu">
        @if (Auth::check())
            <div class="navbar-start">

                <a href="{{ route('rules') }}" class="navbar-item">
                    {{ __('Pravidla') }}
                </a>

                <a href="{{ route('post.index') }}" class="navbar-item">
                    {{ __('Příspěvky') }}
                </a>

                <a href="{{ route('table') }}" class="navbar-item">
                    {{ __('Tabulka') }}
                </a>
                
                <a href="{{ route('tip.index') }}" class="navbar-item">
                    {{ __('Moje tipy') }}
                </a>
                
                @can('admin')
                    <a href="{{ route('result.index') }}" class="navbar-item">
                        {{ __('Výsledky') }}
                    </a>

                    <a href="{{ route('participant.index') }}" class="navbar-item">
                        {{ __('Uživatelé') }}
                    </a>
                @endcan

                <a href="{{ route('profile') }}" class="navbar-item">
                    {{ __('Profil') }}
                </a>
            
            </div>

        @else
        
            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                
                        <a href="{{ route('register') }}" class="button is-link">
                            {{ __('Registrace') }}
                        </a>
                        <a href="{{ route('login') }}" class="button is-link">
                            {{ __('Přihlášení') }}
                        </a>
                            
                    </div>
                </div>
            </div>
        @endif
    </div>
</nav>