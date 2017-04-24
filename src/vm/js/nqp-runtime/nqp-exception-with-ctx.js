let NQPException = require('./nqp-exception');
class NQPExceptionWithCtx extends NQPException {
  constructor(message, ctx) {
    super(message);
    this.$$ctx = ctx;
  }

};
module.exports = NQPExceptionWithCtx;
