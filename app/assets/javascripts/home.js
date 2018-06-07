$(document).ready(function(){
  $(".owl-carousel").owlCarousel({
    loop: true,
    margin: 10,
    nav: true
  });

  $('.services-btn').click(function(){
    $(this).find("i").toggleClass("ion-android-arrow-dropdown ion-android-arrow-dropup")
  })
})