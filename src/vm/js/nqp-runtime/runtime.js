var op = {};
exports.op = op;

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

var io = require('./io.js');
load_ops(io);

var bignum = require('./bignum.js');
load_ops(bignum);

var nfa = require('./nfa.js');
load_ops(nfa);

var deserialization = require('./deserialization.js');
exports.wval = deserialization.wval;
load_ops(deserialization);

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
  saveCtx(settingName, function() {
    require(settingName+".setting");
  });
};

exports.load_module = function(module) {
  saveCtx(module, function() {
    require(module);
  });
};

exports.setup_setting = function(settingName) {
  return savedCtxs[settingName];
};

exports.ctxsave = function(ctx) {
    savedCtxs[saveCtxAs] = ctx;
};

exports.to_str = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg.toString();
  } else if (typeof arg == 'string') {
    return arg;
  } else if (arg !== undefined && arg !== null && arg.type_object_) {
    return "";
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
  } else {
    console.log(arg);
    throw "Can't convert to num";
  }
};

exports.to_int = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg | 0;
  } else {
    throw "Can't convert to int";
  }
};

exports.to_bool = function(arg, ctx) {
  if (typeof arg == 'number') {
    return arg ? 1 : 0;
  } else if (typeof arg == 'string') {
    return arg == '' || arg == '0' ? 0 : 1;
  } else if (arg instanceof Array) {
    return arg.length == 0 ? 0 : 1;
  } else if (arg instanceof Hash) {
    return Object.keys(arg).length == 0 ? 0 : 1;
  } else if (arg === undefined || arg == null) {
    return 0;
  } else if (arg.$$to_bool) {
    return arg.$$to_bool(ctx);
  } else {
    throw "Can't decide if arg is true";
  }
};

function Ctx(caller_ctx, outer_ctx) {
  this.caller = caller_ctx;
  this.outer = outer_ctx;
};

Ctx.prototype.die = function(msg) {
  throw msg;
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

