'use strict';
let NQPInt = require('./nqp-int.js');
let Null = require('./null.js');

const nativeArgs = require('./native-args.js');

const MAX_ARITY = 4;
const MAX_PER_ARITY = 16;

const NativeIntArg = nativeArgs.NativeIntArg;
const NativeNumArg = nativeArgs.NativeNumArg;
const NativeStrArg = nativeArgs.NativeStrArg;

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
  let arity = capture.pos.length;
  let types = new Array(arity);
  for (let i = 0; i < arity; i++) {
    let obj = capture.pos[i];
    if (obj._STable) {
      let deconted = obj.$$decont(ctx);

      /* TODO - think if having flags wouldn't be faster/cleaner then weird objects */
      if (obj.$$isrwcont()) {
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
    } else if (typeof obj == 'number') {
      types[i] = 2;
    } else if (typeof obj == 'string') {
      types[i] = 3;
    }
  }
  return types;
}

let op = {};

op.multicachefind = function(ctx, cache, capture) {
  if (!(cache instanceof MultiCache)) return Null;
  let arity = capture.pos.length;
  if (capture.named) return Null;

  if (arity == 0) {
    if (cache.zeroArity) {
      return cache.zeroArity;
    } else {
      return Null;
    }
  }

  if (arity > MAX_ARITY) return Null;

  let types = posTypes(ctx, capture);

  let arityCache = cache.cache[arity - 1];

  CANDIDATES: for (let i = 0; i < arityCache.length; i++) {
    for (let j = 0; j < arityCache[i].types.length; j++) {
      if (arityCache[i].types[j] !== types[j]) continue CANDIDATES;
    }
    return arityCache[i].result;
  }

  return Null;
};

op.multicacheadd = function(ctx, cache, capture, result) {
  let c = cache instanceof MultiCache ? cache : new MultiCache();
  if (c.named) return c;
  let arity = capture.pos.length;

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
