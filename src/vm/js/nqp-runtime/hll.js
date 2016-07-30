var Map = require('es6-map');
var Hash = require('./hash.js');
var CodeRef = require('./code-ref.js');
var NQPArray = require('./array.js');
var NQPInt = require('./nqp-int.js');

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

op.hllizefor = function(ctx, obj, language) {
  var languageHash = getHLL(language);
  var config = languageHash;
  var role;
  if (obj !== null && obj._STable) {
    if (obj._STable.hllOwner === languageHash) {
      return obj;
    }
    if (!(role = obj._STable.hllRole)) {
      return obj;
    }
  }

  if (obj instanceof Hash || role == 5) {
    var foreignTransformHash = config.get('foreign_transform_hash');
    if (foreignTransformHash === undefined) return obj;
    return foreignTransformHash.$$call(ctx, {}, obj);
  } else if (obj instanceof NQPArray || role == 4) {
    var foreignTransformArray = config.get('foreign_transform_array');
    if (foreignTransformArray === undefined) return obj;
    return foreignTransformArray.$$call(ctx, {}, obj);
  } else if (obj instanceof CodeRef || role == 6) {
    var foreignTransformCode = config.get('foreign_transform_code');
    if (foreignTransformCode === undefined) return obj;
    return foreignTransformCode.$$call(ctx, {}, obj);
  // TODO handle already boxed ones
  } else if (obj instanceof NQPInt) {
    var foreignTypeInt = config.get('foreign_type_int');
    var repr = foreignTypeInt._STable.REPR;
    var boxed = repr.allocate(foreignTypeInt._STable);
    boxed.$$setInt(obj.value);
    return boxed;
  } else if (typeof obj == 'number') {
    var foreignTypeNum = config.get('foreign_type_num');
    var repr = foreignTypeNum._STable.REPR;
    var boxed = repr.allocate(foreignTypeNum._STable);
    boxed.$$setNum(obj);
    return boxed;
  } else if (typeof obj == 'string') {
    var foreignTypeStr = config.get('foreign_type_str');
    var repr = foreignTypeStr._STable.REPR;
    var boxed = repr.allocate(foreignTypeStr._STable);
    boxed.$$setStr(obj);
    return boxed;
  } else if (obj == null) {
    var nullValue = config.get('null_value');
    if (nullValue === undefined) return obj;
    return nullValue;
  } else {
    return obj;
  }
};

var hllConfigs = {};
exports.hllConfigs = hllConfigs;

function getHLL(language) {
  if (!hllConfigs[language]) {
    hllConfigs[language] = new Map;

    // For serialization purposes
    hllConfigs[language].set('name', language);
  }
  return hllConfigs[language];
}

exports.getHLL = getHLL;

op.sethllconfig = function(language, configHash) {
  var hll = getHLL(language);

  configHash.content.forEach(function(value, key, map) {
    hll.set(key, value);
  });

  return configHash;
};


op.settypehll = function(type, language) {
  type._STable.hllOwner = getHLL(language);
  return type;
};

op.settypehllrole = function(type, role) {
  type._STable.hllRole = role;
  return type;
};
