'use strict';
var op = {};
exports.op = op;

var refs = require('./refs.js');

var NQPInt = require('./nqp-int.js');
var NQPException = require('./nqp-exception.js');

var null_s = require('./null_s.js');
var Null = require('./null.js');

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

loadOps(require('./multicache.js'));

var deserialization = require('./deserialization.js');
exports.wval = deserialization.wval;
loadOps(deserialization);

var serialization = require('./serialization.js');
loadOps(serialization);

var nativecall = require('./nativecall.js');
loadOps(nativecall);

var CodeRef = require('./code-ref.js');
exports.CodeRef = CodeRef;

exports.CurLexpad = require('./curlexpad.js');

var Hash = require('./hash.js');

var Ctx = require('./ctx.js');
module.exports.Ctx = Ctx;

module.exports.CtxWithStatic = require('./ctx-with-static.js');

var bootstrap = require('./bootstrap.js');
module.exports.knowhowattr = bootstrap.knowhowattr;
module.exports.knowhow = bootstrap.knowhow;

loadOps(refs);
for (let name in refs.helpers) {
  exports[name] = refs.helpers[name];
}

exports.loaderCtx = null;

op.loadbytecode = function(ctx, file) {
  // HACK - temporary hack for rakudo-js
  if (file == '/share/nqp/lib/Perl6/BOOTSTRAP.js') {
    file = 'Perl6::BOOTSTRAP';
  }

  var loadFrom;
  if (ctx && ((loadFrom = ctx.lookupDynamic('$*LOADBYTECODE_FROM')) !== Null)) {
  } else {
    loadFrom = module;
  }

  var oldLoaderCtx = exports.loaderCtx;
  exports.loaderCtx = ctx;
  var mangled = file.replace(/::/g, '-');

  var prefixes = (process.env.NQPJS_LIB || '').split(':');
  prefixes.push('./', 'nqp-js-on-js/');
  var found = false;
  for (var prefix of prefixes) {
    try {
      loadFrom.require(prefix + mangled);
      found = true;
      break;
    } catch (e) {
      if (e.code !== 'MODULE_NOT_FOUND') {
        throw e;
      }
    }
  }
  if (!found) throw "can't find: " + file + ', looking in: ' + prefixes.join(', ') + ' from ' + loadFrom.filename;
  exports.loaderCtx = oldLoaderCtx;

  return file;
};

op.ctxlexpad = function(ctx) {
  if (ctx instanceof Ctx) {
    return ctx;
  } else {
    console.trace('ctxlexpad needs a ctx as an argument');
    throw 'ctxlexpad needs a ctx as an argument';
  }
};

op.lexprimspec = function(pad, key) {
  // HACK
  return 0;
};

op.ctxouter = function(ctx) {
  return ctx.$$outer === null ? Null : ctx.$$outer;
};

exports.toStr = function(arg_, ctx) {
  var arg = arg_.$$decont(ctx);
  if (typeof arg == 'number') {
    return arg.toString();
  } else if (typeof arg == 'string') {
    return arg;
  } else if (arg === Null) {
    return '';
  } else if (arg === null_s) {
    return arg;
  } else if (arg.typeObject_) {
    return '';
  } else if (arg.$$getStr) {
    return arg.$$getStr();
  } else if (arg.Str) {
    let ret = arg.Str(ctx, null, arg);
    if (typeof ret == 'string') return ret;
    return ret.$$getStr();
  } else if (arg.$$getNum) {
    return arg.$$getNum().toString();
  } else if (arg.$$getInt) {
    return arg.$$getInt().toString();
  } else {
    throw new NQPException("Can't convert to str");
  }
};

exports.toNum = function(arg_, ctx) {
  let arg = arg_.$$decont(ctx);
  if (typeof arg == 'number') {
    return arg;
  } else if (arg === Null) {
    return 0;
  } else if (typeof arg == 'string') {
    var ret = parseFloat(arg);
    return isNaN(ret) ? 0 : ret;
  } else if (arg._STable && arg._STable.methodCache && arg._STable.methodCache.Num) {
    var result = arg.Num(ctx, null, arg);
    if (result.$$getNum) {
      return result.$$getNum();
    } else if (result.$$numify) {
      return result.$$numify();
    } else if (typeof result == 'number') {
      return result;
    } else {
      console.trace("we can't numify result of toNum");
      process.exit();
    }
  } else if (arg.typeObject_) {
    return 0;
  } else if (arg.$$getNum) {
    return arg.$$getNum();
  } else if (arg.$$getInt) {
    return arg.$$getInt();
  } else if (arg.$$numify) {
    return arg.$$numify();
  } else {
    console.log(arg);
    throw "Can't convert to num";
  }
};

exports.toInt = function(arg, ctx) {
  return (exports.toNum(arg, ctx) | 0);
};

exports.intToObj = function(hllName, i) {
  var currentHLL = hll.hllConfigs[hllName];
  var type;
  if (currentHLL) type = currentHLL.get('int_box');
  if (!type) {
    return new NQPInt(i);
  }
  else {
    var repr = type._STable.REPR;
    var obj = repr.allocate(type._STable);
    obj.$$setInt(i);
    return obj;
  }
};

exports.numToObj = function(hllName, n) {
  var currentHLL = hll.hllConfigs[hllName];
  var type;
  if (currentHLL) type = currentHLL.get('num_box');
  if (!type) {
    return n;
  }
  else {
    var repr = type._STable.REPR;
    var obj = repr.allocate(type._STable);
    obj.$$setNum(n);
    return obj;
  }
};

exports.strToObj = function(hllName, s) {
  var currentHLL = hll.hllConfigs[hllName];
  var type;
  if (currentHLL) type = currentHLL.get('str_box');
  if (!type) {
    return s;
  }
  else {
    var repr = type._STable.REPR;
    var obj = repr.allocate(type._STable);
    obj.$$setStr(s);
    return obj;
  }
};

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

exports.NYI = function(msg) {
  console.trace(msg);
  return null;
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

exports.setCodeRefHLL = function(codeRefs, hllName) {
  for (var i = 0; i < codeRefs.length; i++) {
    codeRefs[i].hll = hll.hllConfigs[hllName];
  }
};


/* TODO - make monkey patching builtin things optional */

Number.prototype.$$decont = function(ctx) {
  return this;
};

Number.prototype.$$toBool = function(ctx) {
  return this === 0 ? 0 : 1;
};

Number.prototype.$$istype = function(ctx, type) {
  return 0;
};

Number.prototype.$$can = function(ctx, name) {
  return 0;
};

String.prototype.$$decont = function(ctx) {
  return this;
};

String.prototype.$$toBool = function(ctx) {
  return this === '' ? 0 : 1;
};

String.prototype.$$can = function(ctx, name) {
  return 0;
};

String.prototype.$$istype = function(ctx, type) {
  return 0;
};

// needed for continuations
Function.prototype.$$toBool = function(ctx) {
  return 1;
};


exports.null_s = null_s;
exports.Null = Null;

exports.list = hll.list;

exports.slurpyArray = hll.slurpyArray;
exports.createArray = require('./BOOT').createArray;

exports.dumpObj = function(obj) {
  console.log(typeof obj);
  if (typeof obj === 'object') {
    if (obj._STable) {
      console.log(obj._STable.REPR.name);
      console.log(obj._STable.HOW.name(null, null, obj._STable.HOW, obj));
    } else {
      console.log('no STable', obj.constructor.name);
    }
  } else {
    console.log(obj);
  }
};
