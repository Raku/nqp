'use strict';

const NQPObject = require('./nqp-object.js');
const nullStr = require('./null_s.js');
const FakeStable = require('./fake-stable.js');

class NQPStr extends NQPObject {
  constructor(value) {
    super();
    this.value = value;
  }

  $$toBool(ctx) {
    return (this.value === '' || this.value === nullStr) ? 0 : 1;
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

  $$getStr() {
    return this.value;
  }
};

NQPStr.prototype._STable = new FakeStable('NQPStr');
NQPStr.prototype._STable.hllRole = 1;

module.exports = NQPStr;
