class NativeIntArg {
  constructor(value) {
    this.value = value;
  }

  $$getInt() {
    return this.value;
  }

  $$decont() {
    throw new Error("deconting native int arg");
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
    throw new Error("deconting native num arg");
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
    throw new Error("deconting native str arg");
  }
};

exports.NativeStrArg = NativeStrArg;
