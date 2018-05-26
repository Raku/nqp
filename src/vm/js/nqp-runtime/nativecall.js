'use strict';
const op = {};
const ffi = require('ffi');
const ref = require('ref');
const bignum = require('bignum-browserify');

const Null = require('./null.js');
exports.op = op;

const ctypes = {
  void: ref.types.void,
  cpointer: ref.refType(ref.types.void),
  utf8str: ref.types.CString,
};

const shortInts = {int: true, short: true, char: true, ushort: true, uchar: true};
const longInts = {uint: true, longlong: true};
const floats = {double: true, float: true};
for (const type of Object.keys(floats).concat(Object.keys(shortInts), Object.keys(longInts))) {
  ctypes[type] = ref.types[type];
}

function mapType(typeHash) {
  const nativeCallType = typeHash.content.get('type').$$getStr();
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
    target.$$ret = returns.content.get('type').$$getStr();
    target.$$args = args.array.map(arg => arg.content.get('type').$$getStr());
  } catch (e) {
    throw new NQPException('native call exception:' + e);
  }
};

op.nativecall = function(returns, callObject, args) {
  const mangled = [];
  for (let i = 0; i < args.array.length; i++) {
    const type = callObject.$$args[i];
    // HACK for cpointers not being done properly yet
    const arg = type === 'cpointer' ? args.array[i] : args.array[i].$$decont(null);
    if (type in shortInts) {
      mangled[i] = arg.$$getInt();
    } else if (type in longInts) {
      if (arg.$$getBignum) {
        mangled[i] = arg.$$getBignum().toString();
      } else {
        mangled[i] = arg.$$getInt();
      }
    } else if (type in floats) {
      mangled[i] = args.array[i].$$decont(null).$$getNum();
    } else if (type === 'utf8str') {
      mangled[i] = args.array[i].$$decont(null).$$getStr();
    } else if (type === 'cpointer') {
      mangled[i] = args.array[i].$$decont(null).$$getPointer();
    } else {
      throw 'can\'t mangle: ' + callObject.$$args[i];
    }
  }
  const ret = callObject.$$lib[callObject.$$symbol].apply(callObject.$$lib, mangled);

  if (callObject.$$ret === 'void') {
    return Null;
  } else if (callObject.$$ret === 'utf8str') {
    if (ret === null) {
      return returns;
    } else {
      const boxed = returns._STable.REPR.allocate(returns._STable);
      boxed.$$setStr(ret);
      return boxed;
    }
  } else if (callObject.$$ret === 'cpointer') {
      const boxed = returns._STable.REPR.allocate(returns._STable);
      boxed.$$setPointer(ret);
      return boxed;
  } else if (callObject.$$ret in shortInts) {
      const boxed = returns._STable.REPR.allocate(returns._STable);
      boxed.$$setInt(ret);
      return boxed;
  } else if (callObject.$$ret in longInts) {
      const boxed = returns._STable.REPR.allocate(returns._STable);
      boxed.$$setBignum(bignum(ret));
      return boxed;
  } else if (callObject.$$ret in floats) {
      const boxed = returns._STable.REPR.allocate(returns._STable);
      boxed.$$setNum(ret);
      return boxed;
  } else {
    console.log('returning ', typeof callObject.$$ret, callObject.$$ret, shortInts, callObject.$$ret in shortInts);
    return ret === null ? Null : ret;
  }
};

op.nativecallsizeof = function(obj) {
  if (obj._STable.REPR.nativeCallSize) {
    return obj._STable.REPR.nativeCallSize();
  } else {
    throw new NQPException('can\'t do nativecallsizeof');
  }
};

op.initnativecall = function() {
  return 1;
};
