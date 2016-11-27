class NQPException extends Error {
  constructor(message) {
    super(message);
  }

  Str(ctx, _NAMED, self) {
    return this.message;
  }

  $$toBool(ctx) {
    return 1;
  }

  $$decont(ctx) {
    return this;
  }
};

module.exports = NQPException;
