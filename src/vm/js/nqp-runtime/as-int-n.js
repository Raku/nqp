const JSBI = require('jsbi');

/* as defined in the ECMA-262 spec */
function modulo(bigint, power) {
  const mod = JSBI.remainder(bigint, power);

  if (JSBI.lessThan(mod, JSBI.BigInt(0))) {
    return JSBI.add(mod, power);
  } else {
    return mod;
  }
}

module.exports.asIntN = function(bits, bigint) {
  const power = JSBI.exponentiate(JSBI.BigInt(2), JSBI.BigInt(bits));

  const mod = modulo(bigint, power);

  return (JSBI.greaterThanOrEqual(mod, JSBI.exponentiate(JSBI.BigInt(2), JSBI.BigInt(bits-1))) ? JSBI.subtract(mod, power) : mod);
};

module.exports.asUintN = function(bits, bigint) {
  return modulo(bigint, JSBI.exponentiate(JSBI.BigInt(2), JSBI.BigInt(bits)));
};

