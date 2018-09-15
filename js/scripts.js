$(function() {

  $('a[href*=portfolio-section]').on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 500, 'linear');
  });

  $('a[href*=resume-section]').on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 500, 'linear');
  });

  $('a[href*=banner]').on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 'linear');
  });

  $('.menu-btn').on('click', toggleMenu);

  let menuShowing;
 function toggleMenu() {
    if (!menuShowing) {
      $('.menu-btn').addClass('close');
      $('.menu').css("opacity", "0.8");

      menuShowing = true;
    } else if(menuShowing) {
      $('.menu-btn').removeClass('close');
      $('.menu').css("opacity", "0");

      menuShowing = false;
    }
  }

});
