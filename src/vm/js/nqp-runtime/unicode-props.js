const propVals = require('./propVals.js');
const xregexp = require('xregexp');

function matchClass(category, negated) {
  let regexp = xregexp('\\' + (negated ? 'P' : 'p') + '{' + category + '}', 'Ay');
  return function(target, pos) {
    regexp.lastIndex = pos;
    if (regexp.test(target)) {
      return regexp.lastIndex - pos;
    } else {
      return -1;
    }
  };
}

let props = {
  No: 'No',
  Nl: 'Nl',
  lower: 'Lowercase',
  Letter: 'Letter',
  InCyrillicSupplementary: 'InCyrillicSupplement'
};

for (let prop in props) {
  exports['uniprop_' + prop] = matchClass(props[prop], false);
  exports['uniprop_not_' + prop] = matchClass(props[prop], true);
}


for (let key in propVals.blk) {
  if (key === 'NB') {
    continue;
  }
  let alias = 'In' + key;
  let long = 'In' + propVals.blk[key];

  exports['uniprop_' + alias] = matchClass(long, false);
  exports['uniprop_not_' + alias] = matchClass(long, true);

  if (!(('uniprop_' + long) in exports)) {
    exports['uniprop_' + long] = matchClass(long, false);
    exports['uniprop_not_' + long] = matchClass(long, true);
  }
}

for (let alias in propVals.sc) {
  if (alias === 'Hrkt' || alias === 'Zzzz') {
    continue;
  }
  let long = propVals.sc[alias];

  exports['uniprop_' + alias] = matchClass(long, false);
  exports['uniprop_not_' + alias] = matchClass(long, true);

  if (!(('uniprop_' + long) in exports)) {
    exports['uniprop_' + long] = matchClass(long, false);
    exports['uniprop_not_' + long] = matchClass(long, true);
  }
}
