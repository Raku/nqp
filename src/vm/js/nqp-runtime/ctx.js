'use strict';
var CodeRef = require('./code-ref.js');
var NQPException = require('./nqp-exception.js');
var Iter = require('./iter.js');
var NQPObject = require('./nqp-object.js');
var Null = require('./null.js');
var exceptionsStack = require('./exceptions-stack.js');

class Ctx extends NQPObject {
  constructor(callerCtx, outerCtx, callThis, codeRefAttr) {
    super();
    this.$$caller = callerCtx;
    this.$$outer = outerCtx;
    this.$$callThis = callThis;
    this.$$codeRefAttr = codeRefAttr;
  }

  codeRef() {
    return (this.$$callThis instanceof CodeRef ? this.$$callThis : this.$$callThis[this.$$codeRefAttr]);
  }

  propagateException(exception) {
    var ctx = this;
    while (ctx) {
      if (ctx.$$CATCH) {
        exception.caught = ctx;
        exception.resume = false;
        ctx.exception = exception;

        exceptionsStack.push(exception);
        try {
          ctx.unwind.ret = ctx.$$CATCH();
        } finally {
          exceptionsStack.pop();
        }

        if (exception.resume) {
          return;
        } else {
          throw ctx.unwind;
        }
      }
      ctx = ctx.$$caller;
    }
    throw exception;
  }

  catchException(exception) {
    this.exception = exception;
    exceptionsStack.push(exception);
    try {
      return this.$$CATCH();
    } finally {
      exceptionsStack.pop();
    }
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
      ctx = ctx.$$caller;
    }
    return Null;
    /* Looking up of a contextual is allowed to fail,
       nqp code usually fallbacks to looking up of global */
  }

  lookupDynamicFromCaller(name) {
    var ctx = this.$$caller;
    while (ctx) {
      if (ctx.hasOwnProperty(name)) {
        return ctx[name];
      }
      ctx = ctx.$$caller;
    }
    return Null;
    /* Looking up of a contextual is allowed to fail,
       nqp code usually fallbacks to looking up of global */
  }

  lookupWithCallers(name) {
    var currentCallerCtx = this;
    while (currentCallerCtx) {
      var currentCtx = currentCallerCtx;
      while (currentCtx) {
        if (currentCtx.hasOwnProperty(name)) {
          return currentCtx[name];
        }
        currentCtx = currentCtx.$$outer;
      }
      currentCallerCtx = currentCallerCtx.$$caller;
    }
    return Null;
  }

  lookup(name) {
    var ctx = this;
    while (ctx) {
      if (ctx.hasOwnProperty(name)) {
        return ctx[name];
      }
      ctx = ctx.$$outer;
    }
    /* Rakudo depends on returning null when we can't lookup a lexical */
    return Null;
  }

  lookupFromOuter(name) {
    return this.$$outer.lookup(name);
  }

  $$atkey(key) {
    return this.lookup(key);
  }

  $$bindkey(key, value) {
    this[key] = value;
    return value;
  }

  $$existskey(key) {
    return (this.hasOwnProperty(key) ? 1 : 0);
  }

  bind(name, value) {
    var ctx = this;
    while (ctx) {
      if (ctx.hasOwnProperty(name)) {
        ctx[name] = value;
        return ctx[name];
      }
      ctx = ctx.$$outer;
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
      ctx = ctx.$$caller;
    }
    throw "Can't bind dynamic: " + name;
  }

  $$iterator() {
    return new Iter(Object.keys(this).filter(key => key.substr(0, 2) != '$$'));
  }

  $$toBool(ctx) {
    return 1;
  }
};

Ctx.prototype.$$atkey_i = Ctx.prototype.$$atkey_n = Ctx.prototype.$$atkey_s = Ctx.prototype.$$atkey;
Ctx.prototype.$$bindkey_i = Ctx.prototype.$$bindkey_n = Ctx.prototype.$$bindkey_s = Ctx.prototype.$$bindkey;

module.exports = Ctx;
