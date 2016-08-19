function HashIter(hash) {
  this.hash = hash.content;
  this.keys = Object.keys(hash.$$toObject());
  this.target = this.keys.length;
  this.idx = 0;
}

HashIter.prototype.$$shift = function() {
  return new IterPair(this.hash, this.keys[this.idx++]);
};

HashIter.prototype.$$toBool = function(ctx) {
  return this.idx < this.target;
};

function IterPair(hash, key) {
  this._key = key;
  this._hash = hash;
}

IterPair.prototype.iterval = function() {
  return this._hash.get(this._key);
};
IterPair.prototype.iterkey_s = function() {
  return this._key;
};

IterPair.prototype.Str = function(ctx, _NAMED, self) {
  return this._key;
};

IterPair.prototype.key = function(ctx, _NAMED, self) {
  return this._key;
};
IterPair.prototype.value = function(ctx, _NAMED, self) {
  return this._hash.get(this._key);
};

function Hash() {
  this.content = new Map();
}

Hash.prototype.$$bindkey = function(key, value) {
  return this.content.set(key, value);
  return value;
};

Hash.prototype.$$atkey = function(key) {
  return this.content.has(key) ? this.content.get(key) : null;
};

Hash.prototype.$$existskey = function(key) {
  return this.content.has(key);
};

Hash.prototype.$$deletekey = function(key) {
  this.content.delete(key);
  return this;
};

Hash.prototype.$$clone = function() {
  var clone = new Hash();
  this.content.forEach(function(value, key, map) {
    clone.content.set(key, value);
  });
  return clone;
};

Hash.prototype.$$elems = function() {
  return this.content.size;
};

Hash.prototype.Num = function() {
  return this.$$elems();
};

Hash.prototype.$$toObject = function() {
  var ret = {};
  this.content.forEach(function(value, key, map) {
    ret[key] = value;
  });
  return ret;
};

Hash.prototype.$$toBool = function() {
  return this.content.size == 0 ? 0 : 1;
};

Hash.prototype.$$iterator = function() {
  return new HashIter(this);
};

module.exports = Hash;
