var op = {};
exports.op = op;

var os = require('os');

var Hash = require('./hash.js');
var CodeRef = require('./code-ref.js');

var Ctx = require('./ctx.js');

var NQPInt = require('./nqp-int.js');

var NQPException = require('./nqp-exception.js');

var reprs = require('./reprs.js');

var hll = require('./hll.js');

var NQPObject = require('./nqp-object.js');

var bootstrap = require('./bootstrap.js');

var nqp = require('nqp-runtime');

var constants = require('./constants.js');

var containerSpecs = require('./container-specs.js');

var Null = require('./null.js');

var BOOT = require('./BOOT.js');

var exceptionsStack = require('./exceptions-stack.js');

var repossession = require('./repossession.js');

var sixmodel = require('./sixmodel.js');

var Capture = require('./capture.js');

exports.CodeRef = CodeRef;

op.isinvokable = function(obj) {
  return (obj instanceof CodeRef || (obj._STable && obj._STable.invocationSpec) ? 1 : 0);
};

op.escape = function(str) {
  return str
      .replace(/\\/g, '\\\\')
      .replace(/\x1B/g, '\\e')
      .replace(/\n/g, '\\n')
      .replace(/\r/g, '\\r')
      .replace(/\t/g, '\\t')
      .replace(/\f/g, '\\f')
      .replace(/[\b]/g, '\\b')
      .replace(/"/g, '\\"');
};

function radixHelper(radix, str, zpos, flags) {
  var lowercase = 'a-' + String.fromCharCode('a'.charCodeAt(0) + radix - 11);
  var uppercase = 'A-' + String.fromCharCode('A'.charCodeAt(0) + radix - 11);

  var letters = radix >= 11 ? lowercase + uppercase : '';

  var digitclass = '[0-' + Math.min(radix - 1, 9) + letters + ']';
  var minus = flags & 0x02 ? '(?:-?|\\+?)' : '';
  var regex = new RegExp(
      '^' + minus + digitclass + '(?:_' +
      digitclass + '|' + digitclass + ')*');
  var str = str.slice(zpos);
  var search = str.match(regex);
  if (search == null) {
    return null;
  }
  var number = search[0].replace(/_/g, '').replace(/^\+/, '');
  if (flags & 0x01) number = '-' + number;
  if (flags & 0x04) number = number.replace(/0+$/, '');
  var power = number[0] == '-' ? number.length - 1 : number.length;
  return {power: power, offset: zpos + search[0].length, number: number};
}

exports.radixHelper = radixHelper;

op.radix = function(hllName, radix, str, zpos, flags) {
  var extracted = radixHelper(radix, str, zpos, flags);
  if (extracted == null) {
    return hll.slurpyArray(hllName, [0, 1, -1]);
  }
  var pow = Math.pow(radix, extracted.power);
  return hll.slurpyArray(hllName, [parseInt(extracted.number, radix), pow, extracted.offset]);
};

op.setdebugtypename = function(type, debugName) {
  type._STable.debugName = debugName;
  return type;
};

exports.hash = function() {
  return new Hash();
};

exports.slurpyNamed = function(named, skip) {
  var hash = new Hash();
  for (key in named) {
    if (!skip[key]) {
      hash.content.set(key, named[key]);
    }
  }
  return hash;
};

exports.unwrapNamed = function(named) {
  if (!named instanceof Hash) console.log('expecting a hash here');
  return named.$$toObject();
};

exports.named = function(parts) {
  var all = {};
  for (var i = 0; i < parts.length; i++) {
    var part = parts[i];
    for (var key in part) {
      all[key] = part[key];
    }
  }
  return all;
};

exports.op.ishash = function(obj) {
  return obj instanceof Hash || (obj._STable && obj._STable.REPR instanceof reprs.VMHash) ? 1 : 0;
};

op.existspos = function(array, idx) {
  if (array.$$existspos) return array.$$existspos(idx);
  if (idx < 0) idx += array.length;
  return array.hasOwnProperty(idx) ? 1 : 0;
};

op.create = function(obj) {
  return obj._STable.REPR.allocate(obj._STable);
};

op.bootarray = function() {
  return BOOT.Array;
};

op.defined = function(obj) {
  // TODO - handle more things that aren't defined
  if (obj === Null || obj.typeObject_) {
    return 0;
  }
  return 1;
};


op.setinvokespec = function(obj, classHandle, attrName, invocationHandler) {
  obj._STable.setinvokespec(classHandle, attrName, invocationHandler);
  return obj;
};

// Stub
op.setboolspec = function(obj, mode, method) {
  obj._STable.setboolspec(mode, method);
  return obj;
};


op.savecapture = function(args) {
  return new Capture(args[1], Array.prototype.slice.call(args, 2));
};

op.captureposelems = function(capture) {
  return capture.pos.length;
};

op.captureposarg = function(capture, i) {
  return capture.pos[i];
};

op.capturehasnameds = function(capture) {
  return (!capture.named || Object.keys(capture.named).length == 0) ? 0 : 1;
};

op.captureexistsnamed = function(capture, arg) {
  return (capture.named && capture.named.hasOwnProperty(arg)) ? 1 : 0;
};

op.capturenamedshash = function(capture) {
  var hash = new Hash();
  for (key in capture.named) {
    hash.content.set(key, capture.named[key]);
  }
  return hash;
};

op.setcodeobj = function(codeRef, codeObj) {
  codeRef.codeObj = codeObj;
  return codeRef;
};
op.getcodeobj = function(codeRef) {
  return codeRef.codeObj;
};

op.settypecache = function(obj, cache) {
  obj._STable.typeCheckCache = cache.array;
  if (obj._STable._SC !== undefined) obj._STable.scwb();
  return obj;
};

op.settypecheckmode = function(obj, mode) {
  const TYPE_CHECK_CACHE_FLAG_MASK = 3;
  obj._STable.modeFlags = mode | (obj.STable.modeFlags & TYPE_CHECK_CACHE_FLAG_MASK);
  return obj;
};

op.setmethcache = function(obj, cache) {
  if (!cache instanceof Hash) {
    console.log('we expect a hash here');
  }
  obj._STable.setMethodCache(cache.content);
  if (obj._STable._SC !== undefined) obj._STable.scwb();
  return obj;
};

op.setmethcacheauth = function(obj, isAuth) {
  if (isAuth) {
    obj._STable.modeFlags |= constants.METHOD_CACHE_AUTHORITATIVE;
  } else {
    obj._STable.modeFlags &= ~constants.METHOD_CACHE_AUTHORITATIVE;
  }
  if (obj._STable._SC !== undefined) obj._STable.scwb();
  return obj;
};

op.reprname = function(obj) {
  if (obj._STable) {
    return obj._STable.REPR.name;
  } else if (obj instanceof Capture) {
    return 'MVMCallCapture';
  } else if (obj instanceof NQPInt) {
    return 'P6int';
  } else if (typeof obj == 'string') {
    return 'P6str';
  } else if (typeof obj == 'number') {
    return 'P6num';
  } else {
    console.log(obj);
    throw new Error('unsupported thing passed to reprname');
  }
};

op.newtype = function(how, repr) {
  if (!reprs[repr]) {
    throw 'Unknown REPR: ' + repr;
  }
  var REPR = new reprs[repr]();
  REPR.name = repr;
  return REPR.typeObjectFor(how);
};

op.findmethod = function(ctx, obj, name) {
  var method = sixmodel.findMethod(ctx, obj, name);
  if (method === Null) {
    throw new NQPException("Cannot find method '" + name + "' on object of type " + obj._STable.debugName);
  }
  return method;
};

op.getcodename = function(code) {
  return code.name;
};

op.setcodename = function(code, name) {
  code.name = name;
  return code;
};

op.rebless = function(obj, newType) {
  obj._STable.REPR.changeType(obj, newType);
  if (obj._SC !== undefined) obj.$$scwb();
  return obj;
};

op.composetype = function(obj, reprinfo) {
  obj._STable.REPR.compose(obj._STable, reprinfo);
};

var whereCounter = 0;
op.where = function(obj) {
  if (obj._STable || obj instanceof CodeRef) { // HACK
    if (!obj._WHERE) {
      obj._WHERE = ++whereCounter;
    }
    return obj._WHERE;
  } else {
    throw 'WHERE/objectid on this type of thing unimplemented';
  }
};

op.objectid = op.where;

/* HACK - take the current HLL settings into regard */


var sha1 = require('sha1');

op.sha1 = function(text) {
  return sha1(text).toUpperCase();
};

op.curlexpad = function(get, set) {
  return new CurLexpad(get, set);
};

op.setcontspec = function(type, specType, conf) {
  if (containerSpecs[specType]) {
    type._STable.containerSpec = new containerSpecs[specType](type._STable);
    type._STable.containerSpec.configure(conf);
  } else {
    console.warn('NYI cont spec: ' + specType);
  }
};

op.iscont = function(cont) {
  return cont.$$iscont ? cont.$$iscont() : 0;
};

op.iscont_i = function(cont) {
  if (cont.$$iscont_i) return cont.$$iscont_i();
  return 0;
};

op.iscont_n = function(cont) {
  if (cont.$$iscont_n) return cont.$$iscont_n();
  return 0;
};

op.iscont_s = function(cont) {
  if (cont.$$iscont_s) {
    return cont.$$iscont_s();
  }
  return 0;
};

op.isrwcont = function(cont) {
  return cont.$$isrwcont ? cont.$$isrwcont() : 0;
};

op.box_n = function(n, type) {
  var repr = type._STable.REPR;
  var obj = repr.allocate(type._STable);
  obj.$$setNum(n);
  return obj;
};

op.unbox_n = function(obj) {
  return obj.$$getNum();
};

op.box_s = function(value, type) {
  var repr = type._STable.REPR;
  var obj = repr.allocate(type._STable);
  obj.$$setStr(value);
  return obj;
};

op.unbox_s = function(obj) {
  if (typeof obj == 'string') return obj;
  return obj.$$getStr();
};

op.setelems = function(obj, elems) {
  obj.$$setelems(elems);
  return obj;
};

op.markcodestatic = function(code) {
  code.isStatic = true;
  return code;
};

op.markcodestub = function(code) {
  code.isCompilerStub = true;
  return code;
};

op.freshcoderef = function(code) {
  var fresh = code.$$clone();
  fresh.staticCode = fresh;
  return fresh;
};

op.pushcompsc = function(sc) {
  repossession.compilingSCs.push(sc);
  return sc;
};

op.popcompsc = function(sc) {
  return repossession.compilingSCs.pop();
};

op.scwbenable = function() {
  return --repossession.scwbDisableDepth;
};

op.scwbdisable = function() {
  return ++repossession.scwbDisableDepth;
};

var compilerRegistry = new Map();

op.bindcomp = function(language, compiler) {
  compilerRegistry.set(language, compiler);
  return compiler;
};

class WrappedFunction extends NQPObject {
  constructor(func) {
    super();
    this.func = func;
  }

  $$apply(args) {
    var converted = [];
    for (var i = 2; i < args.length; i++) {
      converted.push(toJS(args[i]));
    }
    return fromJS(this.func.apply(null, converted));
  }

  $$call(args) {
    return this.$$apply(arguments);
  }
};

function fromJS(obj) {
  if (typeof obj === 'function') {
    return new WrappedFunction(obj);
  } else {
    return obj;
  }
}

function toJS(obj) {
  if (obj instanceof NQPInt) {
    return obj.value;
  } else if (obj instanceof CodeRef) {
    return function() {
      var converted = [null, {}];
      for (var i = 0; i < arguments.length; i++) {
        converted.push(fromJS(arguments[i]));
      }
      return toJS(obj.$$apply(converted));
    };
  } else {
    return obj;
  }
}

class JavaScriptCompiler extends NQPObject {
  eval(ctx, _NAMED, self, code) {
    if (/PRINTME/.test(code)) {
      console.log('evaling [', code, ']');
    }
    //console.log("evaling [", code, "]");
    return fromJS(eval(code));
  }
};

compilerRegistry.set('JavaScript', new JavaScriptCompiler());

class JSBackendStub extends NQPObject {
  name(ctx, named) {
    return 'js';
  }
};

class NQPStub extends NQPObject {
  constructor() {
    super();
    this.backend_ = new JSBackendStub();
  }
  backend(ctx, named) {
    return this.backend_;
  }
};

compilerRegistry.set('nqp', new NQPStub());

op.getcomp = function(language) {
  return compilerRegistry.has(language) ? compilerRegistry.get(language) : Null;
};

op.backendconfig = function() {
  var config = new Hash();
  config.content.set('intvalsize', 4);
  config.content.set('osname', os.platform());
  return config;
};

op.ordbaseat = function(str, index) {
  throw 'ordbaseat NYI';
};

op.getpid = function() {
  return process.pid;
};

op.getmessage = function(exception) {
  return exception.$$message;
};

op.setmessage = function(exception, message) {
  return (exception.$$message = message);
};

op.getpayload = function(exception) {
  return Object.prototype.hasOwnProperty.call(exception, '$$payload') ? exception.$$payload : Null;
};

op.setpayload = function(exception, payload) {
  return (exception.$$payload = payload);
};

op.isnum = function(value) {
  return (typeof value == 'number') ? 1 : 0;
};

op.isint = function(value) {
  return (value instanceof NQPInt) ? 1 : 0;
};

function renameEncoding(encoding) {
  return {utf16: 'utf16le', 'iso-8859-1': 'binary'}[encoding] || encoding;
}

exports.renameEncoding = renameEncoding;

function byteSize(buf) {
  var bits = buf._STable.REPR.type._STable.REPR.bits;

  if (bits % 8) {
    throw 'only buffer sizes that are a multiple of 8 are supported';
  }

  return bits / 8;
}

op.encode = function(str, encoding_, buf) {
  var encoding = renameEncoding(encoding_);

  var elementSize = byteSize(buf);

  var ret = [];

  var buffer = new Buffer(str, encoding);

  var offset = 0;
  for (var i = 0; i < buffer.length / elementSize; i++) {
    buf.array[i] = buffer.readIntLE(offset, elementSize);
    offset += elementSize;
  }

  return buf;
};

function toRawBuffer(buf) {
  let elementSize = byteSize(buf);
  let is_unsigned = buf._STable.REPR.type._STable.REPR.is_unsigned;
  let array = buf.array;

  let buffer = new Buffer(array.length * elementSize);

  let offset = 0;
  for (let i = 0; i < array.length; i++) {
    if (is_unsigned) {
      buffer.writeUIntLE(array[i], offset, elementSize);
    } else {
      buffer.writeIntLE(array[i], offset, elementSize);
    }
    offset += elementSize;
  }

  return buffer;
}

exports.toRawBuffer = toRawBuffer;

op.decode = function(buf, encoding) {
  return toRawBuffer(buf).toString(renameEncoding(encoding));
};

op.objprimspec = function(obj) {
  if (obj === Null) return 0;
  return (obj._STable && obj._STable.REPR.boxedPrimitive ? obj._STable.REPR.boxedPrimitive : 0);
};

/* Parametricity operations. */
op.setparameterizer = function(ctx, type, parameterizer) {
  var st = type._STable;
  /* Ensure that the type is not already parametric or parameterized. */
  if (st.parameterizer) {
    ctx.die('This type is already parametric');
    return Null;
  } else if (st.parametricType) {
    ctx.die('Cannot make a parameterized type also be parametric');
    return Null;
  }

  /* Set up the type as parameterized. */
  st.parameterizer = parameterizer;
  st.parameterizerCache = [];

  st.modeFlags |= constants.PARAMETRIC_TYPE;

  return type;
};

op.parameterizetype = function(ctx, type, params) {
  /* Ensure we have a parametric type. */
  var st = type._STable;
  if (!st.parameterizer) {
    ctx.die('This type is not parametric');
  }

  var unpackedParams = params.array;

  var lookup = st.parameterizerCache;
  for (var i = 0; i < lookup.length; i++) {
    if (unpackedParams.length == lookup[i].params.length) {
      var match = true;
      for (var j = 0; j < unpackedParams.length; j++) {
        /* XXX More cases to consider here. - copied over from the jvm backend, need to consider what they are*/
        if (unpackedParams[j] !== lookup[i].params[j]) {
          match = false;
          break;
        }
      }

      if (match) {
        return lookup[i].type;
      }
    }
  }

  var result = st.parameterizer.$$call(ctx, {}, st.WHAT, params);

  var newSTable = result._STable;
  newSTable.parametricType = type;
  newSTable.parameters = params;
  newSTable.modeFlags |= constants.PARAMETERIZED_TYPE;

  lookup.push({type: result, params: unpackedParams});

  return result;
};

op.gcd_i = function(a, b) {
  var c;
  while (a != 0) {
    c = a;
    a = b % a;
    b = c;
  }
  return b;
};

// TODO think about overflow
op.lcm_i = function(a, b) {
  return (a * b) / op.gcd_i(a, b);
};

op.mod_n = function(a, b) {
  return a - Math.floor(a / b) * b;
};

op.sec_n = function(x) {
  return 1 / Math.cos(x);
};

op.asec_n = function(x) {
  return Math.acos(1 / x);
};

op.sech_n = function(x) {
  return (2 * Math.cosh(x)) / (Math.cosh(2 * x) + 1);
};

op.isnanorinf = function(n) {
  return (isNaN(n) || n == Infinity || n == -Infinity) ? 1 : 0;
};

function typeparameters(ctx, type) {
  var st = type._STable;
  if (!st.parametricType) {
    ctx.die('This type is not parameterized');
  }

  return st.parameters;
}

op.typeparameters = typeparameters;

op.typeparameterat = function(ctx, type, idx) {
  return typeparameters(ctx, type).$$atpos(idx);
};

op.typeparameterized = function(type) {
  var st = type._STable;
  var nqp = require('nqp-runtime');
  return st.parametricType ? st.parametricType : Null;
};

var Fiber = require('fibers');

function runTagged(tag, fiber, val) {
  var control = fiber.run(val);
  while (1) {
    if (control.tag == tag || control.tag === Null) {
      return control.value;
    } else {
      Fiber.yield(control);
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
    return runTagged(tag, block.fiber, Null);
  } else {
    return runTagged(tag, Fiber(function() {
      return {value: block.$$call(ctx, null), tag: tag};
    }), Null);
  }
};


op.continuationcontrol = function(ctx, protect, tag, closure) {
  return Fiber.yield({value: closure.$$call(ctx, null, new Cont(tag, Fiber.current)), tag: tag});
};

op.continuationinvoke = function(ctx, cont, inject) {
  var val = inject.$$call(ctx, null);
  return runTagged(cont.tag, cont.fiber, val);
};

var generator = Math;
op.rand_n = function(limit) {
  return generator.random() * limit;
};


op.srand = function(seed) {
  var XorShift = require('xorshift').constructor;
  generator = new XorShift([seed, 0, 0, 0]);
  return seed;
};

op.getlexrel = function(pad, name) {
  return pad.lookup(name);
};


op.bitand_s = function(a, b) {
  var ret = '';
  var i = 0;
  while (true) {
    var codepointA = a.codePointAt(i);
    var codepointB = b.codePointAt(i);
    if (codepointA === undefined || codepointB == undefined) {
      return ret;
    }
    ret += String.fromCodePoint(codepointA & codepointB);
    i++;
  }
};

op.bitor_s = function(a, b) {
  var ret = '';
  var i = 0;
  while (true) {
    var codepointA = a.codePointAt(i);
    var codepointB = b.codePointAt(i);
    if (codepointA === undefined && codepointB == undefined) {
      return ret;
    }
    if (codepointA === undefined) codepointA = 0;
    if (codepointB === undefined) codepointB = 0;
    ret += String.fromCodePoint(codepointA | codepointB);
    i++;
  }
};

op.bitxor_s = function(a, b) {
  var ret = '';
  var i = 0;
  while (true) {
    var codepointA = a.codePointAt(i);
    var codepointB = b.codePointAt(i);
    if (codepointA === undefined && codepointB == undefined) {
      return ret;
    }
    if (codepointA === undefined) codepointA = 0;
    if (codepointB === undefined) codepointB = 0;
    ret += String.fromCodePoint(codepointA ^ codepointB);
    i++;
  }
};

op.replace = function(str, offset, count, repl) {
  return str.substr(0, offset) + repl + str.substr(offset + count);
};

op.getcodelocation = function(code) {
  var hash = new Hash();
  hash.content.set('file', 'unknown');
  hash.content.set('line', new NQPInt(-1));
  return hash;
};

op.getcodecuid = function(codeRef) {
  return codeRef.cuid;
};

op.numdimensions = function(array) {
  return array.$$numdimensions();
};

op.dimensions = function(array) {
  return array.$$dimensions();
};

op.setdimensions = function(array, dimensions) {
  array.$$setdimensions(dimensions);
  return dimensions;
};

// TODO optimize

['_n', '_s', '_i', ''].forEach(function(type) {
  op['atposnd' + type] = function(array, idx) {
    return array['$$atposnd' + type](idx);
  };

  op['bindposnd' + type] = function(array, idx, value) {
    return array['$$bindposnd' + type](idx, value);
  };

  op['atpos2d' + type] = function(array, x, y) {
    return op['atposnd' + type](array, BOOT.createArray([x, y]));
  };

  op['atpos3d' + type] = function(array, x, y, z) {
    return op['atposnd' + type](array, BOOT.createArray([x, y, z]));
  };

  op['bindpos2d' + type] = function(array, x, y, value) {
    return op['bindposnd' + type](array, BOOT.createArray([x, y]), value);
  };

  op['bindpos3d' + type] = function(array, x, y, z, value) {
    return op['bindposnd' + type](array, BOOT.createArray([x, y, z]), value);
  };
});

/* TODO HLL support */
op.newexception = function() {
  var exType = BOOT.Exception;
  return exType._STable.REPR.allocate(exType._STable);
};

op.throwextype = function(ctx, category) {
  var exType = BOOT.Exception;
  let ex = exType._STable.REPR.allocate(exType._STable);
  ex.$$category = category;
  ctx.throw(ex);
};

function EvalResult(mainline, codeRefs) {
  this.mainline = mainline;
  this.codeRefs = codeRefs;
}

exports.EvalResult = EvalResult;

op.iscompunit = function(obj) {
  return obj instanceof EvalResult ? 1 : 0;
};

op.compunitmainline = function(cu) {
  return cu.mainline;
};

op.compunitcodes = function(cu) {
  return cu.codeRefs;
};

op.getstaticcode = function(codeRef) {
  return codeRef.staticCode;
};

op.backtracestrings = function(hllName, exception) {
  return hll.list(hllName, [exception.stack.replace(/^Error: .*\n/, '')]);
};

op.backtrace = function(hllName, exception) {
  /* TODO - have real file and line */
  if (exception.$$ctx) {
    let ctx = exception.$$ctx;

    let rows = [];

    while (ctx) {
      let row = new Hash();
      let annotations = new Hash();
      row.content.set('annotations', annotations);
      if (ctx instanceof Ctx) {
        row.content.set('sub', ctx.codeRef());
      }

      annotations.content.set("file", "NYI");
      annotations.content.set("line", 0);

      rows.push(row);

      ctx = ctx.$$outer;
    }
    return hll.list(hllName, rows);
  } else {
    return hll.list(hllName, []);
  }
};

op.hintfor = function(classHandle, attrName) {
  if (!classHandle._STable.REPR.hintfor) return -1;
  return classHandle._STable.REPR.hintfor(classHandle, attrName);
};

op.ctxcaller = function(ctx) {
  return ctx.$$caller.$$skipHandlers();
};

op.ctxcallerskipthunks = function(ctx) {
  var caller = ctx.$$caller;

  // FIXME - ctxs that don't have a codeRef
  while (caller && caller.codeRef().staticCode.isThunk) {
    caller = caller.$$caller;
  }
  return caller || Null;
};

op.ctxouterskipthunks = function(ctx) {
  var outer = ctx.$$outer;

  // FIXME - ctxs that don't have a codeRef
  while (outer && outer.codeRef().staticCode.isThunk) {
    outer = outer.$$outer;
  }
  return outer || Null;
};

op.captureposprimspec = function(capture, idx) {
  return 0;
};

op.forceouterctx = function(code, ctx) {
  if (!(code instanceof CodeRef)) {
    throw 'forceouterctx first operand must be a CodeRef';
  }
  if (!(ctx instanceof Ctx)) {
    throw 'forceouterctx second operand must be a Ctx';
  }

  code.outerCtx = ctx;

  return code;
};

// TODO: replace it with a fully correct implementation
op.fc = function(string) {
  return string.toLowerCase();
};

function tcChar(c) {
  if (c === 'ß') return 'Ss';
  var unicharadata = require('unicharadata');
  var titled = unicharadata.title(c);
  return titled === '' ? c : titled;
}

op.tc = function(string) {
  var ret = '';
  for (let c of string) {
    ret += tcChar(c);
  }
  return ret;
};

op.tclc = function(string) {
  let isFirst = true;
  let lower = '';
  let first = '';
  for (let c of string) {
    if (isFirst) {
      isFirst = false;
      first = tcChar(c);
    } else {
      lower += c;
    }
  }
  return first + lower.toLowerCase();
};

op.getstrfromname = function(name) {
  let unicharadata = require('unicharadata');
  return unicharadata.lookup(name);
};

op.codepointfromname = function(name) {
  let unicharadata = require('unicharadata');
  return unicharadata.lookup(name).codePointAt(0);
};

op.islist = function(list) {
  return (list._STable && list._STable.REPR instanceof reprs.VMArray) ? 1 : 0;
};

op.split = function(hllName, separator, string) {
  return hll.slurpyArray(hllName, string !== '' ? string.split(separator) : []);
};

op.exception = function() {
  return exceptionsStack[exceptionsStack.length - 1];
};

op.lastexpayload = function() {
  return exceptionsStack[exceptionsStack.length - 1].$$payload;
};

op.setextype = function(exception, category) {
  exception.$$category = category;
  return exception;
};

op.getextype = function(exception) {
  if (exception.$$category === undefined) {
    return 0;
  } else {
    return exception.$$category;
  }
};
