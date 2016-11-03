'use strict';
var op = {};
var ffi = require('ffi');
var ref = require('ref');
exports.op = op;

function mapType(typeHash) {
  var nativeCallType = typeHash.content.get('type');
  if (nativeCallType === 'void') {
    return ref.types.void;
  } else if (nativeCallType === 'cpointer') {
    return ref.refType(ref.types.void);
  } else if (nativeCallType === 'utf8str') {
    return ref.types.CString;
  } else {
    throw 'type not supported: ' + nativeCallType;
  }
}

op.buildnativecall = function(ctx, target, libname, symbol, convention, args, returns) {
  try {
    var symbols = {};
    symbols[symbol] = [mapType(returns), args.array.map(mapType)];
    target.lib = ffi.Library(libname === '' ? null : libname, symbols);
    target.symbol = symbol;
  } catch (e) {
    ctx.die(e.message);
  }
};

op.nativecall = function(returns, callObject, args) {
  return callObject.lib[callObject.symbol].apply(callObject.lib, args.array);
};

op.initnativecall = function() {
  return 1;
};
