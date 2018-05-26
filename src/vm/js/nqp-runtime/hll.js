'use strict';
const Hash = require('./hash.js');
const CodeRef = require('./code-ref.js');
const NQPInt = require('./nqp-int.js');
const NQPNum = require('./nqp-num.js');
const NQPStr = require('./nqp-str.js');
const Null = require('./null.js');
const BOOT = require('./BOOT.js');

const op = {};
exports.op = op;

const hllSyms = new Map();

op.gethllsym = function(hllName, name, value) {
  if (hllSyms.has(hllName) && hllSyms.get(hllName).has(name)) {
    return hllSyms.get(hllName).get(name);
  } else {
    return Null;
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
  const languageHash = getHLL(language);
  const config = languageHash;
  let role;
  if (obj !== null && obj._STable) {
    if (obj._STable.hllOwner === languageHash) {
      return obj;
    }
    if (!(role = obj._STable.hllRole)) {
      return obj;
    }
  }

  // we don't support returning native typed stuff from foreign_transform_*

  if (obj instanceof Hash || role == 5) {
    const foreignTransformHash = config.get('foreign_transform_hash');
    if (foreignTransformHash === undefined) return obj;
    return foreignTransformHash.$$call(ctx, {}, obj);
  } else if (role == 4) {
    const foreignTransformArray = config.get('foreign_transform_array');
    if (foreignTransformArray === undefined) return obj;
    return foreignTransformArray.$$call(ctx, {}, obj);
  } else if (obj instanceof CodeRef || role == 6) {
    const foreignTransformCode = config.get('foreign_transform_code');
    if (foreignTransformCode === undefined) return obj;
    return foreignTransformCode.$$call(ctx, {}, obj);
  // TODO handle already boxed ones
  } else if (obj instanceof NQPInt) {
    const foreignTypeInt = config.get('foreign_type_int');
    const repr = foreignTypeInt._STable.REPR;
    const boxed = repr.allocate(foreignTypeInt._STable);
    boxed.$$setInt(obj.value);
    return boxed;
  } else if (obj instanceof NQPNum) {
    const foreignTypeNum = config.get('foreign_type_num');
    const repr = foreignTypeNum._STable.REPR;
    const boxed = repr.allocate(foreignTypeNum._STable);
    boxed.$$setNum(obj.value);
    return boxed;
  } else if (obj instanceof NQPStr) {
    const foreignTypeStr = config.get('foreign_type_str');
    const repr = foreignTypeStr._STable.REPR;
    const boxed = repr.allocate(foreignTypeStr._STable);
    boxed.$$setStr(obj.value);
    return boxed;
  } else if (obj === Null) {
    const nullValue = config.get('null_value');
    if (nullValue === undefined) return obj;
    return nullValue;
  } else {
    return obj;
  }
};

const hllConfigs = {};
exports.hllConfigs = hllConfigs;

function getHLL(language) {
  if (!hllConfigs[language]) {
    hllConfigs[language] = new Map;
    hllConfigs[language].set('slurpy_array', BOOT.Array);
    hllConfigs[language].set('list', BOOT.Array);

    // For serialization purposes
    hllConfigs[language].set('name', language);
  }
  return hllConfigs[language];
}

exports.getHLL = getHLL;

op.sethllconfig = function(language, configHash) {
  const hll = getHLL(language);

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

exports.slurpyArray = function(currentHLL, array) {
  const slurpyArray = currentHLL.get('slurpy_array');
  return slurpyArray._STable.REPR.allocateFromArray(slurpyArray._STable, array);
};

exports.list = function(currentHLL, array) {
  const list = currentHLL.get('list');
  return list._STable.REPR.allocateFromArray(list._STable, array);
};
