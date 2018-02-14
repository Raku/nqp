'use strict';

const NQPObject = require('./nqp-object.js');
const NQPStr = require('./nqp-str.js');

class NQPInt extends NQPObject {
  constructor(value) {
    super();
    this.value = value | 0;
  }

  Str(ctx, _NAMED, self) {
    return new NQPStr(this.value.toString());
  }

  $$toBool(ctx) {
    return (this.value ? 1 : 0);
  }

  $$numify() {
    return this.value;
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
    return this.value;
  }
};

module.exports = NQPInt;
