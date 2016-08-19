'use strict';
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
    return this.get.hasOwnProperty(key) ? this.get[key]() : null;
  }
};

module.exports = CurLexpad;
