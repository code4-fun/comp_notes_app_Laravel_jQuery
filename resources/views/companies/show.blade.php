@extends('layouts.main')

@section('title', $company->name)

@section('content')
  <div class="page__company company">
    <div class="company__container container">
      <div class="company__body">

        <div class="company__column">
          <div class="{{ Auth::user()
                           ? 'company__field'
                           : 'company__field--not-logged-in' }} company-field">
            <div class="company-field__body">
              <div class="company-field__label">Название</div>
              <div class="company-field__value">{{ $company->name }}</div>
            </div>
            @auth
              <div id="name-field-comments"
                   class="company-field__comments comment">
                @foreach($comments as $comment)
                  @if(!strcmp($comment->comp_column, 'name-field'))
                    <div id="{{ 'comment_' . $comment->id }}"
                         class="comment__body">
                      <div onclick="showComment('{{ $comment->id }}');"
                           class="comment__content">
                        <div class="comment__date">{{ $comment->created_at }}</div>
                        <div class="comment__text">{{ substr($comment->comment, 0, 35).'...' }}</div>
                        @if(Auth::user()->id == $comment->author_id)
                          <div class="comment__delete">
                            <img src="{{ asset('img/cards/trash.svg') }}" alt="remove"
                                 onclick="event.stopPropagation();
                                          deleteComment({{ $comment->id }})">
                          </div>
                        @endif
                      </div>
                    </div>
                  @endif
                @endforeach
              </div>
            @endauth
          </div>
            @auth
              <div class="company__button">
                <div data-company-id="{{ $company->id }}"
                     data-field-name="name-field"
                     class="button field-comment-button">Комментировать</div>
              </div>
            @endauth
        </div>

        <div class="company__column">
          <div class="{{ Auth::user()
                           ? 'company__field'
                           : 'company__field--not-logged-in' }} company-field">
            <div class="company-field__body">
              <div class="company-field__label">ИНН</div>
              <div class="company-field__value">{{ $company->inn }}</div>
            </div>
            @auth
              <div id="inn-field-comments"
                   class="company-field__comments comment">
                @foreach($comments as $comment)
                  @if(!strcmp($comment->comp_column, 'inn-field'))
                    <div id="{{ 'comment_' . $comment->id }}"
                         class="comment__body">
                      <div onclick="showComment('{{ $comment->id }}');"
                           class="comment__content">
                        <div class="comment__date">{{ $comment->created_at }}</div>
                        <div class="comment__text">{{ substr($comment->comment, 0, 35).'...' }}</div>
                        @if(Auth::user()->id == $comment->author_id)
                          <div class="comment__delete">
                            <img src="{{ asset('img/cards/trash.svg') }}" alt="remove"
                                 onclick="event.stopPropagation();
                                   deleteComment({{ $comment->id }})">
                          </div>
                        @endif
                      </div>
                    </div>
                  @endif
                @endforeach
              </div>
            @endauth
          </div>
          @auth
            <div class="company__button">
              <div data-company-id="{{ $company->id }}"
                   data-field-name="inn-field"
                   class="button field-comment-button">Комментировать</div>
            </div>
          @endauth
        </div>

        <div class="company__column">
          <div class="{{ Auth::user()
                           ? 'company__field'
                           : 'company__field--not-logged-in' }} company-field">
            <div class="company-field__body">
              <div class="company-field__label">Общая информация</div>
              <div class="company-field__value">{{ $company->info }}</div>
            </div>
            @auth
              <div id="info-field-comments"
                   class="company-field__comments comment">
                @foreach($comments as $comment)
                  @if(!strcmp($comment->comp_column, 'info-field'))
                    <div id="{{ 'comment_' . $comment->id }}"
                         class="comment__body">
                      <div onclick="showComment('{{ $comment->id }}');"
                           class="comment__content">
                        <div class="comment__date">{{ $comment->created_at }}</div>
                        <div class="comment__text">{{ substr($comment->comment, 0, 35).'...' }}</div>
                        @if(Auth::user()->id == $comment->author_id)
                          <div class="comment__delete">
                            <img src="{{ asset('img/cards/trash.svg') }}" alt="remove"
                                 onclick="event.stopPropagation();
                                   deleteComment({{ $comment->id }})">
                          </div>
                        @endif
                      </div>
                    </div>
                  @endif
                @endforeach
              </div>
            @endauth
          </div>
          @auth
            <div class="company__button">
              <div data-company-id="{{ $company->id }}"
                   data-field-name="info-field"
                   class="button field-comment-button">Комментировать</div>
            </div>
          @endauth
        </div>

        <div class="company__column">
          <div class="{{ Auth::user()
                           ? 'company__field'
                           : 'company__field--not-logged-in' }} company-field">
            <div class="company-field__body">
              <div class="company-field__label">Генеральный директор</div>
              <div class="company-field__value">{{ $company->gendir }}</div>
            </div>
            @auth
              <div id="gendir-field-comments"
                   class="company-field__comments comment">
                @foreach($comments as $comment)
                  @if(!strcmp($comment->comp_column, 'gendir-field'))
                    <div id="{{ 'comment_' . $comment->id }}"
                         class="comment__body">
                      <div onclick="showComment('{{ $comment->id }}');"
                           class="comment__content">
                        <div class="comment__date">{{ $comment->created_at }}</div>
                        <div class="comment__text">{{ substr($comment->comment, 0, 35).'...' }}</div>
                        @if(Auth::user()->id == $comment->author_id)
                        <div class="comment__delete">
                          <img src="{{ asset('img/cards/trash.svg') }}" alt="remove"
                               onclick="event.stopPropagation();
                                 deleteComment({{ $comment->id }})">
                        </div>
                        @endif
                      </div>
                    </div>
                  @endif
                @endforeach
              </div>
            @endauth
          </div>
          @auth
            <div class="company__button">
              <div data-company-id="{{ $company->id }}"
                   data-field-name="gendir-field"
                   class="button field-comment-button">Комментировать</div>
            </div>
          @endauth
        </div>

        <div class="company__column">
          <div class="{{ Auth::user()
                           ? 'company__field'
                           : 'company__field--not-logged-in' }} company-field">
            <div class="company-field__body">
              <div class="company-field__label">Адрес</div>
              <div class="company-field__value">{{ $company->address }}</div>
            </div>
            @auth
              <div id="address-field-comments"
                   class="company-field__comments comment">
                @foreach($comments as $comment)
                  @if(!strcmp($comment->comp_column, 'address-field'))
                    <div id="{{ 'comment_' . $comment->id }}"
                         class="comment__body">
                      <div onclick="showComment('{{ $comment->id }}');"
                           class="comment__content">
                        <div class="comment__date">{{ $comment->created_at }}</div>
                        <div class="comment__text">{{ substr($comment->comment, 0, 35).'...' }}</div>
                        @if(Auth::user()->id == $comment->author_id)
                        <div class="comment__delete">
                          <img src="{{ asset('img/cards/trash.svg') }}" alt="remove"
                               onclick="event.stopPropagation();
                                 deleteComment({{ $comment->id }})">
                        </div>
                        @endif
                      </div>
                    </div>
                  @endif
                @endforeach
              </div>
            @endauth
          </div>
          @auth
            <div class="company__button">
              <div data-company-id="{{ $company->id }}"
                   data-field-name="address-field"
                   class="button field-comment-button">Комментировать</div>
            </div>
          @endauth
        </div>

        <div class="company__column">
          <div class="{{ Auth::user()
                           ? 'company__field'
                           : 'company__field--not-logged-in' }} company-field">
            <div class="company-field__body">
              <div class="company-field__label">Телефон</div>
              <div class="company-field__value">{{ $company->phone }}</div>
            </div>
            @auth
              <div id="phone-field-comments"
                   class="company-field__comments comment">
                @foreach($comments as $comment)
                  @if(!strcmp($comment->comp_column, 'phone-field'))
                    <div id="{{ 'comment_' . $comment->id }}"
                         class="comment__body">
                      <div onclick="showComment('{{ $comment->id }}');"
                           class="comment__content">
                        <div class="comment__date">{{ $comment->created_at }}</div>
                        <div class="comment__text">{{ substr($comment->comment, 0, 35).'...' }}</div>
                        @if(Auth::user()->id == $comment->author_id)
                        <div class="comment__delete">
                          <img src="{{ asset('img/cards/trash.svg') }}" alt="remove"
                               onclick="event.stopPropagation();
                                 deleteComment({{ $comment->id }})">
                        </div>
                        @endif
                      </div>
                    </div>
                  @endif
                @endforeach
              </div>
            @endauth
          </div>
          @auth
            <div class="company__button">
              <div data-company-id="{{ $company->id }}"
                   data-field-name="phone-field"
                   class="button field-comment-button">Комментировать</div>
            </div>
          @endauth
        </div>

        @auth
          <div class="company-comments">
            <div class="company-comments__button">
              <div data-company-id="{{ $company->id }}"
                   data-field-name="company"
                   class="button field-comment-button">Комментировать компанию</div>
            </div>
            <div id="company-comments"
                 class="company-comments__list comment">

              @foreach($comments as $comment)
                @if(!strcmp($comment->comp_column, 'company'))
                  <div id="{{ 'comment_' . $comment->id }}"
                       class="comment__body">
                    <div onclick="showComment('{{ $comment->id }}');"
                         class="comment__content">
                      <div class="comment__date">{{ $comment->created_at }}</div>
                      <div class="comment__text">{{ substr($comment->comment, 0, 45).'...' }}</div>
                      @if(Auth::user()->id == $comment->author_id)
                      <div class="comment__delete">
                        <img src="{{ asset('img/cards/trash.svg') }}" alt="remove"
                             onclick="event.stopPropagation();
                               deleteComment({{ $comment->id }})">
                      </div>
                      @endif
                    </div>
                  </div>
                @endif
              @endforeach
            </div>
          </div>
        @endauth

      </div>
    </div>
  </div>
@endsection