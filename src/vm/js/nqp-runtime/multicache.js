'use strict';
var NQPInt = require('./nqp-int.js');
var Null = require('./null.js');

const MAX_ARITY = 4;
const MAX_PER_ARITY = 16;

class MultiCache {
  constructor() {
    this.cache = [];
    for (var i = 0; i < MAX_ARITY; i++) {
      this.cache[i] = [];
    }
  }

  $$serializeAsNull() {
    return 1;
  }
};

function posTypes(ctx, capture) {
  var arity = capture.pos.length;
  var types = new Array(arity);
  for (var i = 0; i < arity; i++) {
    var obj = capture.pos[i];
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

var op = {};

op.multicachefind = function(ctx, cache, capture) {
  if (!(cache instanceof MultiCache)) return Null;
  var arity = capture.pos.length;
  if (capture.named) return Null;

  if (arity == 0) {
    if (cache.zeroArity) {
      return cache.zeroArity;
    } else {
      return Null;
    }
  }

  if (arity > MAX_ARITY) return Null;

  var types = posTypes(ctx, capture);

  var arityCache = cache.cache[arity - 1];

  CANDIDATES: for (var i = 0; i < arityCache.length; i++) {
    for (var j = 0; j < arityCache[i].types.length; j++) {
      if (arityCache[i].types[j] !== types[j]) continue CANDIDATES;
    }
    return arityCache[i].result;
  }

  return Null;
};

op.multicacheadd = function(ctx, cache, capture, result) {
  var c = cache instanceof MultiCache ? cache : new MultiCache();
  if (c.named) return c;
  var arity = capture.pos.length;

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
