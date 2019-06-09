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


const globalContext = require('./global-context.js');

op.gethllsym = function(hllName, name) {
  const hllSyms = globalContext.context.hllSyms;
  if (hllSyms.has(hllName) && hllSyms.get(hllName).has(name)) {
    return hllSyms.get(hllName).get(name);
  } else {
    return Null;
  }
};

op.bindhllsym = function(hllName, name, value) {
  const hllSyms = globalContext.context.hllSyms;
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
  if (obj !== null && obj.$$STable) {
    if (obj.$$STable.hllOwner === languageHash) {
      return obj;
    }
    if (!(role = obj.$$STable.hllRole)) {
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
    const repr = foreignTypeInt.$$STable.REPR;
    const boxed = repr.allocate(foreignTypeInt.$$STable);
    boxed.$$setInt(obj.value);
    return boxed;
  } else if (obj instanceof NQPNum) {
    const foreignTypeNum = config.get('foreign_type_num');
    const repr = foreignTypeNum.$$STable.REPR;
    const boxed = repr.allocate(foreignTypeNum.$$STable);
    boxed.$$setNum(obj.value);
    return boxed;
  } else if (obj instanceof NQPStr) {
    const foreignTypeStr = config.get('foreign_type_str');
    const repr = foreignTypeStr.$$STable.REPR;
    const boxed = repr.allocate(foreignTypeStr.$$STable);
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

function getHLL(language) {
  const hllConfigs = globalContext.context.hllConfigs;

  if (hllConfigs.has(language)) {
    return hllConfigs.get(language);
  }

  const hllConfig = new Map([
    ['slurpy_array', BOOT.Array],
    ['list',         BOOT.Array],
    ['true_value',   Null      ],
    ['false_value',  Null      ],
    // For serialization purposes.
    ['name',         language  ],
  ]);

  hllConfigs.set(language, hllConfig);

  return hllConfig;
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
  type.$$STable.hllOwner = getHLL(language);
  return type;
};

op.settypehllrole = function(type, role) {
  type.$$STable.hllRole = role;
  return type;
};

exports.slurpyArray = function(currentHLL, array) {
  const slurpyArray = currentHLL.get('slurpy_array');
  return slurpyArray.$$STable.REPR.allocateFromArray(slurpyArray.$$STable, array);
};

exports.list = function(currentHLL, array) {
  const list = currentHLL.get('list');
  return list.$$STable.REPR.allocateFromArray(list.$$STable, array);
};

op.hllbool = function(currentHLL, value) {
   return value ? currentHLL.get('true_value') : currentHLL.get('false_value');
};

op.hllboolfor = function(value, hllName) {
  const hll = getHLL(hllName);
  return value ? hll.get('true_value') : hll.get('false_value');
};
