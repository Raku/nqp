var op = {};
exports.op = op;

var Hash = require('./hash.js');
var CodeRef = require('./code-ref.js');

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

Iter.prototype.$$to_bool = function() {
  return arg.idx < arg.target;
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

HashIter.prototype.$$to_bool = function() {
  return arg.idx < arg.target;
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

exports.op.ishash = function(obj) {
  return obj instanceof Hash ? 1 : 0;
};

op.existspos = function(array, idx) {
  if (idx < 0) idx += array.length;
  return boolish(array.hasOwnProperty(idx));
};

op.create = function(obj) {
  return obj._STable.REPR.allocate(obj._STable);
};

op.defined = function(obj) {
  // TODO - handle more things that aren't defined
  if (obj === undefined || obj === null) {
    return 0;
  }
  return 1;
};
