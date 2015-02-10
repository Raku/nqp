var op = {};
exports.op = op;

var Hash = require('./hash.js');
var CodeRef = require('./code-ref.js');

var reprs = require('./reprs.js');

exports.CodeRef = CodeRef;

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
  return (obj instanceof CodeRef ? 1 : 0);
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
  this.keys = Object.keys(hash);
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
    hash[key] = named[key];
  }
  return hash;
};

exports.named = function(parts) {
  var all = {};
  for (var i=0; i < parts.length; i++) {
    for (var key in parts[i]) {
      all[key] = parts[i][key];
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
        throw "invocationHandler argument to setinvokespec not supported";
    }
    obj._STable.setinvokespec(classHandle, attrName, invocationHandler);
    return obj;
};

// Stub
op.setboolspec = function(obj, mode, method) {
    obj._STable.setboolspec(mode, method);
    return obj;
};

function Capture(named,pos) {
  this.pos = pos;
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
  return codeRef.codeObj ;
};

op.curcode = function() {
  var current = arguments.callee.caller;
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
}

op.findmethod = function(obj, method) {
  return obj._STable.method_cache[method];
};

op.istype = function(obj, type) {
  // TODO cases where the type_check_cache isn't authoritative
  var cache = obj._STable.type_check_cache;
  for (var i=0; i < cache.length; i++) {
    if (cache[i] === type) {
      return 1;
    }
  }
  return 0;
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
}

op.can = function(obj, method) {
  return obj._STable.method_cache.hasOwnProperty(method) ? 1 : 0;
};

op.getcodename = function(code) {
  return code.name;
};

op.setcodename = function(code, name) {
  code.name = name;
};

// STUB
op.clone = function(obj) {
  console.log("cloning", obj);
  return obj;
};

var where_counter = 0;
op.where = function(obj) {
  if (obj._STable) { // HACK
    if (!obj._WHERE) {
        obj._WHERE = ++where_counter;
    }
    return obj._WHERE;
  } else {
    throw "WHERE on this type of thing unimplemented";
  }
};
