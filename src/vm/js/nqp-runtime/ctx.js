var CodeRef = require('./code-ref.js');
var NQPException = require('./nqp-exception.js');

function Ctx(callerCtx, outerCtx, callThis, codeRefAttr) {
  this.caller = callerCtx;
  this.outer = outerCtx;
  this.callThis = callThis;
  this.codeRefAttr = codeRefAttr;
}

Ctx.prototype.codeRef = function() {
  return (this.callThis instanceof CodeRef ? this.callThis : this.callThis[this.codeRefAttr]);
};

Ctx.prototype.propagateException = function(exception) {
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
};

Ctx.prototype.catchException = function(exception) {
  this.exception = exception;
  this.CATCH();
};

Ctx.prototype.rethrow = function(exception) {
  this.propagateException(exception);
};

Ctx.prototype.die = function(msg) {
  this.propagateException(new NQPException(msg));
};

Ctx.prototype.resume = function(exception) {
  exception.resume = true;
};

Ctx.prototype.throw = function(exception) {
  this.propagateException(exception);
};

Ctx.prototype.lookupDynamic = function(name) {
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
};

Ctx.prototype.lookupDynamicFromCaller = function(name) {
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
};

Ctx.prototype.lookupFromSomeCaller = function(name) {
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
};

Ctx.prototype.lookup = function(name) {
  var ctx = this;
  while (ctx) {
    if (ctx.hasOwnProperty(name)) {
      return ctx[name];
    }
    ctx = ctx.outer;
  }
  /* Rakudo depends on returning null when we can't lookup a lexical */
  return null;
};

Ctx.prototype.$$atkey = function(key) {
  return this.lookup(key);
};

Ctx.prototype.$$bindkey = function(key, value) {
  this[key] = value;
};

Ctx.prototype.bind = function(name, value) {
  var ctx = this;
  while (ctx) {
    if (ctx.hasOwnProperty(name)) {
      ctx[name] = value;
      return ctx[name];
    }
    ctx = ctx.outer;
  }
  throw "Can't bind: " + name;
};

Ctx.prototype.bindDynamic = function(name, value) {
  var ctx = this;
  while (ctx) {
    if (ctx.hasOwnProperty(name)) {
      ctx[name] = value;
      return ctx[name];
    }
    ctx = ctx.caller;
  }
  throw "Can't bind dynamic: " + name;
};

module.exports = Ctx;
