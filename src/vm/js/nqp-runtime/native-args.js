class NativeIntArg {
  constructor(value) {
    this.value = value;
  }

  $$getInt() {
    return this.value;
  }

  $$decont() {
    throw new Error('deconting native int arg');
  }
};

exports.NativeIntArg = NativeIntArg;

class NativeUIntArg {
  constructor(value) {
    this.value = value;
  }

  $$getInt() {
    return (this.value|0);
  }

  $$decont() {
    throw new Error('deconting native int arg');
  }
};

exports.NativeUIntArg = NativeUIntArg;

class NativeNumArg {
  constructor(value) {
    this.value = value;
  }

  $$getNum() {
    return this.value;
  }

  $$decont() {
    throw new Error('deconting native num arg');
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
    throw new Error('deconting native str arg');
  }
};

exports.NativeStrArg = NativeStrArg;

class NativeNumRet {
  constructor(value) {
    this.value = value;
  }

  $$getNum() {
    return this.value;
  }

  $$decont() {
    return this;
  }
}

exports.NativeNumRet = NativeNumRet;

class NativeUIntRet {
  constructor(value) {
    this.value = value;
  }

  $$getInt() {
    return this.value|0;
  }

  $$decont() {
    return this;
  }
}

exports.NativeUIntRet = NativeUIntRet;
