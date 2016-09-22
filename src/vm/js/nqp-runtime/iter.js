'use strict';
class Iter {
  constructor(array) {
    this.array = array;
    this.target = array.length;
    this.idx = 0;
  }

  $$shift() {
    var value = this.array[this.idx++];
    if (value === undefined) return null;
    return value;
  }

  $$toBool(ctx) {
    return this.idx < this.target;
  }
};

module.exports = Iter;
