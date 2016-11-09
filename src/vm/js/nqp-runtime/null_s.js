'use strict';
class NullS {
  toString() {
    console.trace('here');
    throw 'doing string stuff on a null_s';
  }
  $$decont(ctx) {
    return this;
  };
};
module.exports = new NullS();
