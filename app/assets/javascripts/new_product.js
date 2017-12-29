$(document).on('turbolinks:load', function() {
  $(".new_product_button").click(function(){
    if ($(this).hasClass("hidden_field")){
      $(".new_product_hidden").removeClass('new_product_hidden').addClass('new_product_shown');
      $(this).removeClass("hidden_field").addClass("shown_field");
      $(this).html("Close")
    } else {
      $(".new_product_shown").removeClass('new_product_shown').addClass('new_product_hidden');
      $(this).removeClass("shown_field").addClass("hidden_field");
      $(this).html("Add product")
    };
  });
});
