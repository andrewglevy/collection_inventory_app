$(document).on('turbolinks:load', function() {
  $( '.collection_update input[type=checkbox]' ).click(function(){
    $('.collection_update').submit();
  });
});
