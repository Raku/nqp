const JSBI = require('jsbi');

module.exports.asIntN = function(bits, bigint) {
  const power = JSBI.exponentiate(JSBI.BigInt(2), JSBI.BigInt(bits));
  const mod = JSBI.remainder(bigint, power);
  return (JSBI.greaterThanOrEqual(mod, JSBI.exponentiate(JSBI.BigInt(2), JSBI.BigInt(bits-1))) ? JSBI.subtract(mod, power) : mod);
};

module.exports.asUintN = function(bits, bigint) {
  return JSBI.remainder(bigint, JSBI.exponentiate(JSBI.BigInt(2), JSBI.BigInt(bits)));
};

