'use strict';

const NQPObject = require('./nqp-object.js');

class NQPNum extends NQPObject {
  constructor(value) {
    super();
    this.value = value;
  }

  $$toBool(ctx) {
    return (this.value === 0 ? 0 : 1);
  }

  $$istype(ctx, type) {
    return 0;
  }

  $$can(ctx, name) {
    return 0;
  }

  $$clone() {
    return this;
  }

  $$getInt() {
    console.log('Numer - getInt what?');
    return this.value;
  }

  $$getNum() {
    return this.value;
  }
};

module.exports = NQPNum;
