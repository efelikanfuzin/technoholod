$(document).ready(function() {

  $(".fancybox").fancybox();

  Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    paginationClickable: true,
    nextButton: '.reviews_next',
    prevButton: '.reviews_prev',
    loop: true,
  });

  Swiper($('[data-prodject-gal]'), {
    paginationClickable: true,
    loop: true,
		slidesPerView: 4,
    spaceBetween: 30,
    nextButton: '[data-prodject-gall-next]',
		prevButton: '[data-prodject-gall-prev]',
  });
});
