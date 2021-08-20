import party from 'party-js';
import { range } from 'party-js/lib/systems/variation';

const initParty = () => {
  const confettiHTML = document.getElementById("confetti");
  if (confettiHTML) {party.confetti(confettiHTML, {
    count: range(100, 151),
  })
  };
};

export {initParty}
