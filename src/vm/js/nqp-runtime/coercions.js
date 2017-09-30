exports.strToNum = function(str) {
  /* TODO - more converts more stuff */
  if (str === 'NaN') return NaN;
  if (str === 'Inf') return Infinity;
  if (str === '-Inf') return -Infinity;
  if (str === '+Inf') return Infinity;
  let parsed = parseFloat(str);
  if (isNaN(parsed)) {
    return 0;
  }
  return parsed;
};

exports.numToStr = function(num) {
  if (num === Infinity) return 'Inf';
  if (num === -Infinity) return '-Inf';
  if (num === 0 && 1/num === -Infinity) return '-0';

  return num.toString();
};

/* TODO - more error checking */
exports.strToInt = function(str) {
  return parseInt(str)|0;
};
