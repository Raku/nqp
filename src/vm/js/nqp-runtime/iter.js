'use strict';

let NQPObject = require('./nqp-object.js');
let Null = require('./null.js');

class Iter extends NQPObject {
  constructor(array) {
    super();
    this.$$array = array;
    this.$$target = array.length;
    this.$$idx = 0;
  }

  $$shift() {
    let value = this.$$array[this.$$idx++];
    if (value === undefined) return Null;
    return value;
  }

  $$toBool(ctx) {
    return this.$$idx < this.$$target;
  }
};

module.exports = Iter;
