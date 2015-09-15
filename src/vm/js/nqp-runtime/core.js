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
}

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
  if (typeof obj === 'number' || typeof obj === 'string') {
      return 0;
  }

  // TODO cases where the type_check_cache isn't authoritative
  var cache = obj._STable.type_check_cache;
  for (var i=0; i < cache.length; i++) {
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
    obj._STable.setMethodCache(cache);
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
    console.log("NYI cloning", obj);
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
    throw "WHERE on this type of thing unimplemented";
  }
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

function boolish(bool) {
  return bool ? 1 : 0;
}

function iscclass(cclass, target, offset) {
  if (offset < 0 || offset >= target.length) return 0;
  switch (cclass) {
    //ANY
    case 65535: return 1;
    //UPPERCASE
    case 1: return boolish(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]) && target[offset] == target[offset].toUpperCase());
    //LOWERCASE
    case 2: return boolish(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]) && target[offset] == target[offset].toLowerCase());
    //ALPHABETIC
    case 4: return boolish(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]));
    //NUMERIC
    case 8: return boolish(/^\d/.test(target[offset]));
    //HEXADECIMAL
    case 16: return boolish(/^[0-9a-fA-F]/.test(target[offset]));
    //WHITESPACE
    case 32: return boolish('\n\u000b\f\r\u0085\u2028\u2029\t \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000'.indexOf(target[offset]) != -1);
    //BLANK
    case 256: return boolish(target[offset] == ' ' || target[offset] == '\t'); //HACK - not all such chars
    //CONTROL
    case 512: return boolish('\n\t\r'.indexOf(target[offset]) != -1); //HACK - not all such chars
    //PUNCTUATION
    case 1024: return boolish(/[.,;?!]/.test(target[offset])); //HACK
    //ALPHANUMERIC
    case 2048: return boolish(/^\w/.test(target[offset]) && target[offset] != '_');
    //NEWLINE
    case 4096: return boolish(target[offset] == '\n' || target[offset] == '\r' || target[offset] == '\u0085'); //HACK
    //WORD
    case 8192: return boolish(/^\w/.test(target[offset]));
    default: throw 'cclass ' + cclass + ' not yet implemented';
  }
}

op.iscclass = function(cclass, target, offset) {
  return iscclass(cclass, target, offset);
};

op.findcclass = function(cclass, target, offset, count) {
  var end = offset + count;
  end = target.length < end ? target.length : end;

  for (var pos = offset; pos < end; pos++) {
    if (iscclass(cclass, target, pos) > 0) {
      return pos;
    }
  }

  return end;
};

op.findnotcclass = function(cclass, target, offset, count) {
  var end = offset + count;
  end = target.length < end ? target.length : end;

  for (var pos = offset; pos < end; pos++) {
    if (iscclass(cclass, target, pos) == 0) {
      return pos;
    }
  }

  return end;
};


op.curlexpad = function(get, set) {
    return new CurLexpad(get, set);
};

op.setcontspec = function(type, cont_spec_type, hash) {
    if (cont_spec_type === 'code_pair') {
        type._STable.addInternalMethod('$$assignunchecked', function(ctx, value) {
          hash.store.$call(ctx, {}, this, value);
          return value;
        });
        type._STable.addInternalMethod('$$assign', function(ctx, value) {
          hash.store.$call(ctx, {}, this, value);
          return value;
        });
        type._STable.addInternalMethod('$$decont', function(ctx) {
          return hash.fetch.$call(ctx, {}, this);
        });
    } else {
        throw "NYI cont spec: "+cont_spec_type;
    }
};

op.iscont = function(cont) {
    return cont.$$decont ? 1 : 0;
};

op.decont = function(ctx, cont) {
    return cont.$$decont ? cont.$$decont(ctx) : cont;
};
