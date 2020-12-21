<header id="header-area">
    <div class="preheader-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-7 col-7">
                    <div class="preheader-left">
                        <a href="mailto:info@construc.com"><strong>Email:</strong> info@construc.com</a>
                        <a href="mailto:info@construc.com"><strong>Hotline:</strong> 880 454 5477</a>
                    </div>
                </div>

                <div class="col-lg-6 col-sm-5 col-5 text-right">
                    <div class="preheader-right">
                        <a title="Login" class="btn-auth btn-auth-rev" href="{{route('login')}}">Login</a>
                        <a title="Register" class="btn-auth btn-auth" href="{{route('register')}}">Signup</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="header-bottom-area" id="fixheader">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="main-menu navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="{{route('home.index')}}">
                            <img src="{{asset('assets/img/logo.png')}}" alt="Logo">
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menucontent"
                            aria-controls="menucontent" aria-expanded="false">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="menucontent">
                            <ul class="navbar-nav ml-auto">
                                @foreach (menu('frontend', '_json') as $mk => $mv)
                                    <li class="nav-item {{ request()->is($mv->url) ? 'active' : '' }}">
                                        <a class="nav-link" href="{{$mv->url}}" target="{{$mv->target}}">{{$mv->title}}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
