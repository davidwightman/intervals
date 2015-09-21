$(document).ready(function () {


  $('a#show_change').click(function(event){
    event.preventDefault();
    $('div#change').toggle();
  });
});
