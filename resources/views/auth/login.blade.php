@extends('layouts.main')

@section('content')
  <div class="form__container container">
    <div class="form">
      <form class="form__body" method="POST" action="{{ route('login') }}">
        @csrf
        <h1 class="form__title">Вход в систему</h1>
        <div class="form__item">
          <label class="form__label" for="email">Email</label>
          <input class="form__input" id="email" type="email" name="email" required>
        </div>
        <div class="form__item">
          <label class="form__label" for="password">Пароль</label>
          <input class="form__input" id="password" type="password" name="password" required>
        </div>
        <button class="form__button" type="submit">Войти</button>
      </form>
    </div>
  </div>
@endsection
