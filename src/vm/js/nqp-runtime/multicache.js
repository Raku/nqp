'use strict';
var NQPInt = require('./nqp-int.js');
var Null = require('./null.js');

const MAX_ARITY = 4;
const MAX_PER_ARITY = 16;

function MultiCache() {
  this.cache = [];
  for (var i = 0; i < MAX_ARITY; i++) {
    this.cache[i] = [];
  }
}

function posTypes(ctx, capture) {
  var arity = capture.pos.length;
  var types = new Array(arity);
  for (var i = 0; i < arity; i++) {
    var obj = capture.pos[i];
    if (obj._STable) {
      types[i] = obj.$$decont(ctx)._STable;
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
  if (cache === Null) return Null;
  var arity = capture.pos.length;
  var hasNamed = capture.named ? true : false;

  if (arity == 0) {
    if (!hasNamed && cache.zeroArity) {
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
    if (arityCache[i].hasNamed !== hasNamed) continue CANDIDATES;
    return arityCache[i].result;
  }

  return Null;
};

op.multicacheadd = function(ctx, cache, capture, result) {
  var c = cache === Null ? new MultiCache() : cache;
  var arity = capture.pos.length;
  var hasNamed = capture.named ? true : false;

  if (arity == 0) {
    if (!hasNamed) {
      c.zeroArity = result;
    }
    return c;
  }

  if (arity > MAX_ARITY || c.cache[arity - 1].length > MAX_PER_ARITY) {
    return c;
  }

  c.cache[arity - 1].push({types: posTypes(ctx, capture), hasNamed: hasNamed, result: result});
  return c;
};

exports.op = op;
exports.MultiCache = MultiCache;
