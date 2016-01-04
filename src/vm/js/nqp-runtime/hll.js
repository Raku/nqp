var Map = require('es6-map')
var op = {};
exports.op = op;

var hllSyms = new Map();

op.gethllsym = function(hllName, name, value) {
  if (hllSyms.has(hllName) && hllSyms.get(hllName).has(name)) {
    return hllSyms.get(hllName).get(name);
  } else {
    return null;
  }
};

op.bindhllsym = function(hllName, name, value) {
  if (!hllSyms.has(hllName)) {
    hllSyms.set(hllName, new Map());
  }
  hllSyms.get(hllName).set(name, value);
  return value;
};

// HACK - language shouldn't be hardcoded to nqp

op.bindcurhllsym = function(name, value) {
  return op.bindhllsym('nqp', name, value);
};

op.getcurhllsym = function(name) {
  return op.gethllsym('nqp', name);
};
