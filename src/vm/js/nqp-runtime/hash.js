var Map = require('es6-map');

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

module.exports = Hash;
