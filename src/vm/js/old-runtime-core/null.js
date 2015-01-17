function NQPNull() {
}
NQPNull.prototype.Bool = function() {
  return 0;
};
NQPNull.prototype.to_n = function() {
  return 0;
};
NQPNull.prototype.to_s = function() {
  return 'null';
};
var Null = new NQPNull();

module.exports = Null;
