'use strict';
let NQPObject = require('./nqp-object.js');
class NullS extends NQPObject {
  toString() {
    console.trace('here');
    throw 'doing string stuff on a null_s';
  }

  $$istype(ctx, type) {
    return 0;
  }

  $$toBool(ctx) {
    return 0;
  }
};
module.exports = new NullS();
