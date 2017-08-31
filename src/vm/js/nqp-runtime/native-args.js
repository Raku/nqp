class NativeIntArg {
  constructor(value) {
    this.value = value;
  }

  $$getInt() {
    return this.value;
  }

  $$decont() {
    return this;
  }
};

exports.NativeIntArg = NativeIntArg;

class NativeNumArg {
  constructor(value) {
    this.value = value;
  }

  $$getNum() {
    return this.value;
  }

  $$decont() {
    return this;
  }
};

exports.NativeNumArg = NativeNumArg;

class NativeStrArg {
  constructor(value) {
    this.value = value;
  }

  $$getStr() {
    return this.value;
  }
  
  $$decont() {
    return this;
  }
};

exports.NativeStrArg = NativeStrArg;
