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
  if (num === Infinity) return 'Inf';
  if (num === -Infinity) return '-Inf';
  if (num === 0 && 1/num === -Infinity) return '-0';

  return num.toPrecision(15).replace(/\.?0+$/, '');
};

/* TODO - more error checking */
exports.strToInt = function(str) {
  return parseInt(str)|0;
};
