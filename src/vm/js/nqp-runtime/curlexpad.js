'use strict';

var Null = require('./null.js');

class CurLexpad {
  constructor(get, set) {
    this.get = get;
    this.set = set;
  }

  $$atkey(key) {
    return this.get[key]();
  }

  $$bindkey(key, value) {
    this.set[key](value);
    return value;
  }

  $$existskey(key) {
    return this.set.hasOwnProperty(key);
  }

  lookup(key) {
    return this.get.hasOwnProperty(key) ? this.get[key]() : Null;
  }
};

CurLexpad.prototype.$$atkey_i = CurLexpad.prototype.$$atkey_n = CurLexpad.prototype.$$atkey_s = CurLexpad.prototype.$$atkey;
CurLexpad.prototype.$$bindkey_i = CurLexpad.prototype.$$bindkey_n = CurLexpad.prototype.$$bindkey_s = CurLexpad.prototype.$$bindkey;


module.exports = CurLexpad;
