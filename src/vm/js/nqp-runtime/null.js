'use strict';
const NQPObject = require('./nqp-object.js');
let singleton; // eslint-disable-line prefer-const
class Null extends NQPObject {
  $$toBool(ctx) {
    return 0;
  }

  $$istype(ctx, type) {
    return 0;
  }

  $$atpos(index) {
    return singleton;
  }

  $$atkey(key) {
    return singleton;
  }
};
singleton = new Null();
module.exports = singleton;
