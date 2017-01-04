let hll = require('./hll.js');

let helpers = exports.helpers = {};
let op = exports.op = {};

function attrRef_i(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('int_attr_ref');
  if (refType === undefined) {
    throw 'No int attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
}

function attrRef_n(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('num_attr_ref');
  if (refType === undefined) {
    throw 'No num attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
}

function attrRef_s(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('str_attr_ref');
  if (refType === undefined) {
    throw 'No str attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
}

op.getattrref_i = function(hllName, obj, classHandle, attrName) {
  return attrRef_i(hllName,
    function() {return obj.$$getattr_i(classHandle, attrName)},
    function(value) {obj.$$bindattr_i(classHandle, attrName, value)});
};

op.getattrref_n = function(hllName, obj, classHandle, attrName) {
  return attrRef_n(hllName,
    function() {return obj.$$getattr_n(classHandle, attrName)},
    function(value) {obj.$$bindattr_n(classHandle, attrName, value)});
};

op.getattrref_s = function(hllName, obj, classHandle, attrName) {
  return attrRef_s(hllName,
    function() {return obj.$$getattr_s(classHandle, attrName)},
    function(value) {obj.$$bindattr_s(classHandle, attrName, value)});
};

helpers.lexRef_i = function(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('int_lex_ref');
  if (refType === undefined) {
    throw 'No int lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

helpers.lexRef_s = function(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('str_lex_ref');
  if (refType === undefined) {
    throw 'No str lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

helpers.lexRef_n = function(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('num_lex_ref');
  if (refType === undefined) {
    throw 'No num lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

op.atposref_i = function(hllName, obj, index) {
  var refType = hll.hllConfigs[hllName].get('int_pos_ref');
  if (refType === undefined) {
    throw 'No int lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = function() {return obj.$$atpos(index)};
  ref.set = function(value) {return obj.$$bindpos(index, value)};
  return ref;
};

op.atposref_n = function(hllName, obj, index) {
  var refType = hll.hllConfigs[hllName].get('num_pos_ref');
  if (refType === undefined) {
    throw 'No num lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = function() {return obj.$$atpos(index)};
  ref.set = function(value) {return obj.$$bindpos(index, value)};
  return ref;
};

op.atposref_s = function(hllName, obj, index) {
  var refType = hll.hllConfigs[hllName].get('str_pos_ref');
  if (refType === undefined) {
    throw 'No str lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = function() {return obj.$$atpos(index)};
  ref.set = function(value) {return obj.$$bindpos(index, value)};
  return ref;
};


helpers.attrRef_i = attrRef_i;
helpers.attrRef_n = attrRef_n;
helpers.attrRef_s = attrRef_s;
