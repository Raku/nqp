'use strict';
var NQPException = require('./nqp-exception.js');
var Iter = require('./iter.js');

class NQPArray {
  constructor(array) {
    this.array = array;
  }

  push(ctx, _NAMED, self, element) {
    this.array.push(element);
    return element;
  }

  unshift(ctx, _NAMED, self, element) {
    this.array.unshift(element);
    return element;
  }

  shift(ctx, _NAMED, self) {
    var value = this.array.shift();
    if (value === undefined) return null;
    return value;
  }

  pop(ctx, _NAMED, self) {
    var value = this.array.pop();
    if (value === undefined) return null;
    return value;
  }

  $$atpos(index) {
    var value = this.array[index < 0 ? this.array.length + index : index];
    if (value === undefined) return null;
    return value;
  }

  $$atpos_s(index) {
    var value = this.array[index < 0 ? this.array.length + index : index];
    if (value === undefined) return null;
    return value;
  }

  $$atpos_n(index) {
    var value = this.array[index < 0 ? this.array.length + index : index];
    if (value === undefined) return 0.0;
    return value;
  }

  $$atpos_i(index) {
    var value = this.array[index < 0 ? this.array.length + index : index];
    if (value === undefined) return 0;
    return value;
  }

  $$bindpos(index, value) {
    return this.array[index < 0 ? this.array.length + index : index] = value;
  }

  $$join(delim) {
    return this.array.join(delim);
  }

  $$push(value) {
    this.array.push(value);
    return value;
  }

  $$pop() {
    var value = this.array.pop();
    if (value === undefined) return null;
    return value;
  }

  $$shift() {
    var value = this.array.shift();
    if (value === undefined) return null;
    return value;
  }

  $$unshift(value) {
    this.array.unshift(value);
    return value;
  }

  $$toBool(ctx) {
    return this.array.length == 0 ? 0 : 1;
  }

  $$elems() {
    return this.array.length;
  }

  $$existspos(index) {
    if (index < 0) index += this.array.length;
    return this.array.hasOwnProperty(index) ? 1 : 0;
  }

  Num() {
    return this.array.length;
  }

  $$splice(source, offset, length) {
    // TODO source which is not NQPArrray
    var args = [offset, length];
    for (var i = 0; i < source.array.length; i++) {
      args.push(source.array[i]);
    }
    this.array.splice.apply(this.array, args);
    return this;
  }

  $$setelems(elems) {
    this.array.length = elems;
  }

  $$numdimensions() {
    return 1;
  }

  $$dimensions() {
    return new NQPArray([this.array.length]);
  }

  $$setdimensions(dimensions) {
    if (dimensions.array.length != 1) {
      throw new NQPException('A dynamic array can only have a single dimension');
    } else {
      this.array.length = dimensions.array[0];
    }
  }

  $$clone() {
    return new NQPArray(this.array.slice());
  }

  $$atposnd(idx) {
    if (idx.array.length != 1) {
      throw new NQPException('A dynamic array can only be indexed with a single dimension');
    }
    var index = idx.array[0];
    var value = this.array[index < 0 ? this.array.length + index : index];
    if (value === undefined) return null;
    return value;
  }

  $$iterator() {
    return new Iter(this.array);
  }

  $$bindposnd(idx, value) {
    if (idx.array.length != 1) {
      throw new NQPException('A dynamic array can only be indexed with a single dimension');
    }
    var index = idx.array[0];
    return (this.array[index] = value);
  }
};

NQPArray.prototype.$$atposnd_i = NQPArray.prototype.$$atposnd;
NQPArray.prototype.$$atposnd_n = NQPArray.prototype.$$atposnd;
NQPArray.prototype.$$atposnd_s = NQPArray.prototype.$$atposnd;


NQPArray.prototype.$$bindposnd_i = NQPArray.prototype.$$bindposnd;
NQPArray.prototype.$$bindposnd_n = NQPArray.prototype.$$bindposnd;
NQPArray.prototype.$$bindposnd_s = NQPArray.prototype.$$bindposnd;

module.exports = NQPArray;
