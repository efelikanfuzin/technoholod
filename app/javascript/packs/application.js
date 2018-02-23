import '../styles/application.scss';
import Swiper from 'swiper'

new Swiper('[data-main-gal]', {
    pagination: '.swiper-pagination',
    paginationClickable: true,
    nextButton: '.reviews_next',
    prevButton: '.reviews_prev',
    autoplay: true,
    loop: true
});

new Swiper('[data-reviews-gal]', {
    pagination: '.swiper-pagination',
    paginationClickable: true,
    nextButton: '.reviews_next',
    prevButton: '.reviews_prev',
    loop: true,
});

new Swiper('[data-prodject-gal]', {
    paginationClickable: true,
    loop: true,
    slidesPerView: 4,
    spaceBetween: 30,
    nextButton: '[data-prodject-gall-next]',
    prevButton: '[data-prodject-gall-prev]',
});