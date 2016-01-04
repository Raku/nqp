function CurLexpad(get, set) {
  this.get = get;
  this.set = set;
}

CurLexpad.prototype.$$atkey = function(key) {
  return this.get[key]();
};

CurLexpad.prototype.$$bindkey = function(key, value) {
  this.set[key](value);
  return value;
};

CurLexpad.prototype.$$existskey = function(key) {
  return this.set.hasOwnProperty(key);
};

CurLexpad.prototype.lookup = function(key) {
  return this.get.hasOwnProperty(key) ? this.get[key]() : null;
};

module.exports = CurLexpad;
