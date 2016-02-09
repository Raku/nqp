var op = {};
exports.op = op;

var Hash = require('./hash.js');
var CodeRef = require('./code-ref.js');

var LexPadHack = require('./lexpad-hack.js');
var NQPInt = require('./nqp-int.js');

var NQPException = require('./nqp-exception.js');

var reprs = require('./reprs.js');

var hll = require('./hll.js');

var NQPArray = require('./array.js');

exports.CodeRef = CodeRef;

op.atpos = function(array, index) {
  return array.$$atpos(index);
};

op.bindpos = function(array, index, value) {
  return array.$$bindpos(index, value);
};

op.getcomp = function(lang) {
};

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

op.x = function(str, times) {
  if (!times) return '';
  var ret = str;
  while (--times) ret += str;
  return ret;
};

function radix_helper(radix, str, zpos, flags) {
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
};

exports.radix_helper = radix_helper;

op.radix = function(radix, str, zpos, flags) {
  var extracted = radix_helper(radix, str, zpos, flags);
  if (extracted == null) {
    return new NQPArray([0, 1, -1]);
  }
  var pow = Math.pow(radix, extracted.power);
  return new NQPArray([parseInt(extracted.number, radix), pow, extracted.offset]);
};

function Iter(array) {
  this.array = array;
  this.target = array.length;
  this.idx = 0;
}

Iter.prototype.shift = function() {
  return this.array[this.idx++];
};

Iter.prototype.$$to_bool = function(ctx) {
  return this.idx < this.target;
};

function HashIter(hash) {
  this.hash = hash.content;
  this.keys = Object.keys(hash.$$toObject());
  this.target = this.keys.length;
  this.idx = 0;
}

HashIter.prototype.shift = function() {
  return new IterPair(this.hash, this.keys[this.idx++]);
};

HashIter.prototype.$$to_bool = function(ctx) {
  return this.idx < this.target;
};

function IterPair(hash, key) {
  this._key = key;
  this._hash = hash;
}

IterPair.prototype.iterval = function() {
  return this._hash.get(this._key);
};
IterPair.prototype.iterkey_s = function() {
  return this._key;
};

IterPair.prototype.Str = function(ctx) {
  return this._key;
};

IterPair.prototype.key = function(ctx, named) {
  return this._key;
};
IterPair.prototype.value = function(ctx, named) {
  return this._hash.get(this._key);
};


op.iterator = function(obj) {
  if (obj instanceof NQPArray) {
    return new Iter(obj.array);
  } else if (obj instanceof Hash) {
    return new HashIter(obj);
  } else if (obj instanceof LexPadHack) {
    return new Iter(Object.keys(obj.content));
  } else {
    throw 'unsupported thing to iterate over';
  }
};


exports.hash = function() {
  return new Hash();
};

exports.slurpy_named = function(named, skip) {
  var hash = new Hash();
  for (key in named) {
    if (!skip[key]) {
      hash.content.set(key, named[key]);
    }
  }
  return hash;
};

exports.unwrap_named = function(named) {
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
  return obj instanceof Hash ? 1 : 0;
};

op.existspos = function(array, idx) {
  if (array.$$existspos) return array.$$existspos(idx);
  if (idx < 0) idx += array.length;
  return array.hasOwnProperty(idx) ? 1 : 0;
};

op.create = function(obj) {
  return obj._STable.REPR.allocate(obj._STable);
};

// HACK - till the array refactor we hack this

op.bootarray = function(obj) {
  return {_STable: {REPR: {allocate: function(STable) {
    return [];
  }}}};
};

op.defined = function(obj) {
  // TODO - handle more things that aren't defined
  if (obj === undefined || obj === null || obj.type_object_) {
    return 0;
  }
  return 1;
};


op.setinvokespec = function(obj, classHandle, attrName, invocationHandler) {
  if (invocationHandler !== null) {
    throw 'invocationHandler argument to setinvokespec not supported';
  }
  obj._STable.setinvokespec(classHandle, attrName, invocationHandler);
  return obj;
};

// Stub
op.setboolspec = function(obj, mode, method) {
  obj._STable.setboolspec(mode, method);
  return obj;
};

function Capture(named, pos, skip) {
  this.pos = pos;
  this.named = named;
  this.skip = skip;
}

op.savecapture = function(args, skip) {
  return new Capture(args[1], Array.prototype.slice.call(args, 2), skip);
};

op.captureposelems = function(capture) {
  return capture.pos.length;
};

op.captureposarg = function(capture, i) {
  return capture.pos[i];
};

op.capturehasnameds = function(capture) {
  return Object.keys(capture.named).length == 0 ? 0 : 1;
};

op.captureexistsnamed = function(capture, arg) {
  return capture.named.hasOwnProperty(arg) ? 1 : 0;
};

op.capturenamedshash = function(capture) {
  var hash = new Hash();
  for (key in capture.named) {
    if (!capture.skip[key]) {
      hash.content.set(key, capture.named[key]);
    }
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

op.curcode = function() {
  var current = arguments.callee.caller;
  return current.codeRef;
};

op.callercode = function() {
  var current = arguments.callee.caller;

  /* Skip all fake first _ functions so we can skip a real one*/
  while (current.name == '_') {
    current = current.caller;
  }

  /* Skip a real function */
  current = current.caller;

  /* Skip all fake _ functions to get to a real one*/
  while (current.name == '_') {
    current = current.caller;
  }

  return current.codeRef;
};


// TODO benchmark and pick a fast way of doing this
op.splice = function(target, source, offset, length) {
  if (target.$$splice) return target.$$splice(source, offset, length);
  var args = [offset, length];
  for (var i = 0; i < source.length; i++) {
    args.push(source[i]);
  }
  target.splice.apply(target, args);
  return target;
};

op.findmethod = function(obj, method) {
  return obj._STable.method_cache[method];
};

op.istype = function(obj, type) {
  /* Null always type checks false. */
  /* HACK - undefined */
  if (obj === null || obj === undefined) {
    return 0;
  }

  // HACK
  if (typeof obj === 'number' || typeof obj === 'string' || obj instanceof Hash || obj instanceof NQPInt) {
    return 0;
  }

  // HACK
  if (obj instanceof NQPArray) {
    if (hll.hllConfigs.nqp && type == hll.hllConfigs.nqp.content.get('list')) {
      return 1;
    } else {
      return 0;
    }
  }

  // TODO cases where the type_check_cache isn't authoritative
  var cache = obj._STable.type_check_cache;
  for (var i = 0; i < cache.length; i++) {
    if (cache[i] === type) {
      return 1;
    }
  }
  return 0;
};

op.settypecache = function(obj, cache) {
  obj._STable.type_check_cache = cache.array;
  return obj;
};

op.setmethcache = function(obj, cache) {
  if (!cache instanceof Hash) {
    console.log('we expect a hash here');
  }
  obj._STable.setMethodCache(cache.$$toObject());
  return obj;
};

op.setmethcacheauth = function(obj, isAuth) {
  /* TODO we currently assume method caches are always authorative
    sadly that's not always the case*/
  return obj;
};

op.reprname = function(obj) {
  if (obj._STable) {
    return obj._STable.REPR.name;
  } else if (obj instanceof NQPInt) {
    return "P6int";
  } else if (typeof obj == "string") {
    return "P6str";
  } else if (typeof obj == "number") {
    return "P6num";
  } else {
    console.log(obj);
    throw new Error("unsupported thing passed to reprname");
  }
};

op.newtype = function(how, repr) {
  if (!reprs[repr]) {
    throw 'Unknown REPR: ' + repr;
  }
  var REPR = new reprs[repr]();
  REPR.name = repr;
  return REPR.type_object_for(how);
};

op.can = function(obj, method) {
  return obj._STable.method_cache.hasOwnProperty(method) ? 1 : 0;
};

op.getcodename = function(code) {
  return code.name;
};

op.setcodename = function(code, name) {
  code.name = name;
};

op.rebless = function(obj, new_type) {
  obj._STable.REPR.change_type(obj, new_type);
  return obj;
};

op.composetype = function(obj, reprinfo) {
  obj._STable.REPR.compose(obj._STable, reprinfo);
};

op.clone = function(obj) {
  if (obj.$$clone) {
    return obj.$$clone();
  } else {
    // STUB
    console.log('NYI cloning', obj);
    return obj;
  }
};

var where_counter = 0;
op.where = function(obj) {
  if (obj._STable) { // HACK
    if (!obj._WHERE) {
      obj._WHERE = ++where_counter;
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

op.setcontspec = function(type, cont_spec_type, hash) {
  var fetch = hash.content.get('fetch');
  var store = hash.content.get('store');
  if (cont_spec_type === 'code_pair') {
    type._STable.addInternalMethod('$$assignunchecked', function(ctx, value) {
      store.$call(ctx, {}, this, value);
      return value;
    });
    type._STable.addInternalMethod('$$assign', function(ctx, value) {
      store.$call(ctx, {}, this, value);
      return value;
    });
    type._STable.addInternalMethod('$$decont', function(ctx) {
      return fetch.$call(ctx, {}, this);
    });
  } else {
    throw 'NYI cont spec: ' + cont_spec_type;
  }
};

op.iscont = function(cont) {
  return cont.$$decont ? 1 : 0;
};

op.decont = function(ctx, cont) {
  return cont.$$decont ? cont.$$decont(ctx) : cont;
};

op.box_n = function(n, type) {
  var repr = type._STable.REPR;
  var obj = repr.allocate(type._STable);
  obj.$$set_num(n);
  return obj;
};

op.unbox_n = function(obj) {
  return obj.$$get_num();
};

op.box_s = function(value, type) {
  var repr = type._STable.REPR;
  var obj = repr.allocate(type._STable);
  obj.$$set_str(value);
  return obj;
};

op.unbox_s = function(obj) {
  return obj.$$get_str();
};

op.elems = function(obj) {
  return obj.$$elems();
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
  // TODO - think about static code info
  return code.$$clone();
};

/* TODO - make serialization take this into account */
var compilingSCs = [];
op.pushcompsc = function(sc) {
  compilingSCs.push(sc);
  return sc;
};

op.popcompsc = function(sc) {
  return compilingSCs.pop();
};

var compilerRegistry = {};
op.bindcomp = function(language, compiler) {
  return (compilerRegistry[language] = compiler);
};

compilerRegistry['JavaScript'] = {
  eval: function(ctx, named, code) {
    return eval(code);
  }
};

compilerRegistry['nqp'] = {
  backend: function(ctx, named) {
    return {
      name: function(ctx, named) {
        return 'js';
      }
    };
  }
};


op.getcomp = function(language) {
  return compilerRegistry[language];
};

op.backendconfig = function() {
  var config = new Hash();
  config.content.set('intvalsize', 4);
  return config;
};

op.ordbaseat = function(str, index) {
  throw 'ordbaseat NYI';
};

op.getpid = function() {
  return process.pid;
};

op.getmessage = function(exception) {
  return exception.message;
};

op.unshift = function(target, value) {
  if (target.$$unshift) return target.$$unshift(value);
  target.unshift(value);
  return value;
};

op.pop = function(target, value) {
  if (target.$$pop) return target.$$pop(value);
  return target.pop(value);
};

op.push = function(target, value) {
  if (target.$$push) return target.$$push(value);
  return target.push(value);
};

op.shift = function(target, value) {
  if (target.$$shift) return target.$$shift(value);
  return target.shift(value);
};

op.isnum = function(value) {
  return (typeof value == "number") ? 1 : 0;
};

op.isint = function(value) {
  return (value instanceof NQPInt) ? 1 : 0;
};

function renameEncoding(encoding) {
  return {utf16: 'utf16le', 'iso-8859-1': 'binary'}[encoding] || encoding;
}

exports.renameEncoding = renameEncoding;

function byteSize(buf) {
  if (buf.bytes) return buf.bytes;

  var bits = buf._STable.REPR.type._STable.REPR.bits;

  if (bits % 8) {
    throw "only buffer sizes that are a multiple of 8 are supported";
  }

  return bits / 8;
}

// HACK should be using buf instead of creating a new one
// TODO needs to be fixed after an Array handling refactor

op.encode = function(str, encoding_, buf) {
  var encoding = renameEncoding(encoding_);

  var elementSize = byteSize(buf);

  var ret = [];

  var buffer = new Buffer(str, encoding);

  var offset = 0;
  for (var i=0; i < buffer.length / elementSize; i++) {
    ret[i] = buffer.readIntLE(offset, elementSize);
    offset += elementSize;
  }

  ret = new NQPArray(ret);
  ret.bytes = elementSize;
  return ret;
};

op.decode = function(buf, encoding_) {
  var encoding = renameEncoding(encoding_);
  var elementSize = byteSize(buf);
  
  buf = buf.array;

  var buffer = new Buffer(buf.length * elementSize);

  var offset = 0;
  for (var i=0; i < buf.length; i++) {
    buffer.writeIntLE(buf[i], offset, elementSize);
    offset += elementSize;
  }

  return buffer.toString(encoding);
};

op.objprimspec = function(obj) {
  return (obj._STable && obj._STable.REPR.boxed_primitive ? obj._STable.REPR.boxed_primitive : 0);
};

/* Parametricity operations. */
op.setparameterizer = function(ctx, type, parameterizer) {
  var st = type._STable;
  /* Ensure that the type is not already parametric or parameterized. */
  if (st.parameterizer) {
    ctx.die("This type is already parametric");
    return null;
  } else if (st.parametricType) {
    ctx.die("Cannot make a parameterized type also be parametric");
    return null;
  }

  /* Set up the type as parameterized. */
  st.parameterizer = parameterizer;
  st.parameterizerCache = [];

  return type;
};

op.parameterizetype = function(ctx, type, params) {
  /* Ensure we have a parametric type. */
  var st = type._STable;
  if (!st.parameterizer) {
    ctx.die("This type is not parametric");
  }

  var unpackedParams = params.array;

  var lookup = st.parameterizerCache;
  for (var i = 0; i < lookup.length; i++) {
    if (unpackedParams.length == lookup[i].params.length) {
      var match = true;
      for (var j=0; j < unpackedParams.length; j++) {
        /* XXX More cases to consider here. - copied over from the jvm backend, need to consider what they are*/
        if (unpackedParams[j] != lookup[i].params[j]) {
          match = false;
          break;
        }
      }

      if (match) {
        return lookup[i].type;
      }
    }
  }

  var result = st.parameterizer.$call(ctx, {}, st.WHAT, params);

  var newSTable = result._STable;
  newSTable.parametricType = type;
  newSTable.parameters = params;

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

op.isnanorinf = function(n) {
  return (isNaN(n) || n == Infinity || n == -Infinity) ? 1 : 0;
};

function typeparameters(ctx, type) {
  var st = type._STable;
  if (!st.parametricType) {
    ctx.die("This type is not parameterized");
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
  return st.parametricType ? st.parametricType : null;
};

function startTrampoline(thunk_) {
  var thunk = thunk_;
  while (thunk) {
    thunk = thunk();
  }
};

var resetValue;
var invokeValue;
op.continuationreset = function(ctx, tag, continuation) {
  startTrampoline(function() {
    return continuation.$callCPS(ctx, {}, function(value) {
      resetValue = value;
      invokeValue = value;
      return null;
    });
  });
  return resetValue;
};

op.continuationresetCPS = function(ctx, tag, continuation, continuation) {
  console.log("continuation reset in CPS mode");
};

op.continuationcontrolCPS = function(ctx, protect, tag, run, cont) {
  startTrampoline(run.$callCPS(ctx, {}, function(value) {
    resetValue = value;
    return null;
  }, cont));
  return null;
};

op.continuationinvoke = function(ctx, cont, inject) {
  // TODO really place inject inside the cont
  var value = inject.$call(ctx, {});
  startTrampoline(cont(value));
  return invokeValue;
};

op.continuationinvokeCPS = function(ctx, invokedCont, inject, cont) {
  // TODO really place inject inside the cont, use callCPS
  var value = inject.$call(ctx, {});
  return invokedCont(value);
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

//TODO think about polyfill for codePointAt, fromCodePoint

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
    return op['atposnd' + type](array, new NQPArray([x, y]));
  };
  
  op['atpos3d' + type] = function(array, x, y, z) {
    return op['atposnd' + type](array, new NQPArray([x, y, z]));
  };
  
  op['bindpos2d' + type] = function(array, x, y, value) {
    return op['bindposnd' + type](array, new NQPArray([x, y]), value);
  };
  
  op['bindpos3d' + type] = function(array, x, y, z, value) {
    return op['bindposnd' + type](array, new NQPArray([x, y, z]), value);
  };
});
