'use strict';
class NQPInt {
  constructor(value) {
    this.value = value | 0;
  }

  Int(ctx) {
    return this.value;
  }

  Str(ctx, _NAMED, self) {
    return this.value.toString();
  }

  Num(ctx) {
    return this.value;
  }

  $$toBool(ctx) {
    return (this.value ? 1 : 0);
  }
};

module.exports = NQPInt;
