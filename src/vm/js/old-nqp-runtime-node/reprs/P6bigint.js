var reprs = require('nqp-runtime-core/reprs.js');
var bignum = require('bigint');

function P6bigint() {
}
P6bigint.prototype.type_object_for = reprs.basic_type_object_for;
P6bigint.prototype.allocate = reprs.basic_allocate;
P6bigint.prototype.compose = reprs.noop_compose;



P6bigint.prototype.set_int = function(obj, value) {
  obj.value = bignum(value);
};
P6bigint.prototype.get_int = function(obj) {
  return obj.value.toNumber();
};
P6bigint.prototype.generateBoxingMethods = function(st, repr, attr) {
  // TODO a bit hackish
  repr._STable.get_bignum = function(obj) { 
    return obj[attr.name];
  };
  repr._STable.set_bignum = function(obj,num) {
    obj[attr.name] = num;
  };

  repr.set_int = function(obj, value) {
    obj[attr.name] = bignum(value);
  };
  repr.get_int = function(obj) {
    return obj[attr.name].toNumber();
  };
};
module.exports = P6bigint;
