function NQPException(message) {
  this.name = 'NQPException';
  this.message = message;
}

NQPException.prototype = Object.create(Error.prototype);
NQPException.prototype.constructor = NQPException;

module.exports = NQPException;
