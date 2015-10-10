var op = {};
exports.op = op;

var Hash = require('./hash.js');
var CodeRef = require('./code-ref.js');

var reprs = require('./reprs.js');

exports.CodeRef = CodeRef;

op.atpos = function(array, index) {
  if (array instanceof Array) {
    if (index < 0) {
      index = array.length + index;
    }
    return array[index];
  } else {
    return array.$$atpos(index);
  }
};

op.bindpos = function(array, index, value) {
  if (array instanceof Array) {
    return (array[index] = value);
  } else {
    return array.$$bindpos(index, value);
  }
};

op.getcomp = function(lang) {
  if (lang == 'JavaScript') {
    return {
      eval: function(ctx, named, code) {
        return eval(code);
      }
    };
  } else if (lang == 'nqp') {
    return {
      backend: function(ctx, named) {
        return {
          name: function(ctx, named) {
            return 'js';
          }
        };
      }
    };
  }
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

op.radix = function(radix, str, zpos, flags) {
  if (flags != 2) {throw 'flags != 2 not implemented yet: ' + flags}

  var lowercase = 'a-' + String.fromCharCode('a'.charCodeAt(0) + radix - 11);
  var uppercase = 'A-' + String.fromCharCode('A'.charCodeAt(0) + radix - 11);

  var letters = radix >= 11 ? lowercase + uppercase : '';

  var digitclass = '[0-' + Math.min(radix - 1, 9) + letters + ']';
  var minus = flags & 0x02 ? '-?' : '';
  var regex = new RegExp(
      '^' + minus + digitclass + '(?:_' +
      digitclass + '|' + digitclass + ')*');
  var str = str.slice(zpos);
  var search = str.match(regex);
  if (search == null) {
    return [0, 1, -1];
  }
  var number = search[0].replace(/_/g, '');
  var power = number[0] == '-' ? number.length - 1 : number.length;
  var pow = Math.pow(radix, power);
  var ret = [parseInt(number, radix), pow, zpos + search[0].length];
  return ret;
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
  this.hash = hash;
  this.keys = Object.keys(hash.content);
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
  this._hash = hash.content;
}

IterPair.prototype.iterval = function() {
  return this._hash[this._key];
};
IterPair.prototype.iterkey_s = function() {
  return this._key;
};

IterPair.prototype.key = function(ctx, named) {
  return this._key;
};
IterPair.prototype.value = function(ctx, named) {
  return this._hash[this._key];
};


op.iterator = function(obj) {
  if (obj instanceof Array) {
    return new Iter(obj);
  } else if (obj instanceof Hash) {
    return new HashIter(obj);
  } else {
    throw 'unsupported thing to iterate over';
  }
};


exports.hash = function() {
  return new Hash();
};

exports.slurpy_named = function(named) {
  var hash = new Hash();
  for (key in named) {
    hash.content[key] = named[key];
  }
  return hash;
};

exports.unwrap_named = function(named) {
  if (!named instanceof Hash) console.log('expecting a hash here');
  return named.content;
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
  if (idx < 0) idx += array.length;
  return array.hasOwnProperty(idx) ? 1 : 0;
};

op.create = function(obj) {
  return obj._STable.REPR.allocate(obj._STable);
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

function Capture(named, pos) {
  this.pos = pos;
  this.named = named;
}

op.savecapture = function(args) {
  return new Capture(args[1], Array.prototype.slice.call(args, 2));
};
op.captureposelems = function(capture) {
  return capture.pos.length;
};
op.captureposarg = function(capture, i) {
  return capture.pos[i];
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
  if (typeof obj === 'number' || typeof obj === 'string' || obj instanceof Array) {
    return 0;
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
  obj._STable.type_check_cache = cache;
  return obj;
};

op.setmethcache = function(obj, cache) {
  if (!cache instanceof Hash) {
    console.log('we expect a hash here');
  }
  obj._STable.setMethodCache(cache.content);
  return obj;
};

op.setmethcacheauth = function(obj, isAuth) {
  /* TODO we currently assume method caches are always authorative
    sadly that's not always the case*/
  return obj;
};

op.reprname = function(obj) {
  return obj._STable.REPR.name;
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
  } else if (obj instanceof Array) {
    return obj.slice();
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
    throw 'WHERE on this type of thing unimplemented';
  }
};


op.bindcurhllsym = function(name, value) {
  /* STUB */
  return value;
};

op.settypehllrole = function(type, role) {
  /* STUB */
  return role;
};

op.sethllconfig = function(language, configHash) {
  /* STUB */
  return configHash;
};

var sha1 = require('sha1');

op.sha1 = function(text) {
  return sha1(text).toUpperCase();
};

op.curlexpad = function(get, set) {
  return new CurLexpad(get, set);
};

op.setcontspec = function(type, cont_spec_type, hash) {
  var fetch = hash.content.fetch;
  var store = hash.content.store;
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
  if (obj instanceof Array) {
    return obj.length;
  } else if (obj instanceof Hash) {
    return obj.$$elems();
  }
};

op.markcodestatic = function(code) {
  code.isStatic = true;
  return code;
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

op.getcomp = function(language) {
  return compilerRegistry[language];
};

op.backendconfig = function() {
  var config = new Hash();
  config.content.intvalsize = 4;
  return config;
};

op.ordbaseat = function(str, index) {
  throw 'ordbaseat NYI';
};
