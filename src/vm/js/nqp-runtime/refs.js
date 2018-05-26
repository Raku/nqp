const helpers = exports.helpers = {};
const op = exports.op = {};

const NQPException = require('./nqp-exception.js');

function attrRef_i(currentHLL, get, set) {
  const refType = currentHLL.get('int_attr_ref');
  if (refType === undefined) {
    throw 'No int attribute reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
}

function attrRef_n(currentHLL, get, set) {
  const refType = currentHLL.get('num_attr_ref');
  if (refType === undefined) {
    throw 'No num attribute reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
}

function attrRef_s(currentHLL, get, set) {
  const refType = currentHLL.get('str_attr_ref');
  if (refType === undefined) {
    throw 'No str attribute reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
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

// TODO do the index calculation once
op.multidimref_i = function(currentHLL, array, indexes) {
  const refType = currentHLL.get('int_multidim_ref');
  if (refType === undefined) {
    throw new NQPException('No int multidim positional reference type registered for current HLL');
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = () => array.$$atposnd_i(indexes);
  ref.set = value => array.$$bindposnd_i(indexes, value);
  return ref;
};

op.multidimref_n = function(currentHLL, array, indexes) {
  const refType = currentHLL.get('num_multidim_ref');
  if (refType === undefined) {
    throw new NQPException('No num multidim positional reference type registered for current HLL');
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = () => array.$$atposnd_n(indexes);
  ref.set = value => array.$$bindposnd_n(indexes, value);
  return ref;
};

op.multidimref_s = function(currentHLL, array, indexes) {
  const refType = currentHLL.get('str_multidim_ref');
  if (refType === undefined) {
    throw new NQPException('No str multidim positional reference type registered for current HLL');
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = () => array.$$atposnd_s(indexes);
  ref.set = value => array.$$bindposnd_s(indexes, value);
  return ref;
};

helpers.lexRef_i = function(currentHLL, get, set) {
  const refType = currentHLL.get('int_lex_ref');
  if (refType === undefined) {
    throw 'No int lexical reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

helpers.lexRef_s = function(currentHLL, get, set) {
  const refType = currentHLL.get('str_lex_ref');
  if (refType === undefined) {
    throw 'No str lexical reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

helpers.lexRef_n = function(currentHLL, get, set) {
  const refType = currentHLL.get('num_lex_ref');
  if (refType === undefined) {
    throw 'No num lexical reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = get;
  ref.set = set;
  return ref;
};

op.atposref_i = function(currentHLL, obj, index) {
  const refType = currentHLL.get('int_pos_ref');
  if (refType === undefined) {
    throw 'No int lexical reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = () => obj.$$atpos_i(index);
  ref.set = value => obj.$$bindpos_i(index, value);
  return ref;
};

op.atposref_n = function(currentHLL, obj, index) {
  const refType = currentHLL.get('num_pos_ref');
  if (refType === undefined) {
    throw 'No num lexical reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = () => obj.$$atpos_n(index);
  ref.set = value => obj.$$bindpos_n(index, value);
  return ref;
};

op.atposref_s = function(currentHLL, obj, index) {
  const refType = currentHLL.get('str_pos_ref');
  if (refType === undefined) {
    throw 'No str lexical reference type registered for current HLL';
  }
  const STable = refType._STable;
  const ref = STable.REPR.allocate(STable);
  ref.get = () => obj.$$atpos_s(index);
  ref.set = value => obj.$$bindpos_s(index, value);
  return ref;
};


helpers.attrRef_i = attrRef_i;
helpers.attrRef_n = attrRef_n;
helpers.attrRef_s = attrRef_s;
