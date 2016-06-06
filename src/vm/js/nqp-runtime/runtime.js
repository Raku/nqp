var op = {};
exports.op = op;

var NQPInt = require('./nqp-int.js');
var NQPException = require('./nqp-exception.js');
exports.NQPInt = NQPInt;

function loadOps(module) {
  for (var name in module.op) {
    op[name] = module.op[name];
  }
}

exports.loadOps = loadOps;

var core = require('./core');
loadOps(core);
exports.hash = core.hash;
exports.slurpyNamed = core.slurpyNamed;
exports.named = core.named;
exports.unwrapNamed = core.unwrapNamed;

exports.EvalResult = core.EvalResult;

var io = require('./io.js');
loadOps(io);

var bignum = require('./bignum.js');
loadOps(bignum);

var nfa = require('./nfa.js');
loadOps(nfa);

var cclass = require('./cclass.js');
loadOps(cclass);

var hll = require('./hll.js');
loadOps(hll);

var deserialization = require('./deserialization.js');
exports.wval = deserialization.wval;
loadOps(deserialization);

var serialization = require('./serialization.js');
loadOps(serialization);

var nativecall = require('./nativecall.js');
loadOps(nativecall);

exports.CodeRef = require('./code-ref.js');

exports.CurLexpad = require('./curlexpad.js');

var Hash = require('./hash.js');

var bootstrap = require('./bootstrap.js');
module.exports.knowhowattr = bootstrap.knowhowattr;
module.exports.knowhow = bootstrap.knowhow;

module.exports.NQPArray = require('./array.js');

var saveCtxAs;
var savedCtxs = {};

function saveCtx(where, block) {
  var old = saveCtxAs;
  saveCtxAs = where;
  block();
  saveCtxAs = old;
}

exports.loadModule = function(module, helper) {
  saveCtx(module, function() {
    module = module.replace(/::/g, '/');
    if (helper) {
      helper();
    } else {
      require(module);
    }
  });
};

exports.loadSetting = exports.loadModule;

exports.setupSetting = function(settingName) {
  return savedCtxs[settingName + '.setting'];
};

exports.ctxsave = function(ctx) {
  savedCtxs[saveCtxAs] = ctx;
};


var LexPadHack = require('./lexpad-hack.js');

op.loadbytecode = function(ctx, file) {
  // HACK - temporary hack for rakudo-js
  if (file == '/share/nqp/lib/Perl6/BOOTSTRAP.js') {
    file = 'Perl6::BOOTSTRAP';
  }
  exports.loadModule(file);
  // HACK - ctx is sometimes NULL on rakudo-js
  if (ctx) ctx.bindDynamic('$*MAIN_CTX', new LexPadHack(savedCtxs[file]));
  return file;
};

op.ctxlexpad = function(ctx) {
  // HACK
  if (ctx instanceof LexPadHack) {
    return ctx;
  } else {
    console.log('ctxlexpad NYI');
  }
};

op.lexprimspec = function(pad, key) {
  // HACK
  return 0;
};

op.ctxouter = function(hack) {
  return null;
};

exports.toStr = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg.toString();
  } else if (typeof arg == 'string') {
    return arg;
  } else if (arg === null) {
    return arg;
  } else if (arg !== undefined && arg !== null && arg.typeObject_) {
    return '';
  } else if (arg.Str) {
    return arg.Str(ctx);
  } else if (arg.$$getStr) {
    return arg.$$getStr();
  } else if (arg.$$getNum) {
    return arg.$$getNum().toString();
  } else if (arg.$$getInt) {
    return arg.$$getInt().toString();
  } else {
    throw new NQPException("Can't convert to str");
  }
};

exports.toNum = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg;
  } else if (typeof arg == 'string') {
    var ret = parseFloat(arg);
    return isNaN(ret) ? 0 : ret;
  } else if (arg.typeObject_) {
    // TODO - is that a correct way to do that?
    return 0;
  } else if (arg.Num) {
    return arg.Num(ctx);
  } else if (arg.$$getNum) {
    return arg.$$getNum();
  } else if (arg.$$getInt) {
    return arg.$$getInt();
  } else {
    console.log(arg);
    throw "Can't convert to num";
  }
};

exports.toInt = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg | 0;
  } else if (arg.Int) {
    return arg.Int(ctx);
  } else if (typeof arg == 'string') {
    var ret = parseInt(arg);
    return isNaN(ret) ? 0 : ret;
  } else if (arg.typeObject_) {
    return 0;
  } else {
    throw "Can't convert to int";
  }
};

exports.toBool = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg ? 1 : 0;
  } else if (typeof arg == 'string') {
    return arg == '' ? 0 : 1;
  } else if (arg === undefined || arg == null) {
    return 0;
  } else if (arg.$$toBool) {
    return arg.$$toBool(ctx);
  } else if (typeof arg == 'function') {
    // needed for continuations
    return 1;
  } else {
    throw "Can't decide if arg is true";
  }
};

function Ctx(callerCtx, outerCtx, codeRef) {
  this.caller = callerCtx;
  this.outer = outerCtx;
  this.codeRef = codeRef;
}



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

exports.Ctx = Ctx;

if (!Math.imul) {
  /* Polyfill from:
  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/imul
  */
  Math.imul = function(a, b) {
    var ah = (a >>> 16) & 0xffff;
    var al = a & 0xffff;
    var bh = (b >>> 16) & 0xffff;
    var bl = b & 0xffff;
    // the shift by 0 fixes the sign on the high part
    // the final |0 converts the unsigned value into a signed value
    return ((al * bl) + (((ah * bl + al * bh) << 16) >>> 0) | 0);
  };
}

// Placeholder
exports.topContext = function() {
  return null;
};

// helper for regexs
exports.regexPeek = function(bstack, mark) {
  var ptr = bstack.length;
  while (ptr >= 0) {
    if (bstack[ptr] == mark)
      break;
    ptr -= 4;
  }
  return ptr;
};

exports.regexCommit = function(bstack, mark) {
  var ptr = bstack.length;
  var caps;
  if (ptr > 0) {
    caps = bstack[ptr - 1];
  }
  else {
    caps = 0;
  }

  while (ptr >= 0) {
    if (bstack[ptr] == mark) {
      break;
    }
    ptr -= 4;
  }

  bstack.length = ptr;

  if (caps > 0) {
    if (ptr > 0) {
      /* top mark frame is an autofail frame, reuse it to hold captures */
      if (bstack[ptr - 3] < 0) {
        bstack[ptr - 1] = caps;
      }
    }

    /* push a new autofail frame onto bstack to hold the captures */
    bstack.push(0, -1, 0, caps);
  }
};

exports.Last = function(label) {
  this.label = label;
};
exports.Redo = function(label) {
  this.label = label;
};
exports.Next = function(label) {
  this.label = label;
};

/* For debugging purposes */
exports.dumpObj = function(obj) {
  var seen = [];

  return JSON.stringify(obj, function(key, value) {
    if (key == '_SC') return undefined;
    for (var i = 0; i < seen.length; i++) {
      if (typeof value !== 'string' && typeof value !== 'number' && seen[i] === value) return 'circular';
    }
    seen.push(value);
    return value;
  }, '  ');
};

exports.NYI = function(msg) {
  console.trace(msg);
  return null;
};

/* HACK - needed until we handle types on attributes */
exports.intAttrHack = function(attrValue) {
  if (attrValue instanceof exports.NQPInt) {
    return attrValue.value;
  } else {
    return attrValue;
  }
};

exports.args = function(module) {
  return require.main === module ? process.argv.slice(1) : [];
};

function runCPS(thunk_) {
  var thunk = thunk_;
  while (thunk) {
    thunk = thunk();
  }
}

exports.runCPS = runCPS;
exports.NQPException = NQPException;

exports.wrapException = function(e) {
  console.log(e);
  return new NQPException(e.message);
};
