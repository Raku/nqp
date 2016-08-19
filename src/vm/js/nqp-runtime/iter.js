function Iter(array) {
  this.array = array;
  this.target = array.length;
  this.idx = 0;
}

Iter.prototype.$$shift = function() {
  return this.array[this.idx++];
};

Iter.prototype.$$toBool = function(ctx) {
  return this.idx < this.target;
};

module.exports = Iter;
