<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">
  @vite(['resources/css/app.css', 'resources/scss/app.scss', 'resources/js/app.js'])
  <title>@yield('title')</title>
</head>
<body>
  <div class="wrapper">
    <div class="header">
      <div class="header__container container">
        <a href="{{ route('index') }}" class="header__logo">
          <img src="{{ asset('img/navbar/logo.JPG') }}" alt="togolden">
        </a>

        <div class="header__menu menu">
          <ul class="menu__list">
            @guest
              @if (Route::has('login'))
                <li class="menu__item">
                  <a href="{{ route('login') }}" class="menu__link">Войти</a>
                </li>
              @endif
              @if (Route::has('register'))
                <li class="menu__item">
                  <a href="{{ route('register') }}" class="menu__link">Регистрация</a>
                </li>
              @endif
            @else
              <li class="menu__item">
                <a href="{{ route('company.create') }}" class="menu__link">Новая компания</a>
              </li>
              <li class="menu__item menu__item--dropdown">
                <a href="" class="menu__link menu__link--dropdown" onclick="event.preventDefault()">
                  {{ Auth::user()->name }}
                </a>
                <span class="menu__arrow arrow"></span>
                <ul class="menu__list sub-menu">
                  <li>
                    <a href="{{ route('logout') }}"
                       class="sub-menu__link"
                       onclick="event.preventDefault()
                                document.getElementById('logout-form').submit()"
                    >Выйти</a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST">
                      @csrf
                    </form>
                  </li>
                </ul>
              </li>
            @endguest
          </ul>
        </div>

      </div>
    </div>
    <main class="page">

      @yield('content')

    </main>
  </div>

  <div class='popup-outer'>
    <div class='popup-inner'>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="/js/script.js"></script>
</body>
</html>