var op = {};
exports.op = op;

var NQPInt = require("./nqp-int.js");
exports.NQPInt = NQPInt;

function load_ops(module) {
  for (var name in module.op) {
    op[name] = module.op[name];
  }
}

var core = require('./core');
load_ops(core);
exports.hash = core.hash;
exports.slurpy_named = core.slurpy_named;
exports.named = core.named;
exports.unwrap_named = core.unwrap_named;

var io = require('./io.js');
load_ops(io);

var bignum = require('./bignum.js');
load_ops(bignum);

var nfa = require('./nfa.js');
load_ops(nfa);

var cclass = require('./cclass.js');
load_ops(cclass);

var deserialization = require('./deserialization.js');
exports.wval = deserialization.wval;
load_ops(deserialization);

var serialization = require('./serialization.js');
load_ops(serialization);

exports.CodeRef = require('./code-ref.js');

exports.CurLexpad = require('./curlexpad.js');

var Hash = require('./hash.js');

var bootstrap = require('./bootstrap.js');
module.exports.knowhowattr = bootstrap.knowhowattr;
module.exports.knowhow = bootstrap.knowhow;

var saveCtxAs;
var savedCtxs = {};

function saveCtx(where, block) {
  var old = saveCtxAs;
  saveCtxAs = where;
  block();
  saveCtxAs = old;
}

exports.load_setting = function(settingName) {
  exports.load_module(settingName + '.setting');
};

exports.load_module = function(module) {
  saveCtx(module, function() {
    module = module.replace(/::/g, '/');
    require(module);
  });
};

exports.setup_setting = function(settingName) {
  return savedCtxs[settingName + '.setting'];
};

exports.ctxsave = function(ctx) {
  savedCtxs[saveCtxAs] = ctx;
};


var LexPadHack = require('./lexpad-hack.js');

op.loadbytecode = function(ctx, file) {
  exports.load_module(file);
  ctx.bind_dynamic('$*MAIN_CTX', new LexPadHack(savedCtxs[file]));
  return file;
};

op.ctxlexpad = function(ctx) {
  // HACK
  if (ctx instanceof LexPadHack) {
    return ctx;
  } else {
    console.log("ctxlexpad NYI");
  }
};

op.lexprimspec = function(pad, key) {
  // HACK
  return 0;
};

op.ctxouter = function(hack) {
 return null;
};

exports.to_str = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg.toString();
  } else if (typeof arg == 'string') {
    return arg;
  } else if (arg === null) {
    return arg;
  } else if (arg !== undefined && arg !== null && arg.type_object_) {
    return '';
  } else if (arg.Str) {
    return arg.Str(ctx);
  } else if (arg.$$get_str) {
    return arg.$$get_str();
  } else if (arg.$$get_num) {
    return arg.$$get_num().toString();
  } else if (arg.$$get_int) {
    return arg.$$get_int().toString();
  } else {
    console.log(arg);
    throw "Can't convert to str";
  }
};

exports.to_num = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg;
  } else if (typeof arg == 'string') {
    var ret = parseFloat(arg);
    return isNaN(ret) ? 0 : ret;
  } else if (arg instanceof Array) {
    return arg.length;
  } else if (arg.type_object_) {
    // TODO - is that a correct way to do that?
    return 0;
  } else if (arg.Num) {
    return arg.Num(ctx);
  } else if (arg.$$get_num) {
    return arg.$$get_num();
  } else if (arg.$$get_int) {
    return arg.$$get_int();
  } else {
    console.log(arg);
    throw "Can't convert to num";
  }
};

exports.to_int = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg | 0;
  } else if (arg.Int) {
    return arg.Int(ctx);
  } else if (typeof arg == 'string') {
    var ret = parseInt(arg);
    return isNaN(ret) ? 0 : ret;
  } else {
    throw "Can't convert to int";
  }
};

exports.to_bool = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg ? 1 : 0;
  } else if (typeof arg == 'string') {
    return arg == '' ? 0 : 1;
  } else if (arg instanceof Array) {
    return arg.length == 0 ? 0 : 1;
  } else if (arg instanceof Hash) {
    return Object.keys(arg.content).length == 0 ? 0 : 1;
  } else if (arg === undefined || arg == null) {
    return 0;
  } else if (arg.$$to_bool) {
    return arg.$$to_bool(ctx);
  } else if (typeof arg == 'function') { 
    // needed for continuations
    return 1;
  } else {
    throw "Can't decide if arg is true";
  }
};

function Ctx(caller_ctx, outer_ctx) {
  this.caller = caller_ctx;
  this.outer = outer_ctx;
}


function NqpException(msg) {
  this.msg = msg;
}

NqpException.prototype.Str = function(ctx, _NAMED) {
  return this.msg;
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
  throw exception.msg;
};

Ctx.prototype.rethrow = function(exception) {
  exception.caught.caller.propagateException(exception);
};

Ctx.prototype.die = function(msg) {
  this.propagateException(new NqpException(msg));
};

Ctx.prototype.resume = function(exception) {
  exception.resume = true;
};

Ctx.prototype.lookup_dynamic = function(name) {
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

Ctx.prototype.lookup_dynamic_from_caller = function(name) {
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

Ctx.prototype.lookup = function(name, value) {
  var ctx = this;
  while (ctx) {
    if (ctx.hasOwnProperty(name)) {
      return ctx[name];
    }
    ctx = ctx.outer;
  }
  throw "Can't lookup: " + name;
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

Ctx.prototype.bind_dynamic = function(name, value) {
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
exports.top_context = function() {
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

function WrappedArray(array) {
  this.array = array;
}

WrappedArray.prototype.push = function(ctx, _NAMED, element) {
  this.array.push(element);
  return element;
};

WrappedArray.prototype.unshift = function(ctx, _NAMED, element) {
  this.array.unshift(element);
  return element;
};

WrappedArray.prototype.shift = function(ctx, _NAMED) {
  return this.array.shift();
};

WrappedArray.prototype.pop = function(ctx, _NAMED) {
  return this.array.pop();
};

exports.wrapObj = function(obj) {
  if (obj instanceof Array) {
    return new WrappedArray(obj);
  } else {
    return obj;
  }
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
