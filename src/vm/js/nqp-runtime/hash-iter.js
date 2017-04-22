let NQPObject = require('./nqp-object.js');
class HashIter extends NQPObject {
  constructor(hash) {
    super();
    this.$$hash = hash.content;
    this.$$keys = Object.keys(hash.$$toObject());
    this.$$target = this.$$keys.length - 1;
    this.$$idx = -1;
  }

  $$shift() {
    this.$$idx++;
    return this;
  }

  $$iterval() {
    return this.$$hash.get(this.$$keys[this.$$idx]);
  }

  $$iterkey_s() {
    return this.$$keys[this.$$idx];
  }

  $$toBool(ctx) {
    return this.$$idx < this.$$target;
  }

  Str(ctx, _NAMED, self) {
    return this.$$iterkey_s();
  }

  key(ctx, _NAMED, self) {
    return this.$$iterkey_s();
  }

  value(ctx, _NAMED, self) {
    return this.$$iterval();
  }
};
module.exports = HashIter;
