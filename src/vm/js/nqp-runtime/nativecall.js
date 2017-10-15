'use strict';
var op = {};
var ffi = require('ffi');
var ref = require('ref');
const Null = require('./null.js');
exports.op = op;

const ctypes = {
  void: ref.types.void,
  cpointer: ref.refType(ref.types.void),
  utf8str: ref.types.CString,
};

for (let type of ['int', 'short', 'char', 'uint', 'ushort', 'uchar', 'double', 'float', 'longlong']) {
  ctypes[type] = ref.types[type];
}

function mapType(typeHash) {
  var nativeCallType = typeHash.content.get('type').$$getStr();
  if (nativeCallType in ctypes) {
    return ctypes[nativeCallType];
  } else {
    throw 'type not supported: ' + nativeCallType;
  }
}

op.buildnativecall = function(ctx, target, libname, symbol, convention, args, returns) {
  try {
    const symbols = {};
    symbols[symbol] = [mapType(returns), args.array.map(mapType)];
    target.$$lib = ffi.Library(libname === '' ? null : libname, symbols); // eslint-disable-line new-cap
    target.$$symbol = symbol;
    target.$$args = args.array.map(arg => arg.content.get('type').$$getStr());
  } catch (e) {
    throw new NQPException("native call exception:" + e);
  }
};

op.nativecall = function(returns, callObject, args) {
  const mangled = [];
  for (let i = 0; i < args.array.length; i++) {
    const type = callObject.$$args[i];
    // HACK for cpointers not being done properly yet
    const arg = type === 'cpointer' ? args.array[i] : args.array[i].$$decont(null);
    if (type === 'int' || type === 'short' || type === 'char' || type == 'ushort' || type == 'uchar') {
      mangled[i] = arg.$$getInt();
    } else if (type === 'longlong' || type == 'uint') {
      if (arg.$$getBignum) {
        mangled[i] = arg.$$getBignum().toString();
      } else {
        mangled[i] = arg.$$getInt();
      }
    } else if (type === 'float' || type === 'double') {
      mangled[i] = args.array[i].$$decont(null).$$getNum();
    } else if (type === 'utf8str') {
      mangled[i] = args.array[i].$$decont(null).$$getStr();
    } else if (type === 'cpointer') {
      // TODO - do this properly
      mangled[i] = args.array[i];
    } else {
      throw "can't mangle: " + callObject.$$args[i];
    }
  }
  const ret = callObject.$$lib[callObject.$$symbol].apply(callObject.$$lib, mangled);
  if (ret === null) {
    return Null;
  } else {
    return ret;
  }
};

op.nativecallsizeof = function(obj) {
  if (obj._STable.REPR.nativeCallSize) {
    return obj._STable.REPR.nativeCallSize();
  } else {
    throw new NQPException("can't do nativecallsizeof");
  }
};

op.initnativecall = function() {
  return 1;
};
