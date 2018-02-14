'use strict';
const NQPInt = require('./nqp-int.js');
const NQPNum = require('./nqp-num.js');
const NQPStr = require('./nqp-str.js');

const Null = require('./null.js');

const nativeArgs = require('./native-args.js');

const MAX_ARITY = 4;
const MAX_PER_ARITY = 16;

const NativeIntArg = nativeArgs.NativeIntArg;
const NativeNumArg = nativeArgs.NativeNumArg;
const NativeStrArg = nativeArgs.NativeStrArg;

const reprs = require('./reprs.js');

class MultiCache {
  constructor() {
    this.cache = [];
    for (let i = 0; i < MAX_ARITY; i++) {
      this.cache[i] = [];
    }
  }

  $$serializeAsNull() {
    return 1;
  }
};

function posTypes(ctx, capture) {
  const arity = capture.pos.length;
  const types = new Array(arity);
  for (let i = 0; i < arity; i++) {
    const obj = capture.pos[i];
    if (obj._STable) {
      const deconted = obj.$$decont(ctx);

      /* TODO - think if having flags wouldn't be faster/cleaner then weird objects */
      if (obj.$$isrwcont()) {
        if (obj._STable.REPR instanceof reprs.NativeRef) {
          types[i] = obj._STable;
        } else {
          if (deconted.typeObject_) {
            if (deconted._STable.typeObjectCachedAsRW === undefined) {
              deconted._STable.typeObjectCachedAsRW = {};
            }
            types[i] = deconted._STable.typeObjectCachedAsRW;
          } else {
            if (deconted._STable.cachedAsRW === undefined) {
              deconted._STable.cachedAsRW = {};
            }
            types[i] = deconted._STable.cachedAsRW;
          }
        }
      } else {
        types[i] = deconted.typeObject_ ? deconted : deconted._STable;
      }
    } else if (obj instanceof NativeIntArg) {
      types[i] = 1;
    } else if (obj instanceof NativeNumArg) {
      types[i] = 2;
    } else if (obj instanceof NativeStrArg) {
      types[i] = 3;
    } else if (obj instanceof NQPInt) {
      types[i] = 1;
    } else if (obj instanceof NQPNum) {
      types[i] = 2;
    } else if (obj instanceof NQPStr) {
      types[i] = 3;
    }
  }
  return types;
}

const op = {};

op.multicachefind = function(ctx, cache, capture) {
  if (!(cache instanceof MultiCache)) return Null;
  const arity = capture.pos.length;
  if (capture.named) return Null;

  if (arity == 0) {
    if (cache.zeroArity) {
      return cache.zeroArity;
    } else {
      return Null;
    }
  }

  if (arity > MAX_ARITY) return Null;

  const types = posTypes(ctx, capture);

  const arityCache = cache.cache[arity - 1];

  CANDIDATES: for (let i = 0; i < arityCache.length; i++) {
    for (let j = 0; j < arityCache[i].types.length; j++) {
      if (arityCache[i].types[j] !== types[j]) continue CANDIDATES;
    }
    return arityCache[i].result;
  }

  return Null;
};

op.multicacheadd = function(ctx, cache, capture, result) {
  const c = cache instanceof MultiCache ? cache : new MultiCache();
  if (c.named) return c;
  const arity = capture.pos.length;

  if (arity == 0) {
    c.zeroArity = result;
    return c;
  }

  if (arity > MAX_ARITY || c.cache[arity - 1].length > MAX_PER_ARITY) {
    return c;
  }

  c.cache[arity - 1].push({types: posTypes(ctx, capture), result: result});
  return c;
};

exports.op = op;
exports.MultiCache = MultiCache;
