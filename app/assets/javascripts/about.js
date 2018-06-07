$(document).ready(function(){
  $('.about-update').click(function(){
    var objId = $(this).attr('id');
    var input = $(this).siblings('input').val();
    var inputEl = $(this).closest('.card-body');
    var fieldName = $(this).siblings('input').attr('name');
    var data = {}
    data[fieldName] = input
    $.ajax({
      url: '/admin/about/'+objId+'/update',
      type: 'put',
      dataType: "json",
      data: { about: data },
      success: function(res){
        console.log(res.status);
        $('.messages').prepend("<span class='successMsg'>Updated Successfully</span>");
        $('.successMsg').fadeToggle(3000, function(){
          $(this).remove();
        })
      }
    })
  })
})