'use strict';
var CodeRef = require('./code-ref.js');
var NQPException = require('./nqp-exception.js');

class Ctx {
  constructor(callerCtx, outerCtx, callThis, codeRefAttr) {
    this.caller = callerCtx;
    this.outer = outerCtx;
    this.callThis = callThis;
    this.codeRefAttr = codeRefAttr;
  }

  codeRef() {
    return (this.callThis instanceof CodeRef ? this.callThis : this.callThis[this.codeRefAttr]);
  }

  propagateException(exception) {
    var ctx = this;
    while (ctx) {
      if (ctx.CATCH) {
        exception.caught = ctx;
        exception.resume = false;
        ctx.exception = exception;
        ctx.unwind.ret = ctx.CATCH();
        if (exception.resume) {
          return;
        } else {
          throw ctx.unwind;
        }
      }
      ctx = ctx.caller;
    }
    throw exception.message;
  }

  catchException(exception) {
    this.exception = exception;
    this.CATCH();
  }

  rethrow(exception) {
    this.propagateException(exception);
  }

  die(msg) {
    this.propagateException(new NQPException(msg));
  }

  resume(exception) {
    exception.resume = true;
  }

  throw (exception) {
    this.propagateException(exception);
  }

  lookupDynamic(name) {
    var ctx = this;
    while (ctx) {
      if (ctx.hasOwnProperty(name)) {
        return ctx[name];
      }
      ctx = ctx.caller;
    }
    return null;
    /* Looking up of a contextual is allowed to fail,
       nqp code usually fallbacks to looking up of global */
  }

  lookupDynamicFromCaller(name) {
    var ctx = this.caller;
    while (ctx) {
      if (ctx.hasOwnProperty(name)) {
        return ctx[name];
      }
      ctx = ctx.caller;
    }
    return null;
    /* Looking up of a contextual is allowed to fail,
       nqp code usually fallbacks to looking up of global */
  }

  lookupFromSomeCaller(name) {
    var currentCallerCtx = this.caller;
    while (currentCallerCtx) {
      var currentCtx = currentCallerCtx;
      while (currentCtx) {
        if (currentCtx.hasOwnProperty(name)) {
          return currentCtx[name];
        }
        currentCtx = currentCtx.outer;
      }
      currentCallerCtx = currentCallerCtx.caller;
    }
    return null;
  }

  lookup(name) {
    var ctx = this;
    while (ctx) {
      if (ctx.hasOwnProperty(name)) {
        return ctx[name];
      }
      ctx = ctx.outer;
    }
    /* Rakudo depends on returning null when we can't lookup a lexical */
    return null;
  }

  $$atkey(key) {
    return this.lookup(key);
  }

  $$bindkey(key, value) {
    this[key] = value;
  }

  bind(name, value) {
    var ctx = this;
    while (ctx) {
      if (ctx.hasOwnProperty(name)) {
        ctx[name] = value;
        return ctx[name];
      }
      ctx = ctx.outer;
    }
    throw "Can't bind: " + name;
  }

  bindDynamic(name, value) {
    var ctx = this;
    while (ctx) {
      if (ctx.hasOwnProperty(name)) {
        ctx[name] = value;
        return ctx[name];
      }
      ctx = ctx.caller;
    }
    throw "Can't bind dynamic: " + name;
  }
};

module.exports = Ctx;
