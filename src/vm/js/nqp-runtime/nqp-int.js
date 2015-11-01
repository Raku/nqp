function NQPInt(value) {
  this.value = value;
}

NQPInt.prototype.Int = function(ctx) {
  return this.value;
};

NQPInt.prototype.Str = function(ctx) {
  return this.value.toString();
};

NQPInt.prototype.Num = function(ctx) {
  return this.value;
};

NQPInt.prototype.$$to_bool = function(ctx) {
    return (this.value ? 1 : 0);
};

module.exports = NQPInt;
