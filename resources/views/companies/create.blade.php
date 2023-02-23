@extends('layouts.main')

@section('title', 'Создать новую компанию')

@section('content')

  <div class="form__container container">
    <div class="form">
      <form class="form__body" action="{{ route('company.store') }}" method="POST">
        @csrf

        <h1 class="form__title">Создание компании</h1>
        <div class="form__item">
          <label for="forName" class="form__label">Название компании</label>
          <input class="form__input" id="forName" name="name" type="text">
        </div>
        <div class="form__item">
          <label for="forInn" class="form__label">ИНН</label>
          <input class="form__input" id="forInn" name="inn" type="text">
        </div>
        <div class="form__item">
          <label for="forInfo" class="form__label">Общая информация</label>
          <textarea class="form__input" id="forInfo" name="info" rows="10"></textarea>
        </div>
        <div class="form__item">
          <label for="forGendir" class="form__label">Генеральный директор</label>
          <input class="form__input" id="forGendir" name="gendir" type="text">
        </div>
        <div class="form__item">
          <label for="forAddress" class="form__label">Адрес</label>
          <input class="form__input" id="forAddress" name="address" type="text">
        </div>
        <div class="form__item">
          <label for="forPhone" class="form__label">Телефон</label>
          <input class="form__input" id="forPhone" name="phone" type="text">
        </div>

        <button type="submit" class="form__button">Создать компанию</button>
      </form>
    </div>
  </div>

@endsection