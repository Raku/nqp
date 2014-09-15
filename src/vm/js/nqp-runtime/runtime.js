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
  var str = str.to_s(ctx).slice(zpos);
  var search = str.match(regex);
  if (search == null) {
    return [0, 1, -1];
  }
  var number = search[0].replace(/_/g, '');
  var poer = number[0] == '-' ? number.length - 1 : number.length;
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

op.iterator = function(array) {
  return new Iter(array);
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
    return parseFloat(arg);
  } else {
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
  } else if (arg instanceof Iter) {
    return arg.idx < arg.target;
  } else if (arg === undefined) {
    return 0;
  } else {
    throw "Can't decide if arg is true";
  }
};

exports.named = function(named) {
  return named;
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


// Placeholder
exports.top_context = function() {
  return null;
};
