import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');
  if (banner) {

    return new Typed('#banner-typed-text', {
      strings: ["The best products for the nastiest intentions"],
      typeSpeed: 60,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
