'use strict';
var CodeRef = require('./code-ref.js');
var NQPException = require('./nqp-exception.js');
var NQPExceptionWithCtx = require('./nqp-exception-with-ctx.js');
var Iter = require('./iter.js');
var NQPObject = require('./nqp-object.js');
var Null = require('./null.js');
var exceptionsStack = require('./exceptions-stack.js');

var BOOT = require('./BOOT.js');

const NEXT = 4;
const REDO = 8;
const LAST = 16;
const RETURN = 32;
const TAKE = 128;
const WARN = 256;
const SUCCEED = 512;
const PROCEED = 1024;
const LABELED = 4096;
const AWAIT = 8192;
const EMIT = 16384;
const DONE = 32768;

let categoryIDs = {
  NEXT: NEXT,
  REDO: REDO,
  LAST: LAST,
  RETURN: RETURN,
  TAKE: TAKE,
  WARN: WARN,
  SUCCEED: SUCCEED,
  PROCEED: PROCEED,
  AWAIT: AWAIT,
  EMIT: EMIT,
  DONE: DONE
};

let categoryToName = {};
for (let name in categoryIDs) {
  categoryToName[categoryIDs[name]] = name;
}

class ResumeException {
  constructor(exception) {
    this.exception = exception;
  }
};

class Ctx extends NQPObject {
  constructor(callerCtx, outerCtx, callThis) {
    super();
    this.$$caller = callerCtx;
    this.$$outer = outerCtx;
    this.$$callThis = callThis;
  }

  codeRef() {
    return this.$$callThis;
  }

  last() {
    this.controlException(LAST);
  }

  lastLabeled(label) {
    this.controlExceptionLabeled(label, LAST);
  }

  next() {
    this.controlException(NEXT);
  }

  nextLabeled(label) {
    this.controlExceptionLabeled(label, NEXT);
  }

  redo() {
    this.controlException(REDO);
  }

  redoLabeled(label) {
    this.controlExceptionLabeled(label, REDO);
  }

  controlException(category) {
    let exType = BOOT.Exception;
    let exception = exType._STable.REPR.allocate(exType._STable);
    exception.$$category = category;
    this.propagateControlException(exception);
  }

  controlExceptionLabeled(label, category) {
    let exType = BOOT.Exception;
    let exception = exType._STable.REPR.allocate(exType._STable);
    exception.$$category = category | LABELED;
    exception.$$payload = label;
    this.propagateControlException(exception);
  }

  propagateControlException(exception) {
    let handler = '$$' + categoryToName[exception.$$category & ~LABELED];
    let labeled = exception.$$category & LABELED;

    var ctx = this;

    while (ctx) {
      if ((ctx[handler] || ctx.$$CONTROL) && (!labeled || ctx.$$label === exception.$$payload)) {
        exception.caught = ctx;
        ctx.exception = exception;

        exceptionsStack.push(exception);
        try {
          if (ctx[handler]) {
            ctx.unwind.ret = ctx[handler]();
          } else {
            ctx.unwind.ret = ctx.$$CONTROL();
          }
        } catch (e) {
          if (e instanceof ResumeException && e.exception === exception) {
            return;
          } else {
            throw e;
          }
        } finally {
          exceptionsStack.pop();
        }

        throw ctx.unwind;
      }
      ctx = ctx.$$caller;
    }

    throw exception;
  }

  propagateException(exception) {
    if (exception.$$category) {
      this.propagateControlException(exception);
      return;
    }

    var ctx = this;

    while (ctx) {
      if (ctx.$$CATCH) {
        exception.caught = ctx;
        ctx.exception = exception;

        exceptionsStack.push(exception);
        try {
          ctx.unwind.ret = ctx.$$CATCH();
        } catch (e) {
          if (e instanceof ResumeException && e.exception === exception) {
            return;
          } else {
            throw e;
          }
        } finally {
          exceptionsStack.pop();
        }

        throw ctx.unwind;
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
    this.propagateException(new NQPExceptionWithCtx(msg, this));
  }

  resume(exception) {
    throw new ResumeException(exception);
  }

  throw (exception) {
    this.propagateException(exception);
  }

  throwpayloadlexcaller(category, payload) {
    let ctx = this.$$caller;
    let isThunkOrCompilerStub = code => {return (code.staticCode.isThunk || code.isCompilerStub)};
    while (ctx && isThunkOrCompilerStub(ctx.codeRef())) {
      ctx = ctx.$$caller;
    }

    ctx.throwpayloadlex(category, payload);
  }

  throwpayloadlex(category, payload) {
    let exType = BOOT.Exception;
    let exception = exType._STable.REPR.allocate(exType._STable);
    exception.$$category = category;
    exception.$$payload = payload;
    let handler = '$$' + categoryToName[category];

    let ctx = this;

    while (ctx) {
      if (ctx[handler] || ctx.$$CONTROL) {
        exception.caught = ctx;
        ctx.exception = exception;

        exceptionsStack.push(exception);
        try {
          if (ctx[handler]) {
            ctx.unwind.ret = ctx[handler]();
          } else {
            ctx.unwind.ret = ctx.$$CONTROL();
          }
        } catch (e) {
          if (e instanceof ResumeException && e.exception === exception) {
            return;
          } else {
            throw e;
          }
        } finally {
          exceptionsStack.pop();
        }

        throw ctx.unwind;
      }
      ctx = ctx.$$outer;
    }
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

  $$getHLL() {
    var ctx = this;
    while (ctx) {
      if (ctx.$$hll) {
        return ctx.$$hll;
      }
      ctx = ctx.$$outer;
    }
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

  $$skipHandlers() {
    return this;
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
    return new CtxIter(this);
  }

  $$elems() {
    return Object.keys(this).filter(key => key.substr(0, 2) != '$$').length;
  }

  $$toBool(ctx) {
    return 1;
  }
};

class CtxIter extends NQPObject {
  constructor(ctx) {
    super();
    this.$$ctx = ctx;
    this.$$keys = Object.keys(ctx).filter(key => key.substr(0, 2) != '$$');
    this.$$target = this.$$keys.length - 1;
    this.$$idx = -1;
  }

  $$shift() {
    this.$$idx++;
    return this;
  }

  $$iterval() {
    return this.$$ctx[this.$$keys[this.$$idx]];
  }

  $$iterkey_s() {
    return this.$$keys[this.$$idx];
  }

  $$toBool(ctx) {
    return this.$$idx < this.$$target;
  }

  Str(ctx, _NAMED, self) {
    return this.$$iterkey_s();
  }

  key(ctx, _NAMED, self) {
    return this.$$iterkey_s();
  }

  value(ctx, _NAMED, self) {
    return this.$$iterval();
  }
};

Ctx.prototype.$$atkey_i = Ctx.prototype.$$atkey_n = Ctx.prototype.$$atkey_s = Ctx.prototype.$$atkey;
Ctx.prototype.$$bindkey_i = Ctx.prototype.$$bindkey_n = Ctx.prototype.$$bindkey_s = Ctx.prototype.$$bindkey;

module.exports = Ctx;
