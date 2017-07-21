const op = {};
exports.op = op;

let fibers = require('fibers');

function runTagged(tag, fiber, val, ctx) {
  let arg = val;
  while (1) {
    let control = fiber.run(arg);
    if (control.tag == tag || control.tag === Null) {
      if (control.value) {
        return control.value;
      } else {
        const cont = new Cont(tag, fiber);
        let value = control.closure.$$call(ctx, null, cont);
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

op.continuationreset = function(ctx, tag, block) {
  if (block instanceof Cont) {
    return runTagged(tag, block.fiber, Null, ctx);
  } else {
    const fiber = fibers(function() {
      return {value: block.$$call(ctx, null), tag: tag};
    });
    fiber.tag = tag;
    return runTagged(tag, fiber, Null, ctx);
  }
};


op.continuationcontrol = function(ctx, protect, tag, closure) {
  return fibers.yield({closure: closure, tag: tag});
};

op.continuationinvoke = function(ctx, cont, inject) {
  var val = inject.$$call(ctx, null);
  return runTagged(cont.tag, cont.fiber, val, ctx);
};
