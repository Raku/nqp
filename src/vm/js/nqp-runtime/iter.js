'use strict';

const NQPObject = require('./nqp-object.js');
const Null = require('./null.js');

class Iter extends NQPObject {
  constructor(array) {
    super();
    this.$$array = array;
    this.$$target = array.length;
    this.$$idx = 0;
  }

  $$shift() {
    const value = this.$$array[this.$$idx++];
    if (value === undefined) return Null;
    return value;
  }

  $$toBool(ctx) {
    return this.$$idx < this.$$target;
  }
};

module.exports = Iter;
