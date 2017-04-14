'use strict';
var Ctx = require('./ctx.js');

class CtxJustHandler extends Ctx {

  $$skipHandlers() {
    return this.$$caller.$$skipHandlers();
  }
};

module.exports = CtxJustHandler;
