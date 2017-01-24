'use strict';

var NQPObject = require('./nqp-object.js');
var Null = require('./null.js');

var repossession = require('./repossession.js');
var compilingSCs = repossession.compilingSCs;

class HashIter extends NQPObject {
  constructor(hash) {
    super();
    this.hash = hash.content;
    this.keys = Object.keys(hash.$$toObject());
    this.target = this.keys.length;
    this.idx = 0;
  }

  $$shift() {
    return new IterPair(this.hash, this.keys[this.idx++]);
  }

  $$toBool(ctx) {
    return this.idx < this.target;
  }
};

class IterPair extends NQPObject {
  constructor(hash, key) {
    super();
    this._key = key;
    this._hash = hash;
  }

  iterval() {
    return this._hash.get(this._key);
  }

  iterkey_s() {
    return this._key;
  }

  Str(ctx, _NAMED, self) {
    return this._key;
  }

  key(ctx, _NAMED, self) {
    return this._key;
  }

  value(ctx, _NAMED, self) {
    return this._hash.get(this._key);
  }
};

class Hash extends NQPObject {
  constructor() {
    super();
    this._SC = undefined;
    this.content = new Map();
  }

  $$bindkey(key, value) {
    this.content.set(key, value);
    if (this._SC !== undefined) this.$$scwb();
    return value;
  }

  $$atkey(key) {
    return this.content.has(key) ? this.content.get(key) : Null;
  }

  $$existskey(key) {
    return this.content.has(key);
  }

  $$deletekey(key) {
    if (this._SC !== undefined) this.$$scwb();
    this.content.delete(key);
    return this;
  }

  $$clone() {
    var clone = new Hash();
    this.content.forEach(function(value, key, map) {
      clone.content.set(key, value);
    });
    return clone;
  }

  $$elems() {
    return this.content.size;
  }

  $$numify() {
    return this.$$elems();
  }

  $$toObject() {
    var ret = {};
    this.content.forEach(function(value, key, map) {
      ret[key] = value;
    });
    return ret;
  }

  $$toBool() {
    return this.content.size == 0 ? 0 : 1;
  }

  $$iterator() {
    return new HashIter(this);
  }

  //TODO: avoid copy and paste
  $$scwb() {
    if (compilingSCs.length == 0 || repossession.scwbDisableDepth || repossession.neverRepossess.get(this)) {
      return;
    }

    if (compilingSCs[compilingSCs.length - 1] !== this._SC) {
      var owned = this._SC.ownedObjects.get(this);
      compilingSCs[compilingSCs.length - 1].repossessObject(owned === undefined ? this : owned);
    }
  }

  $$istype(ctx, type) {
    return 0;
  }

  $$can(obj, name) {
    return 0;
  }
};

module.exports = Hash;
