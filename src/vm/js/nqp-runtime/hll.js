var Map = require('es6-map')
var Hash = require('./hash.js');
var CodeRef = require('./code-ref.js');

var op = {};
exports.op = op;

var hllSyms = new Map();

op.gethllsym = function(hllName, name, value) {
  if (hllSyms.has(hllName) && hllSyms.get(hllName).has(name)) {
    return hllSyms.get(hllName).get(name);
  } else {
    return null;
  }
};

op.bindhllsym = function(hllName, name, value) {
  if (!hllSyms.has(hllName)) {
    hllSyms.set(hllName, new Map());
  }
  hllSyms.get(hllName).set(name, value);
  return value;
};

// HACK - language shouldn't be hardcoded to nqp

op.bindcurhllsym = function(name, value) {
  return op.bindhllsym('nqp', name, value);
};

op.getcurhllsym = function(name) {
  return op.gethllsym('nqp', name);
};

op.hllizefor = function(ctx, obj, language) {
  var config = hllConfigs[language].content;
  if (obj !== null && obj._STable) {
    console.log("stably object");
  } else {
    if (obj instanceof Hash) {
      var foreign_transform_hash = config.get('foreign_transform_hash');
      if (foreign_transform_hash === undefined) return obj;
      return foreign_transform_hash.$call(ctx, {}, obj);
    } else if (obj instanceof Array) {
      var foreign_transform_array = config.get('foreign_transform_array');
      if (foreign_transform_array === undefined) return obj;
      return foreign_transform_array.$call(ctx, {}, obj);
    } else if (obj instanceof CodeRef) {
      var foreign_transform_code = config.get('foreign_transform_code');
      if (foreign_transform_code === undefined) return obj;
      return foreign_transform_code.$call(ctx, {}, obj);
    } else if (obj == null) {
      var null_value = config.get('null_value');
      if (null_value === undefined) return obj;
      return null_value;
    } else {
      return obj;
    }
  }
};

var hllConfigs = {};
exports.hllConfigs = hllConfigs;

op.sethllconfig = function(language, configHash) {
  hllConfigs[language] = configHash;
  return configHash;
};
