<form class="popup-form"
      id="comment-form"
      onsubmit="event.preventDefault(); makeComment(new FormData(this))">
  <input class="popup-input" type="hidden" name="companyId" value="{{ $companyId }}">
  <input class="popup-input" type="hidden" name="fieldName" value="{{ $fieldName }}">
  <div>
    <textarea class="popup-input" name="comment" rows="10"></textarea>
  </div>
  <button class="popup-button">Добавить комментарий</button>
</form>
