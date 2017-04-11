'use strict';
class NullS {
  toString() {
    console.trace('here');
    throw 'doing string stuff on a null_s';
  }

  $$decont(ctx) {
    return this;
  }

  $$istype(ctx, type) {
    return 0;
  }

  $$toBool(ctx) {
    return 0;
  }
};
module.exports = new NullS();
