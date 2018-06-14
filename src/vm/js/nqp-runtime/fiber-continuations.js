const op = {};
exports.op = op;

const fibers = require('fibers');
const nqp = require('./runtime.js');

function runTagged(currentHLL, tag, fiber, val, ctx) {
  let arg = val;
  while (1) {
    const control = fiber.run(arg);
    if (control.tag == tag || control.tag === Null) {
      if (control.value) {
        return control.value;
      } else {
        const cont = new Cont(tag, fiber);
        const value = nqp.retval(currentHLL, control.closure.$$call(ctx, null, cont));
        return value;
      }
    } else {
      arg = fibers.yield(control);
    }
  }
}

class Cont {
  constructor(tag, fiber) {
    this.tag = tag;
    this.fiber = fiber;
  }

  $$decont(ctx) {
    return this;
  }

  $$toBool(ctx) {
    return 1;
  }
};

op.continuationreset = function(ctx, currentHLL, tag, block) {
  if (block instanceof Cont) {
    return runTagged(currentHLL, tag, block.fiber, Null, ctx);
  } else {
    const fiber = fibers(function() {
      return {value: nqp.retval(currentHLL, block.$$call(ctx, null)), tag: tag};
    });
    fiber.tag = tag;
    return runTagged(currentHLL, tag, fiber, Null, ctx);
  }
};


op.continuationcontrol = function(ctx, currentHLL, protect, tag, closure) {
  return nqp.retval(currentHLL, fibers.yield({closure: closure, tag: tag}));
};

op.continuationinvoke = function(ctx, currentHLL, cont, inject) {
  const val = nqp.retval(currentHLL, inject.$$call(ctx, null));
  return runTagged(currentHLL, cont.tag, cont.fiber, val, ctx);
};
