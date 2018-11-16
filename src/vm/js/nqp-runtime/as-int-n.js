const JSBI = require('jsbi');

module.exports.asIntN = function(bits, bigint) {
  return JSBI.BigInt(BigInt.asIntN(bits, BigInt(bigint.toString())).toString());
};

module.exports.asUintN = function(bits, bigint) {
  return JSBI.BigInt(BigInt.asUintN(bits, BigInt(bigint.toString())).toString());
};

