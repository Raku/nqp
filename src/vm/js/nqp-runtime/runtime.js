'use strict';
const op = {};
exports.op = op;

const refs = require('./refs.js');

const NQPInt = require('./nqp-int.js');
const NQPNum = require('./nqp-num.js');
const NQPStr = require('./nqp-str.js');

const NQPException = require('./nqp-exception.js');

const nullStr = require('./null_s.js');
const Null = require('./null.js');

const Capture = require('./capture.js');

const StaticCtx = require('./static-ctx.js');

const BOOT = require('./BOOT.js');

const nativeArgs = require('./native-args.js');

const NativeIntArg = exports.NativeIntArg = nativeArgs.NativeIntArg;
const NativeUIntArg = exports.NativeUIntArg = nativeArgs.NativeUIntArg;
const NativeNumArg = exports.NativeNumArg = nativeArgs.NativeNumArg;
const NativeStrArg = exports.NativeStrArg = nativeArgs.NativeStrArg;

const NativeNumRet = exports.NativeNumRet = nativeArgs.NativeNumRet;
const NativeUIntRet = exports.NativeUIntRet = nativeArgs.NativeUIntRet;

const stripMarks = require('./strip-marks.js');
const foldCase = require('fold-case');
const graphemes = require('./graphemes.js');

const fs = require('fs');


exports.NQPInt = NQPInt;
exports.NQPNum = NQPNum;
exports.NQPStr = NQPStr;

function loadOps(module) {
  for (const name in module.op) {
    op[name] = module.op[name];
  }
}

exports.loadOps = loadOps;

const core = require('./core');
loadOps(core);
exports.hash = core.hash;
exports.slurpyNamed = core.slurpyNamed;
exports.slurpyPos = core.slurpyPos;
exports.named = core.named;
exports.unwrapNamed = core.unwrapNamed;
exports.arg = core.arg;

exports.intToObj = core.intToObj;
exports.numToObj = core.numToObj;
exports.strToObj = core.strToObj;

exports.EvalResult = core.EvalResult;

const io = require('./io.js');
loadOps(io);

const bignum = require('./bignum.js');
loadOps(bignum);

const nfa = require('./nfa.js');
loadOps(nfa);

const cclass = require('./cclass.js');
loadOps(cclass);

const hll = require('./hll.js');
loadOps(hll);

loadOps(require('./multicache.js'));

const deserialization = require('./deserialization.js');
exports.wval = deserialization.wval;
loadOps(deserialization);

const serialization = require('./serialization.js');
loadOps(serialization);

const nativecall = require('./nativecall.js');
loadOps(nativecall);

const CodeRef = require('./code-ref.js');
exports.CodeRef = CodeRef;

exports.CodeRefWithStateVars = require('./code-ref-with-statevars.js');

exports.CurLexpad = require('./curlexpad.js');

const Ctx = require('./ctx.js');
module.exports.Ctx = Ctx;

module.exports.CtxWithStatic = require('./ctx-with-static.js');
module.exports.CtxJustHandler = require('./ctx-just-handler.js');

const bootstrap = require('./bootstrap.js');
module.exports.knowhowattr = bootstrap.knowhowattr;
module.exports.knowhow = bootstrap.knowhow;

loadOps(refs);
for (const name in refs.helpers) {
  exports[name] = refs.helpers[name];
}

const coercions = require('./coercions');

exports.strToNum = coercions.strToNum;
exports.numToStr = coercions.numToStr;

let libpath = [];
exports.libpath = function(paths) {
  libpath = paths.map(path => typeof path === 'string' ? path : path.$$getStr());
};

exports.loaderCtx = null;

op.loadbytecode = function(ctx, file) {
  // HACK - temporary hack for rakudo-js
  if (file == '/nqp/lib/Perl6/BOOTSTRAP.js') {
    file = 'Perl6::BOOTSTRAP';
  }

  let loadFrom;
  if (ctx && ((loadFrom = ctx.lookupDynamic('$*LOADBYTECODE_FROM')) !== Null)) {
  } else {
    loadFrom = module;
  }

  const oldLoaderCtx = exports.loaderCtx;
  exports.loaderCtx = ctx;
  const mangled = file.replace(/::/g, '-');

  const prefixes = libpath.slice();
  prefixes.push('./', './nqp-js-on-js/');
  let found = false;
  for (const prefix of prefixes) {
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
  if (!found) throw `can't find: ${file}, looking in: ${prefixes.join(', ')} from ${loadFrom.filename}`;
  exports.loaderCtx = oldLoaderCtx;

  return file;
};

op.loadbytecodefh = function(ctx, fh, file) {
  const oldLoaderCtx = exports.loaderCtx;
  exports.loaderCtx = ctx;
  const js = fs.readFileSync(fh.fd, {encoding: 'utf8'});
  eval(js);
  exports.loaderCtx = oldLoaderCtx;
};

op.ctxlexpad = function(ctx) {
  if (ctx instanceof Ctx) {
    return ctx;
  } else if (ctx instanceof StaticCtx) {
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

exports.currentDispatcherFor = undefined;

op.setdispatcherfor = function(dispatcher, dispatcherFor) {
  exports.currentDispatcher = dispatcher;
  let spec;
  if (dispatcherFor instanceof CodeRef) {
    exports.currentDispatcherFor = dispatcherFor;
  } else if (spec = dispatcherFor._STable.invocationSpec) {
    if (spec.classHandle) {
      exports.currentDispatcherFor = dispatcherFor.$$getattr(spec.classHandle, spec.attrName);
    } else {
      throw 'setdispatcherfor needs simple invokable target';
    }
  } else {
    throw 'setdispatcherfor needs invokable target';
  }
};

exports.toStr = function(arg_, ctx) {
  const arg = arg_.$$decont(ctx);

  if (arg instanceof NQPStr) {
    return arg.value;
  } else if (arg === Null) {
    return '';
  } else if (arg === nullStr) {
    return arg;
  } else if (arg.typeObject_) {
    return '';
  } else if (arg.$$getStr) {
    return arg.$$getStr();
  } else if (arg.Str) {
    const ret = arg.Str(ctx, null, arg); // eslint-disable-line new-cap
    return (typeof ret === 'string' ? ret : ret.$$decont(ctx).$$getStr());
  } else if (arg.$$getNum) {
    return coercions.numToStr(arg.$$getNum());
  } else if (arg.$$getInt) {
    return arg.$$getInt().toString();
  } else {
    throw new NQPException(`Can't convert to str`);
  }
};


exports.toNum = function(arg_, ctx) {
  const arg = arg_.$$decont(ctx);
  if (arg === Null) {
    return 0;
  } else if (arg instanceof NQPStr) {
    return coercions.strToNum(arg.value);
  } else if (arg._STable && arg._STable.methodCache && arg._STable.methodCache.get('Num')) {
    const result = arg.Num(ctx, null, arg); // eslint-disable-line new-cap
    if (typeof result === 'number') {
      return result;
    } else if (result.$$getNum) {
      return result.$$getNum();
    } else if (result.$$numify) {
      return result.$$numify();
    } else {
      throw new NQPException('we can\'t numify result of toNum');
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
    throw 'Can\'t convert to num';
  }
};

exports.toInt = function(arg, ctx) {
  return (exports.toNum(arg, ctx) | 0);
};

exports.retval = function(currentHLL, arg) {
  if (typeof arg === 'number') {
    return core.intToObj(currentHLL, arg);
  } else if (typeof arg === 'string' || arg === nullStr) {
    return core.strToObj(currentHLL, arg);
  } else if (arg instanceof NativeNumRet) {
    return core.numToObj(currentHLL, arg.value);
  } else if (arg instanceof NativeUIntRet) {
    return core.intToObj(currentHLL, arg.value);
  } else {
    return arg;
  }
};

exports.retval_bool = function(ctx, arg) {
  if (typeof arg === 'number') {
    return arg === 0 ? 0 : 1;
  } else if (typeof arg === 'string') {
    return arg === '' ? 0 : 1;
  } else if (arg === nullStr) {
    return 0;
  } else {
    return arg.$$toBool(ctx);
  }
};

exports.retval_i = function(ctx, arg) {
  if (typeof arg === 'number') {
    return arg;
  } else if (typeof arg === 'string' || arg === nullStr) {
    return coercions.strToNum(arg)|0;
  } else {
    return exports.toInt(arg, ctx);
  }
};


exports.retval_n = function(ctx, arg) {
  if (typeof arg === 'number') {
    return arg;
  } else if (typeof arg === 'string' || arg === nullStr) {
    return coercions.strToNum(arg);
  } else {
    return exports.toNum(arg, ctx);
  }
};

exports.retval_s = function(ctx, arg) {
  if (typeof arg === 'string' || arg === nullStr) {
    return arg;
  } else if (typeof arg === 'number') {
    return arg.toString();
  } else {
    return exports.toStr(arg, ctx);
  }
};

// Placeholder
exports.topContext = function() {
  return null;
};

// helper for regexs
exports.regexPeek = function(bstack, mark) {
  let ptr = bstack.length;
  while (ptr >= 0) {
    if (bstack[ptr] == mark) break;
    ptr -= 4;
  }
  return ptr;
};

exports.regexCommit = function(bstack, mark) {
  let ptr = bstack.length;
  let caps;
  if (ptr > 0) {
    caps = bstack[ptr - 1];
  } else {
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

exports.NYI = function(msg) {
  console.trace(msg);
  return null;
};

exports.args = function(module) {
  return require.main === module ? process.argv.slice(1).map(arg => new NativeStrArg(arg)) : [];
};

exports.NQPException = NQPException;

exports.wrapException = function(e) {
  return new NQPException('<<wrapped exception:\n' + e.stack + '\n>>\n');
};

exports.setCodeRefHLL = function(codeRefs, currentHLL, filename) {
  for (let i = 0; i < codeRefs.length; i++) {
    codeRefs[i].hll = currentHLL;
    codeRefs[i].filename = filename;
  }
};

exports.null_s = nullStr;
exports.Null = Null;

exports.list = hll.list;


exports.list_i = function lowlevelList(array) {
  const stable = BOOT.IntArray._STable;
  return stable.REPR.allocateFromArray(stable, array);
};

exports.list_n = function lowlevelList(array) {
  const stable = BOOT.NumArray._STable;
  return stable.REPR.allocateFromArray(stable, array);
};

exports.list_s = function lowlevelList(array) {
  const stable = BOOT.StrArray._STable;
  return stable.REPR.allocateFromArray(stable, array);
};

exports.slurpyArray = hll.slurpyArray;
exports.createArray = require('./BOOT').createArray;
exports.createIntArray = require('./BOOT').createIntArray;

exports.dumpObj = function(obj) {
  console.log(typeof obj);
  if (typeof obj === 'object') {
    if (obj._STable) {
      console.log(obj._STable.REPR.name);
      const name = obj._STable.HOW.name(null, null, obj._STable.HOW, obj);
      console.log(name instanceof NQPStr ? name.value : name);
    } else {
      console.log('no STable', obj.constructor.name);
    }
  } else {
    console.log(obj);
  }
};

const containerSpecs = require('./container-specs.js');
exports.extraRuntime = function(lang, path) {
  if (lang != 'perl6') throw 'only loading extra runtime for perl 6 is supported';
  const runtime = require(path);
  if (!runtime.loaded) {
    runtime.loaded = true;
    runtime.load(exports, CodeRef, Capture, containerSpecs);
  }
};

exports.paramcheckfailed = function(currentHLL, ctx, args) {
  const capture = new Capture(args[1], Array.prototype.slice.call(args, 2));
  return currentHLL.get('bind_error').$$call(ctx, null, capture);
};

let execname;
exports.execname = function(path) {
  execname = path;
};

op.execname = function() {
  return execname;
};

exports.exitHandler = function(ctx, currentHLL, value) {
  currentHLL.get('exit_handler').$$call(ctx, null, ctx.codeRef(), value === undefined ? Null : value);
};

exports.NativeRef = require('./reprs.js').NativeRef;

exports.getHLL = hll.getHLL;

exports.tooFewPos = function(got, expected) {
  throw new NQPException(`Too few positionals passed; expected ${expected-2} arguments but got ${got-2}`);
};

exports.tooManyPos = function(got, expected) {
  throw new NQPException(`Too many positionals passed; expected ${expected-2} arguments but got ${got-2}`);
};


exports.arg_i = function(ctx, contedArg) {
  if (contedArg instanceof NativeIntArg) {
    return contedArg.value;
  } else if (contedArg instanceof NativeUIntArg) {
    return contedArg.value|0;
  } else if (contedArg instanceof NativeNumArg) {
    throw new NQPException('Expected native int argument, but got num');
  } else if (contedArg instanceof NativeStrArg) {
    throw new NQPException('Expected native int argument, but got str');
  }

  const arg = contedArg.$$decont(ctx);
  if (arg instanceof NQPInt) {
    return arg.value;
  } else if (arg.$$getInt) {
    return arg.$$getInt();
  } else {
    throw new NQPException('Expected native int argument, but got something else');
  }
};

exports.arg_n = function(ctx, contedArg) {
  if (contedArg instanceof NativeNumArg) {
    return contedArg.value;
  } else if (contedArg instanceof NativeIntArg) {
    throw new NQPException('Expected native num argument, but got int');
  } else if (contedArg instanceof NativeStrArg) {
    throw new NQPException('Expected native num argument, but got str');
  }

  const arg = contedArg.$$decont(ctx);
  if (arg.$$getNum) {
    return arg.$$getNum();
  } else {
    throw new NQPException('Expected native num argument, but got something else');
  }
};

exports.arg_s = function(ctx, contedArg) {
  if (contedArg instanceof NativeStrArg) {
    return contedArg.value;
  } else if (contedArg instanceof NQPStr) {
    return contedArg.value;
  } else if (contedArg instanceof NativeIntArg) {
    throw new NQPException('Expected native str argument, but got int');
  } else if (contedArg instanceof NativeNumArg) {
    throw new NQPException('Expected native str argument, but got num');
  }

  const arg = contedArg.$$decont(ctx);
  if (typeof arg === 'string') {
    return arg;
  } else if (arg.$$getStr) {
    return arg.$$getStr();
  } else {
    throw new NQPException('Expected native str argument, but got something else');
  }
};

exports.missingNamed = function(name) {
  throw new NQPException(`Required named parameter '${name}' not passed`);
};


const chunkNamesToTypes = {
  T_OBJ: 0,
  T_INT: 1,
  T_NUM: 2,
  T_STR: 3,
  T_BOOL: 4,
  T_CALL_ARG: 5,
  T_INT16: 6,
  T_INT8: 7,
  T_RETVAL: 8,
  T_UINT16: 9,
  T_UINT8: 10,
  T_UINT32: 11,

  T_VOID: -1,
  T_NONVAL: -2,
  T_ARGS: -3,
  T_ARGS_ARRAY: -4,
};

const chunkTypesToNames = {};
for (const name of Object.keys(chunkNamesToTypes)) {
  chunkTypesToNames[chunkNamesToTypes[name]] = name;
}

exports.coercion = function(got, expected) {
  throw new Error('Can\'t convert, got: ' + chunkTypesToNames[got] + ' expected:' + chunkTypesToNames[expected]);
};

exports.charrange_i = function(char, lower, upper) {
  return (
    lower <= char.toLowerCase().charCodeAt(0)
    && char.toLowerCase().charCodeAt(0) <= upper
  ) || (
    lower <= char.toUpperCase().charCodeAt(0)
    && char.toUpperCase().charCodeAt(0) <= upper
  );
};

exports.charrange_m = function(char, lower, upper) {
  const codePoint = stripMarks(char).codePointAt(0);
  return (lower <= codePoint && codePoint <= upper);
};

exports.charrange_im = function(char, lower, upper) {
  const stripped = stripMarks(char);
  return (
    lower <= stripped.toLowerCase().codePointAt(0)
    && stripped.toLowerCase().codePointAt(0) <= upper
  ) || (
    lower <= stripped.toUpperCase().codePointAt(0)
    && stripped.toUpperCase().codePointAt(0) <= upper
  );
};


// TODO - optimize
function fuzzyMatch(fuzzy, target, pos, literal) {
  let end = pos;
  let result = -1;
  let matched = '';
  const foldedLiteral = fuzzy(literal);

  while (foldedLiteral.startsWith(matched)) {
    if (matched === foldedLiteral) {
      result = end - pos;
    }

    if (end === target.length) break;
    end = graphemes.nextBreak(target, end);
    matched = fuzzy(target.substring(pos, end));
  }

  return result;
}

exports.literal_i = function(target, pos, literal) {
  return fuzzyMatch(foldCase, target, pos, literal);
};

exports.literal_m = function(target, pos, literal) {
  return fuzzyMatch(stripMarks, target, pos, literal);
};

exports.literal_im = function(target, pos, literal) {
  return fuzzyMatch(string => foldCase(stripMarks(string)), target, pos, literal);
};

exports.literal = function(target, pos, literal) {
  if (target.substr(pos, literal.length) == literal) {
    if (graphemes.graphemeBoundary(target, pos + literal.length)) {
      return literal.length;
    } else {
      return -1;
    }
  } else {
    return -1;
  }
};

// TODO astral characters, multi character graphemes
exports.enumcharlist_m = function(negate, target, pos, charlist) {
  if (pos >= target.length) return -1;
  const found = charlist.indexOf(stripMarks(target.substr(pos, 1))) != -1;
  if (negate) {
    return found ? -1 : 1;
  } else {
    return found ? 1 : -1;
  }
};

exports.enumcharlist = function(negate, target, pos, charlist, zerowidth) {
  if (pos >= target.length) return (zerowidth && negate ? 0 : -1);
  const graphemeEnd = graphemes.nextBreak(target, pos);
  const found = charlist.indexOf(target.substring(pos, graphemeEnd)) != -1;
  if (negate ? !found : found) {
    return (graphemeEnd - pos);
  } else {
    return -1;
  }
};

exports.nextGrapheme = graphemes.nextBreak;

exports.noNamed = function(_NAMED) {
  if (Object.keys(_NAMED) != 0) {
    throw new NQPException(`Unexpected named argument ${Object.keys(_NAMED)[0]} passed`);
  }
};

exports.checkNamed = function(known, _NAMED) {
  for (const named in _NAMED) {
    if (!known[named]) {
      throw new NQPException(`Unexpected named argument ${named} passed`);
    }
  }
};


const props = require('./unicode-props.js');

for (const prop in props) {
  exports[prop] = props[prop];
}

exports.buildSourceMap = core.buildSourceMap;
exports.createSourceMap = core.createSourceMap;
