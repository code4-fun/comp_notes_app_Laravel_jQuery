$(document).ready(function (){
  // Открытие формы для отправки комментария к определенной характеристике компании
  $('.field-comment-button').on('click', function (event){
    $.ajax({
      url: "/comment/create",
      type: 'POST',
      data: {
        companyId: event.target.dataset.companyId,
        fieldName: event.target.dataset.fieldName
      },
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      },
      success: (data) => {
        if(data){
          $('.popup-inner')
            .html(data)
            .on('click', function (event){
              event.stopPropagation()
            })

          $('.popup-button')
            .addClass('popup-button__comment')

          $('.popup-outer')
            .addClass('active')
            .on('click', function () {
              $(this).removeClass('active')
            })
        }
      },
      error: (e) => {
        console.log(e)
      }
    })
  })
})

// Открытие комментария в модальном окне
function showComment(id) {
  $.ajax({
    url: "/comment/show/" + id,
    type: 'GET',
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    },
    success: (data) => {
      if(data){
        $('.popup-inner')
          .html(data)
          .on('click', function (event){
            event.stopPropagation()
          })

        $('.popup-outer')
          .addClass('active')
          .on('click', function () {
            $(this).removeClass('active')
          })
      }
    },
    error: (e) => {
      console.log(e)
    }
  })
}

// Удаление комментария
function deleteComment(id){
  $.ajax({
    url: "/comment/" + id,
    type: 'DELETE',
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    },
    success: (data) => {
      if(data){
        $('#comment_' + id).hide('slow')
      }
    },
    error: (e) => {
      console.log(e)
    }
  })
}


// Отправка комментария из формы на сервер
function makeComment(data){
  const commentsDivId = '#' + data.get('fieldName') + '-comments'

  $.ajax({
    url: "/comment",
    type: 'POST',
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    },
    data: {
      companyId: data.get('companyId'),
      fieldName: data.get('fieldName'),
      comment: data.get('comment')
    },
    success: (data) => {
      if(data){
        $(commentsDivId).append(data)
      }
    },
    error: (e) => {
      console.log(e)
    }
  })
  $('.popup-outer').removeClass('active')
}



