import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["The best products for the nastiest intentions"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
