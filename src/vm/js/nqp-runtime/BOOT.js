/* exports.Array is actually set in bootstrap.js */

module.exports.createArray = function(array) {
  return exports.Array.$$STable.REPR.allocateFromArray(exports.Array.$$STable, array);
};

module.exports.createIntArray = function(array) {
  return exports.IntArray.$$STable.REPR.allocateFromArray(exports.IntArray.$$STable, array);
};

module.exports.createStrArray = function(array) {
  return exports.StrArray.$$STable.REPR.allocateFromArray(exports.StrArray.$$STable, array);
};
