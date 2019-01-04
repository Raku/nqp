'use strict';
const op = {};
exports.op = op;

const Null = require('./null.js');
const Ctx = require('./ctx.js');
const nqp = require('./runtime.js');

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

op.continuationreset = function(ctx, currentHLL, tag, block) {
  return new Promise(function(resolve, reject) {
    if (block instanceof Cont) {
      block.resetCtx.$$outsideResolve = resolve;
      block.resetCtx.$$outsideReject = reject;
      block.inside(Null);
    } else {
      const newCtx = new CtxJustReset(ctx, ctx, null);
      newCtx.$$outsideResolve = resolve;
      newCtx.$$outsideReject = reject;
      newCtx.$$tag = tag;
      block.$$call(newCtx, null).then(
        value => newCtx.$$outsideResolve(nqp.retval(currentHLL, value)),
        error => newCtx.$$outsideReject(error));
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

op.continuationcontrol = function(ctx, currentHLL, protect, tag, closure) {
  return new Promise(function(resolve, reject) {
    const resetCtx = findReset(tag, ctx);
    const cont = new Cont(ctx, resolve, resetCtx);
    closure.$$call(protect ? resetCtx : resetCtx.$$caller, null, cont).then(value => resetCtx.$$outsideResolve(nqp.retval(currentHLL, value)), reject);
  });
};

op.continuationinvoke = function(ctx, currentHLL, cont, inject) {
  return new Promise(function(resolve, reject) {
    cont.resetCtx.$$caller = ctx;
    cont.resetCtx.$$outsideResolve = resolve;
    cont.resetCtx.$$outsideReject = reject;

    inject.$$call(cont.ctx, null).then(value => {
      cont.inside(nqp.retval(currentHLL, value));
    }, reject);
  });
};
