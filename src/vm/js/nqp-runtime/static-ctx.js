var Iter = require('./iter.js');
class StaticCtx {
  constructor() {
    this.$$outer = null;
  }
  $$iterator() {
    return new Iter(Object.keys(this).filter(key => key.substr(0, 2) != '$$'));
  }
};

module.exports = StaticCtx;
