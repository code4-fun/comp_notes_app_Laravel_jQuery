@extends('layouts.main')

@section('title', 'TOGOLDEN')

@section('content')

  <section class="page__companies companies">
    <div class="companies__container container">
      <div class="companies__body">
        @foreach($companies as $company)
          <div class="companies__column">
            <a class="companies__item-link"
               href="{{ route('company.show', ['id'=>$company->id]) }}">
              <div class="companies__item item-service">
                <h3 class="item-service__text item-service__text--name">{{ $company->name }}</h3>
                <h3 class="item-service__text">Адрес: {{ $company->address }}</h3>
                <h3 class="item-service__text">Телефон: {{ $company->phone }}</h3>
                <h3 class="item-service__text">Генеральный директор: {{ $company->gendir }}</h3>
              </div>
            </a>
            @auth
              @if(Auth::user()->id == $company->author_id)
                <div class="companies__delete">
                  <form action="{{ route('company.destroy', ['id' => $company->id]) }}"
                        method="post"
                        class="companies__delete--form"
                        onsubmit="return confirm('Точно удалить компанию?')">
                    @csrf
                    @method('delete')
                    <input type="image"
                           src="{{ asset('img/cards/trash.svg') }}"
                           class="companies__delete--input">
                  </form>
                </div>
              @endif
            @endauth
          </div>
        @endforeach
      </div>
    </div>
  </section>

@endsection