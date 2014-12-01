var op = {};
exports.op = op;

function load_ops(module) {
  for (var name in module.op) {
    op[name] = module.op[name];
  }
}

var core = require('./core');
load_ops(core);
exports.hash = core.hash;
exports.slurpy_named = core.slurpy_named;

var io = require('./io.js');
load_ops(io);

var deserialization = require('./deserialization.js');
exports.wval = deserialization.wval;
load_ops(deserialization);

exports.CodeRef = require('./code-ref.js');

module.exports.knowhowattr = require('./bootstrap.js').knowhowattr;

var currentSetting;
var savedCtxs = {};

exports.load_setting = function(settingName) {
  currentSetting = settingName;

  require(settingName+".setting");
};

exports.load_module = function(module) {
  require(module);
};

exports.setup_setting = function(settingName) {
  return savedCtxs[currentSetting];
};

exports.ctxsave = function(ctx) {
    savedCtxs[currentSetting] = ctx;
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
  } else if (arg.type_object_) {
    // TODO - is that a correct way to do that?
    return 0;
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
  } else if (arg === undefined || arg == null) {
    return 0;
  } else if (arg.$$to_bool) {
    return arg.$$to_bool();
  } else if (arg.type_object_) {
    return false;
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

// Placeholder
exports.top_context = function() {
  return null;
};

