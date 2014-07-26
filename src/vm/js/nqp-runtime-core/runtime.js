var sha1 = require('sha1');
var serialization = require('./serialization.js');
var reprs = require('./reprs.js');
var bootstrap = require('./bootstrap.js');
var Hash = require('./hash.js');
var CodeRef = require('./code_ref.js');
var Ctx = require('./ctx.js');
var sixmodel = require('./sixmodel.js');
var Null = require('./null.js');
var SerializationWriter = require('./serialization_writer.js');
var SerializationContext = require('./serialization_context.js');

var helpers = require('./helpers.js');
nqp_bool = helpers.nqp_bool;

// Those are used by emitted code
exports.deserialize = serialization.deserialize;
exports.sc = serialization.sc;
exports.set_code_refs = serialization.set_code_refs;

exports.CodeRef = CodeRef;

exports.top_context = function() {
  var ctx = new Ctx('this is outermost ctx!');
  ctx.handle('CATCH', function() {
    console.log('unhandled catch');
    process.exit();
  });
  return ctx;
};

/* Monkey Patching */

String.prototype.to_n = function() {
  var n = parseFloat(this);
  return isNaN(n) ? 0 : n;
};
String.prototype.to_i = function() {
  return parseInt(this);
};
String.prototype.to_s = function() {
  return this.valueOf();
};
String.prototype.Bool = function() {
  return (this.valueOf() && this.valueOf() != '0') ? 1 : 0;
};
String.prototype.vtable_defined = function() {
  return 1;
};
Number.prototype.to_n = function() {
  return this.valueOf();
};
Number.prototype.to_s = function() {
  return this.toString();
};
Number.prototype.to_i = function() {
  return Math.floor(this);
};
Number.prototype.vtable_defined = function() {
  return 1;
};
Number.prototype.Bool = function() {
  return this.valueOf() ? 1 : 0;
};

Object.defineProperty(Array.prototype, 'to_n', {value: function() {
  return this.length;
},enumerable: false});

Object.defineProperty(Array.prototype, 'Bool', {value: function() {
  return this.length == 0 ? 0 : 1;
},enumerable: false});


Object.defineProperty(Array.prototype, 'at_pos', {value: function(ctx, _NAMED, index) {
  if (index < 0) index = this.length + index;
  if (!this.hasOwnProperty(index)) return Null;
  return this[index];
},enumerable: false});

Object.defineProperty(Array.prototype, 'bind_pos', {value: function(ctx, _NAMED, index, value) {
  if (index < 0) index = this.length + index;
  return (this[index] = value);
},enumerable: false});

Object.defineProperty(Array.prototype, 'repr_clone', {value: function(ctx, _NAMED, index, value) {
  return this.slice();
},enumerable: false});


//HACK - nasty hack till we wrap Arrays properly
var oldPush = Array.prototype.push;
Object.defineProperty(Array.prototype, 'push', {value: function(ctx, _NAMED, value) {
  if (ctx instanceof Ctx && arguments.length == 3) {
    return oldPush.call(this, value);
  } else {
    return oldPush.apply(this, arguments);
  }
},enumerable: false});

//HACK - nasty hack till we wrap Arrays properly
var oldUnshift = Array.prototype.unshift;
Object.defineProperty(Array.prototype, 'unshift', {value: function(ctx, _NAMED, value) {
  if (ctx instanceof Ctx && arguments.length == 3) {
    return oldUnshift.call(this, value);
  } else {
    return oldUnshift.apply(this, arguments);
  }
},enumerable: false});


/* Stuff to allow us to run fixup code */
function LexInfo() {
}
LexInfo.prototype.FETCH = function() {
  return this;
};
LexInfo.prototype.set_static_lexpad_value = function() {
  return this;
};
LexInfo.prototype.finish_static_lexpad = function() {
  return this;
};
exports.lexinfo = function(cuid) {
  return new LexInfo();
};
function ModuleLoader() {
}
exports.ModuleLoader = new ModuleLoader();
ModuleLoader.prototype.load_module = function(ctx, _NAMED, module) {
  var saved = require('./' + module.replace(/::/g, '/')).ctxsave;
  if (saved['GLOBALish'] != Null) {
    console.log('should merge globals');
  }
};
ModuleLoader.prototype.load_setting = function(ctx, _NAMED, setting) {
  console.log('loading setting: ' + setting);
  exports.load_setting(setting);
  return settings[setting];
};

Function.prototype.set_outer_ctx = function(ctx, _NAMED, outer_ctx) {
};

exports.empty_named = function() {
  return new Hash();
};
exports.named = function() {
  var hash = new Hash();
  for (var i = 0; i < arguments.length; i++) {
    for (var key in arguments[i]) {
      if (arguments[i].hasOwnProperty(key)) {
        hash[key] = arguments[i][key];
      }
    }
  }
  return hash;
};


var op = {};

exports.require_ops = function(module) {
  var ops = require(module);
  for (var name in ops) {
    op[name] = ops[name];
  }
};


op.concat = function(ctx, a, b) {
  return a.to_s(ctx) + b.to_s(ctx);
};
op.falsey = function(ctx, value) {
  return nqp_bool(!value.Bool(ctx));
};
op.istrue = function(ctx, value) {
  return nqp_bool(value.Bool(ctx));
};
op.isfalse = function(ctx, value) {
  return op.istrue(ctx, value) ? 0 : 1;
};
op.add_n = function(ctx, a, b) {
  return a.to_n(ctx) + b.to_n(ctx);
};
op.add_i = function(ctx, a, b) {
  return a.to_i(ctx) + b.to_i(ctx);
};
op.mul_i = function(ctx, a, b) {
  return a.to_i(ctx) * b.to_i(ctx);
};
op.mul_n = function(ctx, a, b) {
  return a.to_n(ctx) * b.to_n(ctx);
};
op.div_n = function(ctx, a, b) {
  return a.to_n(ctx) / b.to_n(ctx);
};
op.div_i = function(ctx, a, b) {
  return Math.floor(a.to_i(ctx) / b.to_i(ctx));
};
op.mod_n = function(ctx, a, b) {
  return a.to_n(ctx) % b.to_n(ctx);
};
op.isle_n = function(ctx, a, b) {
  return nqp_bool(a.to_n(ctx) <= b.to_n(ctx));
};
op.isle_s = function(ctx, a, b) {
  return nqp_bool(a.to_s(ctx) <= b.to_s(ctx));
};
op.islt_n = function(ctx, a, b) {
  return nqp_bool(a.to_n(ctx) < b.to_n(ctx));
};
op.islt_i = function(ctx, a, b) {
  return nqp_bool(a.to_i(ctx) < b.to_i(ctx));
};
op.isgt_i = function(ctx, a, b) {
  return nqp_bool(a.to_i(ctx) > b.to_i(ctx));
};
op.islt_s = function(ctx, a, b) {
  return nqp_bool(a.to_s(ctx) < b.to_s(ctx));
};
op.isgt_s = function(ctx, a, b) {
  return nqp_bool(a.to_s(ctx) > b.to_s(ctx));
};
op.isgt_n = function(ctx, a, b) {
  return nqp_bool(a.to_n(ctx) > b.to_n(ctx));
};
op.isge_i = function(ctx, a, b) {
  return nqp_bool(a.to_i(ctx) >= b.to_i(ctx));
};
op.isge_n = function(ctx, a, b) {
  return nqp_bool(a.to_n(ctx) >= b.to_n(ctx));
};
op.sub_n = function(ctx, a, b) {
  return a.to_n(ctx) - b.to_n(ctx);
};
op.sub_i = function(ctx, a, b) {
  return a.to_i(ctx) - b.to_i(ctx);
};
op.isne_n = function(ctx, a, b) {
  return nqp_bool(a.to_n(ctx) != b.to_n(ctx));
};
op.iseq_n = function(ctx, a, b) {
  return nqp_bool(a.to_n(ctx) == b.to_n(ctx));
};
op.iseq_i = function(ctx, a, b) {
  return nqp_bool(a.to_i(ctx) == b.to_i(ctx));
};
op.log_n = function(ctx, n) {
  return Math.log(n.to_n(ctx));
};

op.radix = function(ctx, radix, str, zpos, flags) {
  if (flags != 2) {throw 'flags != 2 not implemented yet: ' + flags}

  var letters = radix >= 11 ? 'a-' + String.fromCharCode('a'.charCodeAt(0) + radix - 11) + 'A-' + String.fromCharCode('A'.charCodeAt(0) + radix - 11) : '';
  var digitclass = '[0-' + Math.min(radix - 1, 9) + letters + ']';
  var minus = flags & 0x02 ? '-?' : '';
  var regex = new RegExp('^' + minus + digitclass + '(?:_' + digitclass + '|' + digitclass + ')*');
  //  console.log('radix regex',regex);
  var str = str.to_s(ctx).slice(zpos);
  var search = str.match(regex);
  if (search == null) {
    return [0, 1, -1];
  }
  var number = search[0].replace(/_/g, '');
  var ret = [parseInt(number, radix), Math.pow(radix, number[0] == '-' ? number.length - 1 : number.length), zpos + search[0].length];
  return ret;
};

op.flip = function(ctx, str) {
  return str.to_s(ctx).split('').reverse().join('');
};

op.bitor_i = function(ctx, a, b) {
  return a | b;
};
op.bitand_i = function(ctx, a, b) {
  return a & b;
};
op.bitxor_i = function(ctx, a, b) {
  return a ^ b;
};
op.bitshiftl_i = function(ctx, a, b) {
  return a << b;
};
op.bitshiftr_i = function(ctx, a, b) {
  return a >> b;
};
op.bitneg_i = function(ctx, a) {
  return ~a;
};

op.list = function() {
  var ret = Array.prototype.slice.call(arguments);
  ret.shift();
  return ret;
};
op.list_i = function() {
  var ret = Array.prototype.slice.call(arguments);
  ret.shift();
  return ret;
};
op.qlist = op.list;
op.list_s = op.list;
op.iseq_s = function(ctx, a, b) {
  return nqp_bool(a.to_s(ctx) == b.to_s(ctx));
};
op.isne_s = function(ctx, a, b) {
  return nqp_bool(a.to_s(ctx) != b.to_s(ctx));
};
op.stringify = function(ctx, a) {
  return a.to_s(ctx);
};
op.numify = function(ctx, a) {
  return a.to_n(ctx);
};
op.eqaddr = function(ctx, a, b) {
  return nqp_bool(a === b);
};
op.hash = function() {
  var ret = new Hash();
  for (var i = 1; i < arguments.length; i += 2) {
    ret[arguments[i]] = arguments[i + 1];
  }
  return ret;
};
op.who = function(ctx, obj) {
  return obj._STable.WHO;
};
op.setwho = function(ctx, obj, value) {
  obj._STable.WHO = value;
  return obj;
};

op.bindkey_i = function(ctx, obj, key, value) {
  return obj[key] = value;
};
op.bindattr = function(ctx, obj, pkg, attr, value) {
  return (obj[attr] = value);
};
op.bindattr_i = function(ctx, obj, pkg, attr, value) {
  return (obj[attr] = value.to_i());
};
op.bindattr_n = function(ctx, obj, pkg, attr, value) {
  return (obj[attr] = value.to_n());
};
op.bindattr_s = function(ctx, obj, pkg, attr, value) {
  return (obj[attr] = value.to_s());
};

op.getattr = function(ctx, obj, pkg, attr) {
  return exports.getattr(obj, attr);
};
op.getattr_i = function(ctx, obj, pkg, attr) {
  return exports.getattr(obj, attr);
};
op.getattr_s = function(ctx, obj, pkg, attr) {
  return exports.getattr(obj, attr);
};
op.getattr_n = function(ctx, obj, pkg, attr) {
  return exports.getattr(obj, attr);
};

op.takeclosure = function(ctx, closure) {
  return closure;
};
op.islist = function(ctx, list) {
  return nqp_bool(list instanceof Array);
};
op.ishash = function(ctx, obj) {
  return nqp_bool(obj instanceof Hash);
};
op.how = function(ctx, obj) {
  return obj._STable.HOW;
};
op.what = function(ctx, obj) {
  if (!obj._STable) return Null;
  return obj._STable.WHAT;
};
op.die = function(ctx, msg) {
  throw ({CATCH: msg});
};
op.die_s = function(ctx, msg) {
  throw msg;
};
op.istype = function(ctx, obj, type) {
  if (!obj) return 0; //HACK
  if (!obj._STable) return 0; // HACK
  var cache = obj._STable.type_check_cache;

  /*TODO*/
  if (!cache) {
    console.log('no type_check_cache');
    return 0;
  }
  for (var i = 0; i < cache.length; i++) {
    if (cache[i] === type) {
      return 1;
    }
  }
  return 0;
};
op.chars = function(ctx, s) {
  return s.to_s(ctx).length;
};
op.join = function(ctx, del, array) {
  return array.map(function(value) {return value.to_s()}).join(del);
};
op.index = function(ctx, str, pattern, starting) {
  starting = starting || 0;
  return str.to_s(ctx).indexOf(pattern, starting);
};
op.rindex = function(ctx, str, pattern, starting) {
  if (starting == undefined) {
    return str.lastIndexOf(pattern);
  } else {
    return str.lastIndexOf(pattern, starting);
  }
};
op.chr = function(ctx, code) {
  return String.fromCharCode(code.to_i(ctx));
};
op.ord = function(ctx, str, index) {
  index = index || 0;
  return str.to_s(ctx).charCodeAt(index);
};
op.ordfirst = op.ord;
op.ordat = op.ord;
op.lc = function(ctx, str) {
  return str.to_s(ctx).toLowerCase();
};
op.uc = function(ctx, str) {
  return str.to_s(ctx).toUpperCase();
};
op.cmp_i = function(ctx, a, b) {
  if (a == b) {
    return 0;
  } else if (a < b) {
    return -1;
  } else {
    return 1;
  }
};
op.cmp_n = function(ctx, a, b) {
  if (a == b) {
    return 0;
  } else if (a < b) {
    return -1;
  } else {
    return 1;
  }
};
op.cmp_s = function(ctx, a, b) {
  if (a == b) {
    return 0;
  } else if (a < b) {
    return -1;
  } else {
    return 1;
  }
};
op.pow_n = function(ctx, a, b) {
  return Math.pow(a, b);
};
op.neg_i = function(ctx, a) {
  return -a;
};
op.neg_n = function(ctx, a) {
  return -a;
};
op.abs_i = function(ctx, a) {
  return Math.abs(a);
};
op.abs_n = function(ctx, a) {
  return Math.abs(a);
};
op.ceil_i = function(ctx, a) {
  return Math.ceil(a);
};
op.ceil_n = function(ctx, a) {
  return Math.ceil(a);
};
op.floor_i = function(ctx, a) {
  return Math.floor(a);
};
op.floor_n = function(ctx, a) {
  return Math.floor(a);
};

op.knowhow = function() {
  return bootstrap.knowhow;
};
op.knowhowattr = function() {
  return bootstrap.knowhowattr;
};

op.elems = function(ctx, obj) {
  if (obj instanceof Array) {
    return obj.length;
  } else if (obj instanceof Hash) {
    var count = 0;
    for (var k in obj) {
      count++;
    }
    return count;
  }
};
op.substr = function(ctx, a, b, c) {
  return a.to_s(ctx).substr(b, c);
};
op.x = function(ctx, a, b) {
  if (!b) return '';
  var ret = a;
  while (--b) ret += a;
  return ret;
};
op.not_i = function(ctx, a) {
  return a ? 0 : 1;
};
op.atpos = function(ctx, a, b) {
  return a[b];
};
op.atpos_s = function(ctx, a, b) {
  return a[b].to_s();
};
op.bindpos = function(ctx, a, i, b) {
  return a[i] = b;
};
op.bindpos_i = function(ctx, a, i, b) {
  return a[i] = b.to_i();
};
op.bindpos_s = function(ctx, a, i, b) {
  return a[i] = b.to_s();
};
op.push = function(ctx, a, b) {
  return a.push(b);
};
op.push_i = function(ctx, a, b) {
  return a.push(b);
};
op.push_s = function(ctx, a, b) {
  return a.push(b);
};
op.pop_i = function(ctx, a) {
  return a.pop();
};
op.atpos_i = function(ctx, a, b) {
  return a[b];
};
op.shift = function(ctx, a) {
  return a.shift();
};
op.unshift = function(ctx, a, b) {
  return a.unshift(b);
};
op.pop = function(ctx, a) {
  return a.pop();
};
op.rethrow = function(ctx, e) {
  e.rethrow();
};
op.resume = function(ctx, e) {
  e.resume();
};

// helper for regexs
exports.rxpeek = function(bstack, mark) {
  var ptr = bstack.length;
  while (ptr >= 0) {
    if (bstack[ptr] == mark)
      break;
    ptr -= 4;
  }
  return ptr;
};

function ArrayIterator(l) {
  this.i = 0;
  this.l = l;
}
ArrayIterator.prototype.shift = function() {
  return this.l[this.i++];
};
ArrayIterator.prototype.Bool = function() {
  return this.i < this.l.length;
};

function HashIterator(hash) {
  this.hash = hash;
  this.keys = Object.keys(hash);
}
HashIterator.prototype.shift = function() {
  var key = this.keys.shift();
  return new HashKeyValue(key, this.hash[key]);
};
HashIterator.prototype.Bool = function() {
  return this.keys.length != 0;
};
function HashKeyValue(key, value) {
  this._key = key;
  this._value = value;
}
HashKeyValue.prototype.key = function(ctx, _NAMED, self) {
  return this._key;
};
HashKeyValue.prototype.value = function(ctx, _NAMED, self) {
  return this._value;
};
HashKeyValue.prototype.to_s = function(ctx, _NAMED) {
  return this._key;
};

op.iterator = function(ctx, obj) {
  if (obj instanceof Hash) {
    return new HashIterator(obj);
  } else if (obj instanceof Array) {
    return new ArrayIterator(obj);
  }
};
op.iterval = function(ctx, kv) {
  return kv._value;
};
op.iterkey_s = function(ctx, kv) {
  return kv._key;
};

op.isinvokable = function(ctx, obj) {
  // check in a better way for invocation spec
  return nqp_bool(obj instanceof Function || obj.apply instanceof Function);
};

op.print = function(ctx, arg) {
  process.stdout.write(arg.to_s(ctx));
};
op.say = function(ctx, arg) {
  process.stdout.write(arg.to_s(ctx));
  process.stdout.write('\n');
};

op.getstaticcode = function(ctx, code) {
  return code.static_coderef();
};


op.null = function(ctx) {
  return Null;
};
op.isnull = function(ctx, value) {
  return nqp_bool(value === Null || value === null);
};
op.null_s = function(ctx) {
  return Null;
};
op.isnull_s = function(ctx, value) {
  return nqp_bool(value === Null);
};
op.create = function(ctx, obj) {
  return new obj.constructor();
};
op.newtype = function(ctx, how, reprname) {
  var repr = new reprs[reprname]();
  return repr.type_object_for(how);
};
op.reprname = function(ctx, obj) {
  return obj._STable.REPR.constructor.name;
};
op.existskey = function(ctx, hash, key) {
  return nqp_bool(hash.hasOwnProperty(key.to_s(ctx)));
};
op.existspos = function(ctx, array, idx) {
  if (idx < 0) idx += array.length;
  return nqp_bool(array.hasOwnProperty(idx));
};
op.deletepos = function(ctx, array, idx) {
  array.splice(idx, 1);
};
op.deletekey = function(ctx, hash, key) {
  delete hash[key];
};

op.iscont = function(ctx, cont) {
  return nqp_bool(cont.cont_FETCH);
};
op.assign = function(ctx, cont, value) {
  return cont.cont_STORE(ctx, exports.empty_named(), value);
};
op.assignunchecked = function(ctx, cont, value) {
  return cont.cont_STORE(ctx, exports.empty_named(), value);
};
op.decont = function(ctx, cont) {
  if (cont.cont_FETCH) return cont.cont_FETCH(ctx, exports.empty_named());
  return cont;
};

op.sqrt_n = function(ctx, x) {
  return Math.sqrt(x.to_n(ctx));
};

function gcd(a, b) {
  while (b != 0) {
    var t = b;
    b = a % b;
    a = t;
  }
  return a;
}
op.gcd_i = function(ctx, a, b) {
  return gcd(a.to_i(ctx), b.to_i(ctx));
};
op.lcm_i = function(ctx, a, b) {
  return Math.abs(a * b) / gcd(a.to_i(ctx), b.to_i(ctx));
};


/* Trigonometry */

op.sin_n = function(ctx, x) {
  return Math.sin(x.to_n(ctx));
};
op.asin_n = function(ctx, x) {
  return Math.asin(x.to_n(ctx));
};
op.cos_n = function(ctx, x) {
  return Math.cos(x.to_n(ctx));
};
op.acos_n = function(ctx, x) {
  return Math.acos(x.to_n(ctx));
};
op.tan_n = function(ctx, x) {
  return Math.tan(x.to_n(ctx));
};
op.atan_n = function(ctx, x) {
  return Math.atan(x.to_n(ctx));
};
op.atan2_n = function(ctx, x, y) {
  return Math.atan2(x.to_n(ctx), y.to_n(ctx));
};
op.sinh_n = function(ctx, x) {
  return (Math.exp(x) - Math.exp(-x)) / 2;
};
op.cosh_n = function(ctx, x) {
  return (Math.exp(x) + Math.exp(-x)) / 2;
};
op.tanh_n = function(ctx, x) {
  return (Math.exp(x) - Math.exp(-x)) / (Math.exp(x) + Math.exp(-x));
};
op.asec_n = function(ctx, x) {
  return Math.acos(1 / x.to_n(ctx));
};
op.sec_n = function(ctx, x) {
  return 1 / Math.cos(x.to_n(ctx));
};
op.sech_n = function(ctx, x) {
  return 1 / op.cosh_n(ctx, x);
};



function bootType(type_name, repr_name) {

  var type_object = bootstrap.knowhow.new_type(exports.top_context(), new Hash({repr: repr_name}));
  //meta_obj.name = type_name;
  return type_object;
}

var BOOTStr = bootType('BOOTStr', 'P6str');
var BOOTInt = bootType('BOOTInt', 'P6int');
var BOOTNum = bootType('BOOTNum', 'P6num');

/* TODO setboolspec
  BOOTStr MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO
  BOOTInt MODE_UNBOX_INT
  BOOTNum MODE_UNBOX_NUM
*/

/* Boxing */

op.bootstr = function() {
  return BOOTStr;
};
op.bootint = function() {
  return BOOTInt;
};
op.bootnum = function() {
  return BOOTNum;
};

/*HACK*/
function Bootarray() {
  this._type_object = 1;
}
op.bootarray = function() {
  return new Bootarray();
};
/*HACK*/
function Boothash() {
  this._type_object = 1;
}
op.boothash = function() {
  return new Boothash();
};

op.box_s = function(ctx, str, type) {
  var repr = type._STable.REPR;
  var obj = repr.allocate(type._STable);
  repr.set_str(obj, str);
  return obj;
};
op.unbox_s = function(ctx, obj) {
  if (typeof obj === 'string') return obj;
  return obj._STable.REPR.get_str(obj);
};
op.box_i = function(ctx, i, type) {
  var repr = type._STable.REPR;
  var obj = repr.allocate(type._STable);
  repr.set_int(obj, i);
  return obj;
};
op.unbox_i = function(ctx, obj) {
  if (typeof obj === 'number') return obj;
  return obj._STable.REPR.get_int(obj);
};
op.box_n = function(ctx, i, type) {
  var repr = type._STable.REPR;
  var obj = repr.allocate(type._STable);
  repr.set_num(obj, i);
  return obj;
};
op.unbox_n = function(ctx, obj) {
  if (typeof obj === 'number') return obj;
  return obj._STable.REPR.get_num(obj);
};
op.splice = function(ctx, target, values, offset, length) {
  var args = [offset, length];
  for (var i = 0; i < values.length; i++) {
    args.push(values[i]);
  }
  target.splice.apply(target, args);
};

op.loadbytecode = function(ctx, file) {
  if (file == 1) {
    /* HACK */
  } else {
    return require(file).ctxsave;
  }
};
/*op.getcurhllsym = function(ctx, sym) {
  if (sym == 'ModuleLoader') {
    return new ModuleLoader();
  }
};*/

var hllsym = {};
op.bindcurhllsym = function(ctx, sym, value) {
  hllsym[sym] = value;
};
op.getcurhllsym = function(ctx, sym) {
  //  if (!hllsym[sym]) {
  //    console.log("No such hll sym: "+sym);
  //  }
  return hllsym[sym] || Null;
};

op.time_n = function(ctx) {
  return Date.now() / 1000;
};
op.time_i = function(ctx) {
  return Math.round(Date.now() / 1000);
};
op.sha1 = function(ctx, text) {
  return sha1(text).toUpperCase();
};
op.getcodename = function(ctx, code) {
  //HACK
  return code.hasOwnProperty('code_name') ? code.code_name : code.code.name;
};
op.setcodename = function(ctx, code, name) {
  code.code_name = name;
};
op.getcodeobj = function(ctx, code) {
  // HACK
  if (code === null) {
    return null;
  } else {
    return code.obj;
  }
};
op.setcodeobj = function(ctx, code, obj) {
  code.obj = obj;
};
op.setinvokespec = function(ctx, obj, classHandle, name, invocationHandler) {
  if (invocationHandler != Null) {
    throw 'invocationHandler to setinvokespec not yet supported';
  } else {
    obj._STable.obj_constructor.prototype.apply = function(thisArg, argsArray) {
      return op.getattr(argsArray[0], this, classHandle, name).apply(thisArg, argsArray);
    };
  }
};

op.freshcoderef = function(ctx, code_ref) {
  if (code_ref instanceof CodeRef) {
    //TODO set static info
    return code_ref.repr_clone();
  } else if (typeof code_ref == 'function') {
    //HACK
    return code_ref;
  }
  //return code_ref.clone();
};

function Capture(positionals) {
  this.positionals = positionals;
}
op.savecapture = function(args) {
  return new Capture(Array.prototype.slice.call(args, 2));
};
op.usecapture = op.savecapture;
op.captureposelems = function(ctx, capture) {
  return capture.positionals.length;
};
op.captureposarg = function(ctx, capture, i) {
  return capture.positionals[i];
};

var MODE_CALL_METHOD = 0;
var MODE_UNBOX_INT = 1;
var MODE_UNBOX_NUM = 2;
var MODE_UNBOX_STR_NOT_EMPTY = 3;
var MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO = 4;
var MODE_NOT_TYPE_OBJECT = 5;
var MODE_BIGINT = 6;
var MODE_ITER = 7;
var MODE_HAS_ELEMS = 8;

op.setboolspec = function(ctx, obj, mode, method) {
  switch (mode) {
    case MODE_CALL_METHOD:
      obj._STable.obj_constructor.prototype.Bool = sixmodel.adapt_method(method);
      break;
    case MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO:
      obj._STable.obj_constructor.prototype.Bool = function() {
        var str = this._STable.REPR.get_str(this);
        return str != '' && str != '0';
      };
      break;
    case MODE_NOT_TYPE_OBJECT:
      obj._STable.obj_constructor.prototype.Bool = function(ctx) {
        return op.isconcrete(ctx, obj);
      };
      break;
    default:
      throw 'boolification mode NYI:' + mode;
  }
};
op.defined = function(ctx, obj) {
  return nqp_bool(obj != null && obj !== Null && !obj._type_object);
};
op.isconcrete = op.defined;
op.split = function(ctx, seperator, string) {
  string = string.to_s(ctx);
  seperator = seperator.to_s(ctx);
  if (string == '') return [];
  return string.split(seperator);
};
op.can = function(ctx, obj, method) {
  return nqp_bool(typeof obj[method] == 'function');
};
op.curlexpad = function(ctx) {
  return ctx;
};

op.clone = function(ctx, obj) {
  if (typeof obj == 'function') {
    console.log('cloning a function');
    return obj;
  } else {
    if (obj.repr_clone) {
      return obj.repr_clone();
    } else {
      console.log(obj);
      console.log(obj.repr_clone);
      console.trace("can't clone");
      throw "Can't clone:";
    }
  }
};

op.settypecache = function(ctx, obj, cache) {
  obj._STable.type_check_cache = cache;
};

// TODO consider the case when the method cache is not authoritative
op.setmethcache = function(ctx, obj, method_cache) {
  obj._STable.setMethodCache(method_cache);
};

op.setmethcacheauth = function(ctx, obj) {
};
op.findmethod = function(ctx, obj, name) {
  return obj._STable.method_cache[name];
};

op.composetype = function(ctx, obj, reprinfo) {
  obj._STable.REPR.compose(obj._STable, reprinfo);
};
op.rebless = function(ctx, obj, new_type) {
  obj._STable.REPR.change_type(obj, new_type);
};

function iscclass(cclass, target, offset) {
  if (offset < 0 || offset >= target.length) return 0;
  switch (cclass) {
    //ANY
    case 65535: return 1;
    //UPPERCASE
    case 1: return nqp_bool(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]) && target[offset] == target[offset].toUpperCase());
    //LOWERCASE
    case 2: return nqp_bool(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]) && target[offset] == target[offset].toLowerCase());
    //ALPHABETIC
    case 4: return nqp_bool(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]));
    //NUMERIC
    case 8: return nqp_bool(/^\d/.test(target[offset]));
    //HEXADECIMAL
    case 16: return nqp_bool(/^[0-9a-fA-F]/.test(target[offset]));
    //WHITESPACE
    case 32: return nqp_bool('\n\u000b\f\r\u0085\u2028\u2029\t \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000'.indexOf(target[offset]) != -1);
    //BLANK
    case 256: return nqp_bool(target[offset] == ' ' || target[offset] == '\t'); //HACK - not all such chars
    //CONTROL
    case 512: return nqp_bool('\n\t\r'.indexOf(target[offset]) != -1); //HACK - not all such chars
    //PUNCTUATION
    case 1024: return nqp_bool(/[.,;?!]/.test(target[offset])); //HACK
    //ALPHANUMERIC
    case 2048: return nqp_bool(/^\w/.test(target[offset]) && target[offset] != '_');
    //NEWLINE
    case 4096: return nqp_bool(target[offset] == '\n' || target[offset] == '\r' || target[offset] == '\u0085'); //HACK
    //WORD
    case 8192: return nqp_bool(/^\w/.test(target[offset]));
    default: throw 'cclass ' + cclass + ' not yet implemented';
  }
}
op.iscclass = function(ctx, cclass, target, offset) {
  return iscclass(cclass, target, offset);
};

op.findcclass = function(ctx, cclass, target, offset, count) {
  var end = offset + count;
  end = target.length < end ? target.length : end;

  for (var pos = offset; pos < end; pos++) {
    if (iscclass(cclass, target, pos) > 0) {
      return pos;
    }
  }

  return end;
};

op.findnotcclass = function(ctx, cclass, target, offset, count) {
  var end = offset + count;
  end = target.length < end ? target.length : end;

  for (var pos = offset; pos < end; pos++) {
    if (iscclass(cclass, target, pos) == 0) {
      return pos;
    }
  }

  return end;
};

// serialization ops stubs

op.createsc = function(ctx, handle) {
  return new SerializationContext(handle);
};
op.scsetdesc = function(ctx, sc, desc) {
  sc.description = desc;
};
op.pushcompsc = function(ctx, sc) {
};
op.setobjsc = function(ctx, obj, sc) {
  obj._SC = sc;
};
op.scobjcount = function(ctx, sc) {
  return sc.root_objects.length;
};
op.scsetobj = function(ctx, sc, idx, obj) {
  sc.root_objects[idx] = obj;
  if (!obj._STable._SC) {
    sc.root_stables.push(obj._STable);
    obj._STable._SC = sc;
  }
  return obj;
};
op.scsetcode = function(ctx, sc, idx, obj) {
  sc.root_codes[idx] = obj;
  obj._SC = sc;
  return obj;
};


op.markcodestub = function(ctx, code) {
  code.isCompilerStub = 1;
};
op.markcodestatic = function(ctx, code) {
  code.isStaticCodeRef = 1;
};

op.scgetobj = function(ctx, sc, idx) {
  return sc.root_objects[idx];
};

op.getobjsc = function(ctx, obj) {
  return obj._SC;
};
op.scgethandle = function(ctx, sc) {
  return sc.handle;
};
op.scgetdesc = function(ctx, sc) {
  return sc.description;
};
op.scgetobjidx = function(ctx, sc, obj) {
  var idx = sc.root_objects.indexOf(obj);
  if (idx < 0)
    throw 'Object does not exist in this SC';
  return idx;
};

// HACK
op.popcompsc = function(ctx) {
};


op.getlexdyn = function(ctx, name) {
  return ctx.lookup_contextual(name);
};

// HACK
op.scwbdisable = function() {
};
op.scwbenable = function() {
};

op.curcode = function(ctx) {
  var current = arguments.callee.caller;
  while (current.name == '_') {
    current = current.caller;
  }
  return current.code_ref;
};
op.callercode = function(ctx) {
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

  if (!current.code_ref) {
    return Null;
  }

  return current.code_ref;
};

var EDGE_FATE = 0,
    EDGE_EPSILON = 1,
    EDGE_CODEPOINT = 2,
    EDGE_CODEPOINT_NEG = 3,
    EDGE_CHARCLASS = 4,
    EDGE_CHARCLASS_NEG = 5,
    EDGE_CHARLIST = 6,
    EDGE_CHARLIST_NEG = 7,
    EDGE_SUBRULE = 8,
    EDGE_CODEPOINT_I = 9,
    EDGE_CODEPOINT_I_NEG = 10,
    EDGE_GENERIC_VAR = 11;

function runNFA(nfa, target, pos) {
  var eos = target.length;
  var gen = 1;

  /* Allocate a "done states" array. */
  var done = [];

  /* JVM clears out arrays here, we allocate new ones for simplicity */
  var fates = [];
  var curst = [];
  var nextst = [];
  var numStates = nfa.states.length;

  nextst.push(1);

  while (nextst.length && pos <= eos) {
    /* Translation of:
     *    my @curst := @nextst;
     *    @nextst := [];
     * But avoids an extra allocation per offset. */
    /*    temp = curst;
    curst = nextst;
    temp.length = []
    nextst = temp;*/
    curst = nextst;
    nextst = [];

    /* Save how many fates we have before this position is considered. */
    var prevFates = fates.length;

    while (curst.length) {
      var st = curst.pop();
      if (st <= numStates) {
        if (done[st] == gen)
          continue;
        done[st] = gen;
      }

      var edgeInfo = nfa.states[st - 1];
      for (var i = 0; i < edgeInfo.length; i++) {
        var act = edgeInfo[i].act;
        var to = edgeInfo[i].to;

        if (act == EDGE_FATE) {
          /* Crossed a fate edge. Check if we already saw this, and
             * if so bump the entry we already saw. */
          var arg = edgeInfo[i].arg_i;
          var foundFate = false;
          for (var j = 0; j < fates.length; j++) {
            if (foundFate) {
              fates[j - 1] = fates[j];
            }
            if (fates[j] == arg) {
              foundFate = true;
              if (j < prevFates)
                prevFates--;
            }
          }
          if (foundFate)
            fates[fates.length - 1] = arg;
          else
            fates.push(arg);
        }
        else if (act == EDGE_EPSILON && to <= numStates && done[to] != gen) {
          curst.push(to);
        }
        else if (pos >= eos) {
        /* Can't match, so drop state. */
        }
        else if (act == EDGE_CODEPOINT) {
          if (target.charCodeAt(pos) == edgeInfo[i].arg_i)
            nextst.push(to);
        }
        else if (act == EDGE_CODEPOINT_NEG) {
          if (target.charCodeAt(pos) != edgeInfo[i].arg_i)
            nextst.push(to);
        }
        else if (act == EDGE_CHARCLASS) {
          if (iscclass(edgeInfo[i].arg_i, target, pos) != 0)
            nextst.push(to);
        }
        else if (act == EDGE_CHARCLASS_NEG) {
          if (iscclass(edgeInfo[i].arg_i, target, pos) == 0)
            nextst.push(to);
        }
        else if (act == EDGE_CHARLIST) {
          if (edgeInfo[i].arg_s.indexOf(target[pos]) >= 0) {
            nextst.push(to);
          }
        }
        else if (act == EDGE_CHARLIST_NEG) {
          if (edgeInfo[i].arg_s.indexOf(target[pos]) < 0) {
            nextst.push(to);
          }
        }
        else if (act == EDGE_CODEPOINT_I) {
          console.log('TODO CODEPOINT NEG');
        /*char uc_arg = edgeInfo[i].arg_uc;
              char lc_arg = edgeInfo[i].arg_lc;
              char ord = target.charAt((int)pos);
              if (ord == lc_arg || ord == uc_arg)
                  nextst.push(to);*/
        }
        else if (act == EDGE_CODEPOINT_I_NEG) {
          console.log('TODO CODEPOINT NEG');
          /*char uc_arg = edgeInfo[i].arg_uc;
              char lc_arg = edgeInfo[i].arg_lc;
              char ord = target.charAt((int)pos);
              if (ord != lc_arg && ord != uc_arg)
                  nextst.push(to);*/
        }
      }
    }
    /* Move to next character and generation. */
    pos++;
    gen++;

    /* If we got multiple fates at this offset, sort them by the
       * declaration order (represented by the fate number). In the
       * future, we'll want to factor in longest literal prefix too. */
    var charFates = fates.length - prevFates;
    if (charFates > 1) {
      //TODO do it more efficiently
      var charFateList = fates.slice(prevFates);
      charFateList.sort(function(a, b) {return b - a;});
      fates = fates.slice(0, prevFates).concat(charFateList);
    }
  }

  return fates;
}


op.nfafromstatelist = function(ctx, states, type) {
  var nfa = type._STable.REPR.allocate(type._STable);
  nfa.fates = states[0];
  nfa.states = [];
  for (var i = 1; i < states.length; i++) {
    nfa.states[i - 1] = [];
    for (var j = 0; j < states[i].length; j += 3) {
      var edge = {act: states[i][j].to_i(ctx), to: states[i][j + 2].to_i(ctx)};
      switch (edge.act) {
        case EDGE_FATE:
        case EDGE_CODEPOINT:
        case EDGE_CODEPOINT_NEG:
        case EDGE_CHARCLASS:
        case EDGE_CHARCLASS_NEG:
          edge.arg_i = states[i][j + 1].to_i(ctx);
          break;
        case EDGE_CHARLIST:
        case EDGE_CHARLIST_NEG:
          edge.arg_s = states[i][j + 1].to_s(ctx);
          break;
        case EDGE_CODEPOINT_I:
        case EDGE_CODEPOINT_I_NEG:
          edge.arg_lc = states[i][j + 1].at_pos(ctx, 0).to_i(ctx);
          edge.arg_uc = states[i][j + 1].at_pos(ctx, 0).to_i(ctx);
          break;
      }
      nfa.states[i - 1].push(edge);
    }
  }
  return nfa;
};
op.nfarunproto = function(ctx, nfa, target, pos) {
  return runNFA(nfa, target, pos);
};

op.nfarunalt = function(ctx, nfa, target, pos, bstack, cstack, marks) {
  /* Run the NFA. */
  var fates = runNFA(nfa, target, pos);

  /* Push the results onto the bstack. */
  var caps = op.defined(ctx, cstack) ? cstack.length : 0;

  for (var i = 0; i < fates.length; i++) {
    bstack.push(marks[fates[i]], pos, 0, caps);
  }

  return nfa;
};

// The multicache
// TODO - make it work.

op.multicachefind = function(ctx, cache, capture) {
  return null;
};
op.multicacheadd = function(ctx, cache, capture, multi) {
};


op.invokewithcapture = function(ctx, invokee, capture) {
  // TODO named
  var args = [ctx, exports.empty_named()].concat(capture.positionals);
  return invokee.apply(undefined, args);
};

var compilers = {};
//HACK for test skipping
op.bindcomp = function(ctx, name, backend) {
  compilers[name] = backend;
};
op.getcomp = function(ctx, name) {
  if (compilers[name]) {
    return compilers[name];
  } else if (name == 'nqp') { //HACK
    return {backend: function() {return {name: function() {return 'js'}}}};
  } else {
    console.log(compilers);
    console.log('no compiler: ' + name);
  }
};

op.escape = function(ctx, str) {
  //console.log(str);
  return str.to_s(ctx)
    .replace(/\\/g, '\\\\')
    .replace(/\x1B/g, '\\e')
    .replace(/\n/g, '\\n')
    .replace(/\r/g, '\\r')
    .replace(/\t/g, '\\t')
    .replace(/\f/g, '\\f')
    .replace(/[\b]/g, '\\b')
    .replace(/"/g, '\\"');
};

op.setcontspec = function(ctx, type, cont_spec_type, hash) {
  if (cont_spec_type != 'code_pair') {
    throw 'Unsupported container spec type: ' + cont_spec_type;
  } else {
    type._STable.setContSpec(hash.fetch, hash.store);
  }
};

var WHERE = 100;
op.where = function(ctx, obj) {
  if (obj._STable) {
    if (!obj.__WHERE) {
      obj.__WHERE = ++WHERE;
    }
    return obj.__WHERE;
  } else {
    console.log(obj);
    console.trace('nqp::where only implemented for P6opaque objects for now');
    throw 'nqp::where only implemented for things with an STable for now';
  }
};


exports.regex_commit = function(bstack, mark) {
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

var ctxsave;
exports.ctxsave = function(exports, ctx) {
  exports.ctxsave = ctx;
};
var settings = {};
exports.load_setting = function(setting) {
  settings[setting] = require(setting + '.setting').ctxsave;
};
Ctx.prototype.get_setting = function(setting) {
  if (!settings[setting]) {
    console.log("can't get setting", setting, Object.keys(settings));
  }
  for (var i in settings[setting]) {
    if (settings[setting].hasOwnProperty(i)) {
      this[i] = settings[setting][i];
    }
  }
};
exports.getattr = function(obj, attr) {
  if (obj[attr] == undefined) {
    var name_to_value = obj._STable.REPR.name_to_auto_viv_value;
    if (name_to_value && name_to_value.hasOwnProperty(attr)) {
      // TODO: cloning
      obj[attr] = name_to_value[attr];
    } else {
      return Null;
    }
  }
  return obj[attr];
};
/* Quietly ignore those for now */
exports.serialization_error = function() {
};

op.serialize = function(ctx, sc, sh) {
  var writer = new SerializationWriter(sc, sh);
  return writer.serialize();
};
op.deserialize = serialization.deserialize_op;


op.ctxlexpad = function(ctx, target_ctx) {
  return target_ctx;
};
op.ctxouter = function(ctx, target_ctx) {
  console.log(target_ctx.outer);
  return target_ctx.outer || Null;
};

/* HACK */
op.lexprimspec = function(ctx, obj) {
  return 0;
};

op.objprimspec = function(ctx, obj) {
  if (obj == Null) return 0;
  if (!obj._STable) {
    console.trace('primspec without STable');
  }
  return (obj._STable.REPR.boxed_primitive || 0);
};



/* helper for "for %hash" */

exports.iterate_over_as_array = function(obj) {
  if (obj instanceof Array) {
    return obj;
  } else if (obj instanceof Hash) {
    var keyValues = [];
    for (var key in obj) {
      keyValues.push(new HashKeyValue(key, obj[key]));
    }
    return keyValues;
  } else if (obj instanceof Ctx) {
    var keyValues = [];
    for (var key in obj) {
      if (obj.hasOwnProperty(key)) {
        keyValues.push(new HashKeyValue(key, obj[key]));
      }
    }
    return keyValues;
  } else {
    console.log("can't iterate over:", obj);
    console.trace("can't iterate over");
    throw "can't iterate over";
  }
};

exports.Ctx = Ctx;
exports.op = op;

require('./gen/ModuleLoader');
hllsym['ModuleLoader'].load_setting = function(ctx, _NAMED, setting) {
  //  console.log("loading setting: "+setting);
  exports.load_setting(setting);
  return settings[setting];
};
