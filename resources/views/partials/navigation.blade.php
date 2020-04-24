<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="{{ route('home') }}">
            <strong>EURO 2020</strong>
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
                    {{ __('Rules') }}
                </a>

                <a href="{{ route('post.index') }}" class="navbar-item">
                    {{ __('Posts') }}
                </a>

                <a href="{{ route('table') }}" class="navbar-item">
                    {{ __('Table') }}
                </a>
                
                <a href="{{ route('tip.index') }}" class="navbar-item">
                    {{ __('Tips') }}
                </a>
                
                @can('admin')
                    <a href="{{ route('result.index') }}" class="navbar-item">
                        {{ __('Results') }}
                    </a>

                    <a href="{{ route('participant.index') }}" class="navbar-item">
                        {{ __('Users') }}
                    </a>
                @endcan

                <a href="{{ route('profile') }}" class="navbar-item">
                    {{ __('Profile') }}
                </a>
            
            </div>

        @else
        
            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                
                        <a href="{{ route('register') }}" class="button is-link">
                            {{ __('Sign up') }}
                        </a>
                        <a href="{{ route('login') }}" class="button is-link">
                            {{ __('Log in') }}
                        </a>
                            
                    </div>
                </div>
            </div>
        @endif
    </div>
</nav>