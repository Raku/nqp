var hll = require('./hll.js');

var helpers = {};
exports.helpers = helpers;
exports.op = {};

helpers.attrRef_i = function(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('int_attr_ref');
  if (refType === undefined) {
    throw 'No int attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

helpers.attrRef_n = function(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('num_attr_ref');
  if (refType === undefined) {
    throw 'No num attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

helpers.attrRef_s = function(hllName, get, set) {
  var refType = hll.hllConfigs[hllName].get('str_attr_ref');
  if (refType === undefined) {
    throw 'No str attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
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
