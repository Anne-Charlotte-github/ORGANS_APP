import party from 'party-js';

const initParty = () => {
  const confettiHTML = document.getElementById("confetti");
  if (confettiHTML) {party.confetti(confettiHTML)};
};

export {initParty}
