'use strict';

const NQPObject = require('./nqp-object.js');
const Null = require('./null.js');

const NQPInt = require('./nqp-int.js');
const NQPNum = require('./nqp-num.js');
const NQPStr = require('./nqp-str.js');

const nullStr = require('./null_s.js');

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

class IterInt extends Iter {
  $$shift() {
    const value = this.$$array[this.$$idx++];
    return new NQPInt(value === undefined ? 0 : value);
  }
};

class IterNum extends Iter {
  $$shift() {
    const value = this.$$array[this.$$idx++];
    return new NQPNum(value === undefined ? 0 : value);
  }
};

class IterStr extends Iter {
  $$shift() {
    const value = this.$$array[this.$$idx++];
    return new NQPStr(value === undefined ? nullStr : value);
  }
};

exports.Iter = Iter;
exports.IterInt = IterInt;
exports.IterNum = IterNum;
exports.IterStr = IterStr;
