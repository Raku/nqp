var NQPObject = require('./nqp-object.js');

class Capture extends NQPObject {
  constructor(named, pos) {
    super();
    this.pos = pos;
    this.named = named;
  }
  $$clone() {
    return this;
  }
};

module.exports = Capture;
