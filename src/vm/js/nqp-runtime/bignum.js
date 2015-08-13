var reprs = require('./reprs.js');

var bigint = require('bigint');

var op = {};
exports.op = op;

op.box_i = function(i, type) {
  var repr = type._STable.REPR;
  var obj = repr.allocate(type._STable);
  obj.$$set_int(i);
  return obj;
};

function makeBI(type, num) {
  var instance = type._STable.REPR.allocate(type._STable);
  if (type._STable.REPR instanceof reprs.P6bigint) {
    instance.value = num;
  } else {
    throw "NYI";
    //instance._STable.set_bignum(instance,num)
  }
  return instance;
}

function getBI(obj) {
  // TODO
  return obj.value;
}

op.fromstr_I = function(str, type) {
  return makeBI(type,bigint(str));
};

op.tostr_I = function(n) {
  return getBI(n).toString();
};
