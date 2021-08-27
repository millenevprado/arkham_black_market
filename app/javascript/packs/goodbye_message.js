import Typed from 'typed.js';

const loadDynamicGoodbyeMessageText = () => {
  const goodbyeMessage = document.getElementById('goodbye-message');
  if (goodbyeMessage) {

    return new Typed('#goodbye-message', {
      strings: ["We hope you do all sorts of nasty things with this product!"],
      typeSpeed: 60,
      loop: true
    });
  };
}

export { loadDynamicGoodbyeMessageText };
