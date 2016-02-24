var NQPException = require('./nqp-exception.js');

function NQPArray(array) {
  this.array = array;
}

NQPArray.prototype.push = function(ctx, _NAMED, element) {
  this.array.push(element);
  return element;
};

NQPArray.prototype.unshift = function(ctx, _NAMED, element) {
  this.array.unshift(element);
  return element;
};

NQPArray.prototype.shift = function(ctx, _NAMED) {
  return this.array.shift();
};

NQPArray.prototype.pop = function(ctx, _NAMED) {
  return this.array.pop();
};

NQPArray.prototype.$$atpos = function(index) {
  return this.array[index < 0 ? this.array.length + index : index];
};

NQPArray.prototype.$$atpos_s = function(index) {
  var value = this.array[index < 0 ? this.array.length + index : index];
  if (value === undefined) return null;
  return value;
};

NQPArray.prototype.$$atpos_n = function(index) {
  var value = this.array[index < 0 ? this.array.length + index : index];
  if (value === undefined) return 0.0;
  return value;
};

NQPArray.prototype.$$atpos_i = function(index) {
  var value = this.array[index < 0 ? this.array.length + index : index];
  if (value === undefined) return 0;
  return value;
};

NQPArray.prototype.$$bindpos = function(index, value) {
  return this.array[index < 0 ? this.array.length + index : index] = value;
};

NQPArray.prototype.$$join = function(delim) {
  return this.array.join(delim);
};

NQPArray.prototype.$$push = function(value) {
  this.array.push(value);
  return value;
};

NQPArray.prototype.$$pop = function() {
  return this.array.pop();
};

NQPArray.prototype.$$shift = function() {
  return this.array.shift();
};

NQPArray.prototype.$$unshift = function(value) {
  this.array.unshift(value);
  return value;
};

NQPArray.prototype.$$to_bool = function(ctx) {
  return this.array.length == 0 ? 0 : 1;
};

NQPArray.prototype.$$elems = function() {
  return this.array.length;
};

NQPArray.prototype.$$existspos = function(index) {
  if (index < 0) index += this.array.length;
  return this.array.hasOwnProperty(index) ? 1 : 0;
};

NQPArray.prototype.Num = function() {
  return this.array.length;
};

NQPArray.prototype.$$splice = function(source, offset, length) {
  // TODO source which is not NQPArrray
  var args = [offset, length];
  for (var i = 0; i < source.array.length; i++) {
    args.push(source.array[i]);
  }
  this.array.splice.apply(this.array, args);
  return this;
};

NQPArray.prototype.$$setelems = function(elems) {
  this.array.length = elems;
};

NQPArray.prototype.$$numdimensions = function() {
  return 1;
};

NQPArray.prototype.$$dimensions = function() {
  return new NQPArray([this.array.length]);
};

NQPArray.prototype.$$setdimensions = function(dimensions) {
  if (dimensions.array.length != 1) {
    throw new NQPException('A dynamic array can only have a single dimension');
  } else {
    this.array.length = dimensions.array[0];
  }
};

NQPArray.prototype.$$clone = function() {
  return new NQPArray(this.array.slice());
};

NQPArray.prototype.$$atposnd = function(idx) {
  console.log(idx);
  if (idx.array.length != 1) {
    throw new NQPException('A dynamic array can only be indexed with a single dimension');
  }
  var index = idx.array[0];
  return this.array[index < 0 ? this.array.length + index : index];
};

NQPArray.prototype.$$atposnd_i = NQPArray.prototype.$$atposnd;
NQPArray.prototype.$$atposnd_n = NQPArray.prototype.$$atposnd;
NQPArray.prototype.$$atposnd_s = NQPArray.prototype.$$atposnd;

NQPArray.prototype.$$bindposnd = function(idx, value) {
  if (idx.array.length != 1) {
    throw new NQPException('A dynamic array can only be indexed with a single dimension');
  }
  var index = idx.array[0];
  return (this.array[index] = value);
};

NQPArray.prototype.$$bindposnd_i = NQPArray.prototype.$$bindposnd;
NQPArray.prototype.$$bindposnd_n = NQPArray.prototype.$$bindposnd;
NQPArray.prototype.$$bindposnd_s = NQPArray.prototype.$$bindposnd;

module.exports = NQPArray;
