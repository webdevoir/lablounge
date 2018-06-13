$(document).on('turbolinks:load', function(){
  $('.about-update').click(function(){
    var objId = $(this).attr('id');
    var input = $(this).siblings('input').val();
    var inputEl = $(this).siblings('input');
    var fieldName = $(this).siblings('input').attr('name');
    $(inputEl).removeClass('is-valid is-invalid');
    $('.valid-feedback').remove();
    $('.invalid-feedback').remove();
    var data = {}
    data[fieldName] = input
    $.ajax({
      url: '/admin/about/'+objId+'/update',
      type: 'put',
      dataType: "json",
      data: { about: data },
      success: function(res){
        $(inputEl).addClass('is-valid');
        $(inputEl).after('<div class="valid-feedback">Updated Successfully.</div>');
      },
      error: function(res){
        console.log(res.status);
        $(inputEl).addClass('is-invalid');
        $(inputEl).after('<div class="invalid-feedback">Cannot be blank.</div>');
      }
    })
  })
})