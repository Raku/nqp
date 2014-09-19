var op = {};
exports.op = op;


op.print = function(arg) {
  process.stdout.write(arg);
};
op.say = function(arg) {
  if (process.stdout) {
    process.stdout.write(arg);
    process.stdout.write('\n');
  } else {
    console.log(arg);
  }
};

op.getcomp = function(lang) {
  if (lang == 'JavaScript') {
    return function(ctx, named, code) {
      return eval(code);
    };
  }
};

op.isinvokable = function(obj) {
  return (typeof obj == 'function' ? 1 : 0);
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

function HashIter(hash) {
  this.hash = hash;
  this.keys = Object.keys(hash);
  this.target = this.keys.length;
  this.idx = 0;
}

HashIter.prototype.shift = function() {
  return new IterPair(this.hash,this.keys[this.idx++]);
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
    throw "unsupported thing to iterate over";
  }
};

exports.to_str = function(arg) {
  if (typeof arg == 'number') {
    return arg.toString();
  } else if (typeof arg == 'string') {
    return arg;
  } else {
    console.log(arg);
    throw "Can't convert to str";
  }
};

exports.to_num = function(arg) {
  if (typeof arg == 'number') {
    return arg;
  } else if (typeof arg == 'string') {
    var ret = parseFloat(arg);
    return isNaN(ret) ? 0 : ret;
  } else if (arg instanceof Array) {
    return arg.length;
  } else {
    console.log(arg);
    throw "Can't convert to num";
  }
};

exports.to_int = function(arg) {
  if (typeof arg == 'number') {
    return arg | 0;
  } else {
    throw "Can't convert to int";
  }
};

exports.to_bool = function(arg) {
  if (typeof arg == 'number') {
    return arg ? 1 : 0;
  } else if (typeof arg == 'string') {
    return arg == '' || arg == '0' ? 0 : 1;
  } else if (arg instanceof Array) {
    return arg.length == 0 ? 0 : 1;
  } else if (arg instanceof Iter || arg instanceof HashIter) {
    return arg.idx < arg.target;
  } else if (arg === undefined) {
    return 0;
  } else {
    throw "Can't decide if arg is true";
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


function Hash() {
}

exports.hash = function() {
  return new Hash();
};
exports.op.ishash = function(obj) {
  return obj instanceof Hash ? 1 : 0;
};


// Placeholder
exports.top_context = function() {
  return null;
};


op.existspos = function(array, idx) {
  if (idx < 0) idx += array.length;
  return boolish(array.hasOwnProperty(idx));
};

// Serialization stubs

op.deserialize = function(blob, scRef, sh, cr, conflict) {
};

op.createsc = function(handle) {
};

op.scsetdesc = function(sc, desc) {
};

// Filesystem handling
// TODO - perhaps move it to a seperate file/module

var fs = require('fs-ext');
var sleep = require('sleep');
var iconv = require('iconv-lite');

function boolish(bool) {
    return bool ? 1 : 0;
}

op.stat = function(file, code) {
  var EXISTS = 0;
  var FILESIZE = 1;
  var ISDIR = 2;
  var ISREG = 3;
  var ISDEV = 4;
  var CREATETIME = 5;
  var ACCESSTIME = 6;
  var MODIFYTIME = 7;
  var CHANGETIME = 8;
  var BACKUPTIME = 9;
  var UID = 10;
  var GID = 11;
  var ISLNK = 12;
  var PLATFORM_DEV = -1;
  var PLATFORM_INODE = -2;
  var PLATFORM_MODE = -3;
  var PLATFORM_NLINKS = -4;
  var PLATFORM_DEVTYPE = -5;
  var PLATFORM_BLOCKSIZE = -6;
  var PLATFORM_BLOCKS = -7;
  if (code == EXISTS) {
    return boolish(fs.existsSync(file));
  }
  var stats = fs.lstatSync(file);
  switch (code) {
    case FILESIZE: return stats.size;
    case ISDIR: return boolish(stats.isDirectory());
    case ISREG: return boolish(stats.isFile());
    case ISDEV:
      return boolish(stats.isCharacterDevice() || stats.isBlockDevice());
    case CREATETIME: return -1;
    case ACCESSTIME: return stats.atime.getTime() / 1000;
    case MODIFYTIME: return stats.mtime.getTime() / 1000;
    case CHANGETIME: return stats.ctime.getTime() / 1000;
    case BACKUPTIME: return -1;
    case UID: return stats.uid;
    case GID: return stats.gid;
    case ISLNK: return boolish(stats.isSymbolicLink());
    case PLATFORM_DEV: return stats.dev;
    case PLATFORM_INODE: return stats.ino;
    case PLATFORM_MODE: return stats.mode;
    case PLATFORM_NLINKS: return stats.nlink;
    case PLATFORM_DEVTYPE: return stats.rdev;
    case PLATFORM_BLOCKSIZE: return stats.blksize;
    case PLATFORM_BLOCKS: return stats.blocks;
  }
};

