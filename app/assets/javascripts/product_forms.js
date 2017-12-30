$(document).on('turbolinks:load', function() {
  $(".new_product_button").click(function(){
    if ($(".new_product_field").hasClass("new_product_hidden")){
      $(".new_product_hidden").removeClass('new_product_hidden').addClass('new_product_shown');
      $(this).html("Close")
    } else {
      $(".new_product_shown").removeClass('new_product_shown').addClass('new_product_hidden');
      $(this).html("Add product")
    };
  });
});
