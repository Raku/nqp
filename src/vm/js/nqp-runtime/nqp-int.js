function NQPInt(value) {
  this.value = value | 0;
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

NQPInt.prototype.$$toBool = function(ctx) {
  return (this.value ? 1 : 0);
};

module.exports = NQPInt;
