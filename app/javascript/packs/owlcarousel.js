// import $ from 'jquery'
// import JQuery from 'jquery';
// window.$ = window.JQuery = JQuery;

import 'owl.carousel'

const initCarousel = () => {
  $(document).ready(function () {
    $('.owl-carousel').owlCarousel({
      loop: true,
      margin: 10,
      responsiveClass: true,
      nav: true,
      responsive: {
        0: {
          items: 1,
        },
        600: {
          items: 3
        }
      }
    })
  })
}

export { initCarousel }
