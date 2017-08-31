let hll = require('./hll.js');

let helpers = exports.helpers = {};
let op = exports.op = {};

function attrRef_i(currentHLL, get, set) {
  var refType = currentHLL.get('int_attr_ref');
  if (refType === undefined) {
    throw 'No int attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
}

function attrRef_n(currentHLL, get, set) {
  var refType = currentHLL.get('num_attr_ref');
  if (refType === undefined) {
    throw 'No num attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
}

function attrRef_s(currentHLL, get, set) {
  var refType = currentHLL.get('str_attr_ref');
  if (refType === undefined) {
    throw 'No str attribute reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
}

op.getattrref_i = function(currentHLL, obj, classHandle, attrName) {
  return attrRef_i(currentHLL,
      () => obj.$$getattr_i(classHandle, attrName),
      value => obj.$$bindattr_i(classHandle, attrName, value));
};

op.getattrref_n = function(currentHLL, obj, classHandle, attrName) {
  return attrRef_n(currentHLL,
      () => obj.$$getattr_n(classHandle, attrName),
      value => obj.$$bindattr_n(classHandle, attrName, value));
};

op.getattrref_s = function(currentHLL, obj, classHandle, attrName) {
  return attrRef_s(currentHLL,
      () => obj.$$getattr_s(classHandle, attrName),
      value => obj.$$bindattr_s(classHandle, attrName, value));
};

helpers.lexRef_i = function(currentHLL, get, set) {
  var refType = currentHLL.get('int_lex_ref');
  if (refType === undefined) {
    throw 'No int lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

helpers.lexRef_s = function(currentHLL, get, set) {
  var refType = currentHLL.get('str_lex_ref');
  if (refType === undefined) {
    throw 'No str lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

helpers.lexRef_n = function(currentHLL, get, set) {
  var refType = currentHLL.get('num_lex_ref');
  if (refType === undefined) {
    throw 'No num lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

op.atposref_i = function(currentHLL, obj, index) {
  var refType = currentHLL.get('int_pos_ref');
  if (refType === undefined) {
    throw 'No int lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = () => obj.$$atpos(index);
  ref.set = value => obj.$$bindpos(index, value);
  return ref;
};

op.atposref_n = function(currentHLL, obj, index) {
  var refType = currentHLL.get('num_pos_ref');
  if (refType === undefined) {
    throw 'No num lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = () => obj.$$atpos(index);
  ref.set = value => obj.$$bindpos(index, value);
  return ref;
};

op.atposref_s = function(currentHLL, obj, index) {
  var refType = currentHLL.get('str_pos_ref');
  if (refType === undefined) {
    throw 'No str lexical reference type registered for current HLL';
  }
  var STable = refType._STable;
  var ref = STable.REPR.allocate(STable);
  ref.get = () => obj.$$atpos(index);
  ref.set = value => obj.$$bindpos(index, value);
  return ref;
};


helpers.attrRef_i = attrRef_i;
helpers.attrRef_n = attrRef_n;
helpers.attrRef_s = attrRef_s;
