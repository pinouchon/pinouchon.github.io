$(function() {
  $('video').mouseenter(function(e) {
    $(this)[0].play();
  });
  $('video').mouseleave(function(e) {
    $(this)[0].pause();
  });
});