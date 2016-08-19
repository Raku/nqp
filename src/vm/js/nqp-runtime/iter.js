'use strict';
class Iter {
  constructor(array) {
    this.array = array;
    this.target = array.length;
    this.idx = 0;
  }

  $$shift() {
    return this.array[this.idx++];
  }

  $$toBool(ctx) {
    return this.idx < this.target;
  }
};

module.exports = Iter;
