import Swiper from "swiper";
import "swiper/dist/css/swiper.min.css";

const isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);

new Swiper('[data-main-gal]', {
  autoplay: {
    delay: 2500,
  },
  loop: true,
  pagination: {
    el: '.swiper-pagination',
    type: 'bullets',
    clickable: true
  }
});

new Swiper('[data-reviews-gal]', {
  autoplay: {
    delay: 2500,
  },
  loop: true,
  navigation: {
    nextEl: '.reviews_next',
    prevEl: '.reviews_prev'
  },
  pagination: {
    el: '.swiper-pagination',
    type: 'bullets',
    clickable: true
  }
});

new Swiper('[data-prodject-gal]', {
  autoplay: {
    delay: 2500,
  },
  loop: true,
  slidesPerView: isMobile ? 1 : 3,
  spaceBetween: 30,
  navigation: {
    nextEl: '[data-prodject-gall-next]',
    prevEl: '[data-prodject-gall-prev]'
  }
});
