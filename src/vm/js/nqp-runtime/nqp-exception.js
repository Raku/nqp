function NQPException(message) {
  this.name = 'NQPException';
  this.message = message;
}

NQPException.prototype = Object.create(Error.prototype);
NQPException.prototype.constructor = NQPException;

NQPException.prototype.Str = function(ctx, _NAMED, self) {
  return this.message;
};

NQPException.prototype.$$toBool = function(ctx) {
  return 1;
};

NQPException.prototype.$$decont = function(ctx) {
  return this;
};

module.exports = NQPException;
