var Null = require('./null.js');
function Hash(content) {
  if (content) {
    for (var key in content) {
      this[key] = content[key];
    }
  }
}
exports.Hash = Hash;
Object.defineProperty(Hash.prototype, 'at_key',
    {value: function(ctx, _NAMED, key) {
      if (!this.hasOwnProperty(key.to_s(ctx))) return Null;
      return this[key.to_s(ctx)];
    },enumerable: false});
Object.defineProperty(Hash.prototype, 'bind_key',
    {value: function(ctx, _NAMED, key, value) {
      this[key.to_s(ctx)] = value;
      return value;
    },enumerable: false});
Object.defineProperty(Hash.prototype, 'Bool',
    {value: function(ctx, _NAMED) {
      for (key in this) {
        if (this.hasOwnProperty(key)) return 1;
      }
      return 0;
    },enumerable: false, writable: true});
function count(ctx, _NAMED) {
  var count = 0;
  for (key in this) {
    if (this.hasOwnProperty(key)) count++;
  }
  return count;
}
Object.defineProperty(Hash.prototype, 'to_i',
    {value: count, enumerable: false, writable: true});

Object.defineProperty(Hash.prototype, 'to_n',
    {value: count, enumerable: false, writable: true});

Object.defineProperty(Hash.prototype, 'repr_clone',
    {value: function(ctx, _NAMED) {
      return new Hash(this);
    },enumerable: false});

module.exports = Hash;
