<div id="{{ 'comment_' . $comment->id }}"
     class="comment__body">
  <div onclick="showComment('{{ $comment->id }}');"
       class="comment__content">
    <div class="comment__date">{{ $comment->created_at }}</div>
    <div class="comment__text">{{ substr($comment->comment, 0, 35).'...' }}</div>
    <div class="comment__delete">
      <img src="{{ asset('img/cards/trash.svg') }}" alt="remove"
           onclick="event.stopPropagation();
                    deleteComment({{ $comment->id }})">
    </div>
  </div>
</div>