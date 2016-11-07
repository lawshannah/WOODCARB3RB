$(function() {
<<<<<<< HEAD
  $("#sidebar").stick_in_parent({offset_top: 40});
  $('body').scrollspy({
    target: '#sidebar',
    offset: 60
=======

  $('#tocnav').affix({
    offset: {
      top: $('#tocnav').offset().top - 80
    }
  });
  $('body').scrollspy({
    target: '#tocnav',
    offset: 80
>>>>>>> master
  });

});
