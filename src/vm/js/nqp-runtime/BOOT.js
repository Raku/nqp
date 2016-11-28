/* exports.Array is actually set in bootstrap.js */

module.exports.createArray = function(array) {
  return exports.Array._STable.REPR.allocateFromArray(exports.Array._STable, array);
};
