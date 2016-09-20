'use strict';

var NQPInt = require('./nqp-int.js');

class CodePair {
  constructor(STable) {
    this.STable = STable;
  }

  configure(conf) {
    this.fetch = conf.content.get('fetch');
    this.store = conf.content.get('store');

    this.setupSTable();
  }

  setupSTable() {
    var fetch = this.fetch;
    var store = this.store;

    this.STable.addInternalMethod('$$assignunchecked', function(ctx, value) {
      store.$$call(ctx, {}, this, value);
      return value;
    });

    this.STable.addInternalMethod('$$assign', function(ctx, value) {
      store.$$call(ctx, {}, this, value);
      return value;
    });

    this.STable.addInternalMethod('$$decont', function(ctx) {
      return fetch.$$call(ctx, {}, this);
    });
  }

  serialize(cursor) {
    cursor.ref(this.fetch);
    cursor.ref(this.store);
  }

  deserialize(cursor) {
    this.fetch = cursor.variant();
    this.store = cursor.variant();

  }
};

CodePair.prototype.name = 'code_pair';

exports.code_pair = CodePair;

class NativeRef {
  constructor(STable) {
    this.STable = STable;
  }

  configure(conf) {
    this.setupSTable();
  }

  serialize(cursor) {
  }

  deserialize(cursor) {
  }

  setupSTable() {
    var primitiveType = this.STable.REPR.primitiveType;
    var STable = this.STable;

    /* TODO - take the hll in account when converting to object */

    if (primitiveType == 1) { // int
      this.STable.addInternalMethod('$$getInt', function(ctx, value) {
        return this.get();
      });

      this.STable.addInternalMethod('$$getNum', function(ctx, value) {
        return this.get();
      });

      this.STable.addInternalMethod('$$getStr', function(ctx, value) {
        return this.get().toString();
      });

      this.STable.addInternalMethod('$$iscont_i', function(ctx, value) {
        return 1;
      });

      this.STable.addInternalMethod('$$assign_i', function(ctx, value) {
        this.set(value);
        return value;
      });
      this.STable.addInternalMethod('$$decont_i', function(ctx, value) {
        return this.get();
      });
      this.STable.addInternalMethod('$$decont', function(ctx, value) {
        var hll = STable.hllOwner;
        if (hll == null) {
          hll = ctx.codeRef().staticCode.hll;
        }

        var type = hll.get('int_box');
        if (!type) {
          // HACK - nqp still uses NQPInt instead of the thing in the hll config
          return new NQPInt(this.get());
        } else {
          var repr = type._STable.REPR;
          var obj = repr.allocate(type._STable);
          obj.$$setInt(this.get());
          return obj;
        }
      });
    } else if (primitiveType == 2) { // num
      this.STable.addInternalMethod('$$getInt', function(ctx, value) {
        return this.get()|0;
      });

      this.STable.addInternalMethod('$$getNum', function(ctx, value) {
        return this.get();
      });

      this.STable.addInternalMethod('$$getStr', function(ctx, value) {
        return this.get().toString();
      });

      this.STable.addInternalMethod('$$iscont_n', function(ctx, value) {
        return 1;
      });
      this.STable.addInternalMethod('$$assign_n', function(ctx, value) {
        this.set(value);
        return value;
      });
      this.STable.addInternalMethod('$$decont_n', function(ctx, value) {
        return this.get();
      });
      this.STable.addInternalMethod('$$decont', function(ctx, value) {
        var hll = STable.hllOwner;
        if (hll == null) {
          hll = ctx.codeRef().staticCode.hll;
        }

        var type = hll.get('num_box');
        if (!type) {
          // HACK - nqp still uses raw javascript numbers instead of the thing in the hll config
          return this.get();
        } else {
          var repr = type._STable.REPR;
          var obj = repr.allocate(type._STable);
          obj.$$setNum(this.get());
          return obj;
        }
      });
    } else if (primitiveType == 3) { // str
      this.STable.addInternalMethod('$$getInt', function(ctx, value) {
        var ret = parseFloat(this.get());
        return isNaN(ret) ? 0 : ret|0;
      });

      this.STable.addInternalMethod('$$getNum', function(ctx, value) {
        var ret = parseFloat(this.get());
        return isNaN(ret) ? 0 : ret;
      });

      this.STable.addInternalMethod('$$getStr', function(ctx, value) {
        return this.get().toString();
      });

      this.STable.addInternalMethod('$$iscont_s', function(ctx, value) {
        return 1;
      });
      this.STable.addInternalMethod('$$assign_s', function(ctx, value) {
        this.set(value);
        return value;
      });
      this.STable.addInternalMethod('$$decont_s', function(ctx, value) {
        return this.get();
      });
      this.STable.addInternalMethod('$$getStr', function(ctx, value) {
        return this.get();
      });
      this.STable.addInternalMethod('$$decont', function(ctx, value) {
        var hll = STable.hllOwner;
        if (hll == null) {
          hll = ctx.codeRef().staticCode.hll;
        }

        var type = hll.get('str_box');
        if (!type) {
          // HACK - nqp still uses raw javascript strings instead of the thing in the hll config
          return this.get();
        } else {
          var repr = type._STable.REPR;
          var obj = repr.allocate(type._STable);
          obj.$$setStr(this.get());
          return obj;
        }
      });
    } else {
      throw "incorrect type of NativeRef: " + primitiveType;
    }
  }
};

NativeRef.prototype.name = 'native_ref';

exports.native_ref = NativeRef;
