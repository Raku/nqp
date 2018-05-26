exports.strToNum = function(str) {
  /* TODO - more converts more stuff */
  if (str === 'NaN') return NaN;
  if (str === 'Inf') return Infinity;
  if (str === '-Inf') return -Infinity;
  if (str === '+Inf') return Infinity;
  const parsed = parseFloat(str);
  if (isNaN(parsed)) {
    return 0;
  }
  return parsed;
};

exports.numToStr = function(num) {
  if (Number.isNaN(num)) return 'NaN';
  if (num === Infinity) return 'Inf';
  if (num === -Infinity) return '-Inf';
  if (num === 0 && 1/num === -Infinity) return '-0';

  let needed = 17;
  let attempt;
  let correct;
  do {
    correct = attempt;
    if (needed === 0) break;
    attempt = num.toPrecision(needed);
    needed--;
    if (correct !== undefined && /e/.test(attempt) && !/e/.test(correct)) {
      break;
    }
  } while (parseFloat(attempt) === num);

  return correct;
};

/* TODO - more error checking */
exports.strToInt = function(str) {
  return parseInt(str)|0;
};
