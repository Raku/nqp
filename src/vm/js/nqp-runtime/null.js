'use strict';
class Null {
  $$decont(ctx) {
    return this;
  }
  $$toBool(ctx) {
    return 0;
  }
};
module.exports = new Null();
