'use strict';
const op = {};
exports.op = op;

const Null = require('./null.js');
const Ctx = require('./ctx.js');

class CtxJustReset extends Ctx {
  $$skipHandlers() {
    return this.$$caller.$$skipHandlers();
  }
};

function findReset(tag, ctx) {
  /* TODO - tag */
  let search = ctx; 
  while (search) {
    if (search instanceof CtxJustReset && (tag === Null || search.$$tag == tag)) {
      return search;
    }
    search = search.$$caller; 
  }
  console.trace(`Can't find reset`);
}

op.continuationreset = function(ctx, tag, block) {
  return new Promise(function(resolve, reject) {
    if (block instanceof Cont) {
      block.resetCtx.$$outside = resolve;
      block.inside(Null);
    } else {
      let newCtx = new CtxJustReset(ctx, ctx, null);
      newCtx.$$outside = resolve;
      newCtx.$$tag = tag;
      block.$$call(newCtx, null).then(value => newCtx.$$outside(value), reject);
    }
  });
};

class Cont {
  constructor(ctx, inside, resetCtx) {
    this.ctx = ctx;
    this.inside = inside;
    this.resetCtx = resetCtx;
  }

  $$decont(ctx) {
    return this;
  }

  $$toBool(ctx) {
    return 1;
  }
};

op.continuationcontrol = function(ctx, protect, tag, closure) {
  return new Promise(function(resolve, reject) {
    const resetCtx = findReset(tag, ctx);
    const cont = new Cont(ctx, resolve, resetCtx);
    closure.$$call(protect ? resetCtx : resetCtx.$$caller, null, cont).then(value => resetCtx.$$outside(value), reject);
  });
};

op.continuationinvoke = function(ctx, cont, inject) {
  return new Promise(function(resolve, reject) {
    cont.resetCtx.$$caller = ctx;
    cont.resetCtx.$$outside = resolve;
    inject.$$call(cont.ctx, null).then(value => {
      cont.inside(value);
    }, reject);
  });
};
