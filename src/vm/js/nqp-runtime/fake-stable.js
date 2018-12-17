const Null = require('./null.js');
const NQPObject = require('./nqp-object.js');
class FakeHOW extends NQPObject {
  constructor(className) {
    super();
    this.className = className;
  }

  p6$name(ctx, _NAMED, obj) {
    return this.className;
  }
}

class FakeStable {
  constructor(name) {
    this.HOW = new FakeHOW(name);
    this.WHAT = Null;
  }
};

module.exports = FakeStable;

