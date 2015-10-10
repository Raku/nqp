function Hash() {
  this.content = {};
}
Hash.prototype.$$bindkey = function(key, value) {
  return (this.content[key] = value);
};

Hash.prototype.$$atkey = function(key) {
  return this.content.hasOwnProperty(key) ? this.content[key] : null;
};

Hash.prototype.$$existskey = function(key) {
  return this.content.hasOwnProperty(key);
};

Hash.prototype.$$deletekey = function(key) {
  delete this.content[key];
  return this;
};

Hash.prototype.$$clone = function() {
  var clone = new Hash();
  for (var key in this.content) {
    clone.content[key] = this.content[key];
  }
  return clone;
};

Hash.prototype.$$elems = function() {
  var count = 0;
  for (var key in this.content) {
    count++;
  }
  return count;
};

Hash.prototype.Num = function() {
  return this.$$elems();
};

module.exports = Hash;
