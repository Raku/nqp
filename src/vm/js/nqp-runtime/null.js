'use strict';
let singleton;
class Null {
  $$decont(ctx) {
    return this;
  }

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
singleton = new Null()
module.exports = singleton;
