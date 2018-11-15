const JSBI = require('jsbi');

module.exports.asIntN = function(bits, bigint) {
  return JSBI.BigInt(BigInt.asIntN(bits, BigInt(bigint.toString())));
};

module.exports.asUintN = function(bits, bigint) {
  return JSBI.BigInt(BigInt.asUIntN(bits, BigInt(bigint.toString())));
};

