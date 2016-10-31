var NQPInt = require('./nqp-int.js');

var MAX_ARITY = 4;
var MAX_PER_ARITY = 16;

function MultiCache() {
  this.cache = [];
  for (var i = 0; i < MAX_ARITY; i++) {
    this.cache[i] = [];
  }
}

function posTypes(capture) {
  var arity = capture.pos.length;
  var types = new Array(arity);
  for (var i = 0; i < arity; i++) {
    var obj = capture.pos[i];
    if (obj._STable) {
      types[i] = obj._STable;
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

op.multicachefind = function(cache, capture) {
  if (!cache) return null;
  var arity = capture.pos.length;
  var hasNamed = capture.named ? true : false;

  if (arity == 0) {
    if (!hasNamed && cache.zeroArity) {
      return cache.zeroArity;
    } else {
      return null;
    }
  }

  if (arity > MAX_ARITY) return null;

  var types = posTypes(capture);

  var arityCache = cache.cache[arity - 1];

  CANDIDATES: for (var i = 0; i < arityCache.length; i++) {
    for (var j = 0; j < arityCache[i].types.length; j++) {
      if (arityCache[i].types[j] !== types[j]) continue CANDIDATES;
    }
    if (arityCache[i].hasNamed !== hasNamed) continue CANDIDATES;
    return arityCache[i].result;
  }

  return null;
};

op.multicacheadd = function(cache, capture, result) {
  var c = cache ? cache : new MultiCache();
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

  c.cache[arity - 1].push({types: posTypes(capture), hasNamed: hasNamed, result: result});
  return c;
};

exports.op = op;
exports.MultiCache = MultiCache;
