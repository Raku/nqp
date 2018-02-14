const NQPStr = require('./nqp-str.js');

class NQPException extends Error {
  constructor(message) {
    super(message);
    this.$$message = message;
  }

  Str(ctx, _NAMED, self) {
    return new NQPStr(this.$$message);
  }

  $$toBool(ctx) {
    return 1;
  }

  $$decont(ctx) {
    return this;
  }

  $$istype(ctx, type) {
    return 0;
  }

  $$isrwcont() {
    return 0;
  }
};

const proto = NQPException.prototype; /* Avoid gjslint warning */
proto._STable = {
  HOW: {
    name: function(ctx, _NAMED, how, obj) {
      return 'BOOTException';
    },
    $$decont(ctx) {
      return this;
    },
  },
  REPR: {
    name: 'NQPException',
  },
};

module.exports = NQPException;
