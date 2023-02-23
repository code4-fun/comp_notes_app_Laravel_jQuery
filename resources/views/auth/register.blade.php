@extends('layouts.main')

@section('content')
  <div class="form__container container">
    <div class="form">
      <form class="form__body"  method="POST" action="{{ route('register') }}">
        @csrf
        <h1 class="form__title">Регистрация</h1>
        <div class="form__item">
          <label class="form__label" for="name">Имя</label>
          <input class="form__input" id="name" type="text" name="name" required>
        </div>
        <div class="form__item">
          <label class="form__label" for="email">Email</label>
          <input class="form__input" id="email" type="email" name="email" required>
        </div>
        <div class="form__item">
          <label class="form__label" for="password">Пароль</label>
          <input class="form__input" id="password" type="password" name="password" required>
        </div>
        <div class="form__item">
          <label class="form__label" for="password-confirm">Пароль</label>
          <input class="form__input" id="password-confirm" type="password" name="password_confirmation" required>
        </div>
        <button class="form__button" type="submit">Зарегистрироваться</button>
      </form>
    </div>
  </div>
@endsection
