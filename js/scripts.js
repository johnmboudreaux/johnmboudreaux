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

 function toggleMenu() {
   console.log('tm');
   
   let menuShowing;
  //  console.log(menuShowing);
  debugger
    if (!menuShowing) {
      $('.menu-btn').addClass('close');
      $('.menu').css("opacity", "0.9");

      console.log('menushowung1', menuShowing);
      menuShowing = true;
      console.log('menushowung1', menuShowing);
      
    } else if(menuShowing) {
      $('.menu-btn').removeClass('close');
      $('.menu').css("opacity", "0");

      menuShowing = false;
      console.log("menushowung2", menuShowing);
    }
  }

});
