$(document).ready(function() {

  $(".fancybox").fancybox();
  $("a#inline").fancybox({
    showCloseButton: true
	});

  new Swiper('[data-main-gal]', {
    autoplay: 2500,
    loop: true,
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true
    }
  });

  new Swiper('[data-reviews-gal]', {
    autoplay: 2500,
    loop: true,
    navigation: {
      nextEl: '.reviews_next',
      prevEl: '.reviews_prev',
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true
    }
  });

  new Swiper('[data-prodject-gal]', {
    loop: true,
    slidesPerView: 4,
    watchSlidesVisibility: true,
    spaceBetween: 30,
    navigation: {
      nextEl: '[data-prodject-gall-next]',
      prevEl: '[data-prodject-gall-prev]',
    }
  });
});
