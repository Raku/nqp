'use strict';

const coercions = require('./coercions');

const NQPInt = require('./nqp-int.js');

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
    const fetch = this.fetch;
    const store = this.store;

    this.STable.addInternalMethods(class {
      $$assignunchecked(ctx, value) {
        store.$$call(ctx, {}, this, value);
      }

      $$assign(ctx, value) {
        store.$$call(ctx, {}, this, value);
      }

      $$iscont() {
        return 1;
      }

      $$isrwcont() {
        return 1;
      }


      $$decont(ctx) {
        return fetch.$$call(ctx, {}, this);
      }
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
    const primitiveType = this.STable.REPR.primitiveType;
    const STable = this.STable;

    /* TODO - take the hll in account when converting to object */

    if (primitiveType == 1) { // int
      this.STable.addInternalMethods(class {
        $$iscont_i() {
          return 1;
        }

        $$iscont() {
          return 1;
        }

        $$isrwcont() {
          return 1;
        }

        $$assign(ctx, value) {
          this.set(value.$$getInt());
        }

        $$assign_i(ctx, value) {
          this.set(value);
        }

        $$decont_i(ctx) {
          return this.get();
        }

        $$getInt() {
          return this.get();
        }

        $$getNum() {
          return this.get();
        }

        $$getStr() {
          return this.get().toString();
        }

        $$decont(ctx) {
          let hll = STable.hllOwner;
          if (hll === undefined) {
            hll = ctx.codeRef().staticCode.hll;
          }

          const type = hll.get('int_box');
          if (!type) {
            // HACK - nqp still uses NQPInt instead of the thing in the hll config
            return new NQPInt(this.get());
          } else {
            const repr = type._STable.REPR;
            const obj = repr.allocate(type._STable);
            obj.$$setInt(this.get());
            return obj;
          }
        }
      });
    } else if (primitiveType == 2) { // num
      this.STable.addInternalMethods(class {
        $$iscont_n() {
          return 1;
        }

        $$iscont() {
          return 1;
        }

        $$isrwcont() {
          return 1;
        }

        $$assign_n(ctx, value) {
          this.set(value);
        }

        $$decont_n(ctx) {
          return this.get();
        }

        $$getInt() {
          return this.get()|0;
        }

        $$getNum() {
          return this.get();
        }

        $$getStr() {
          return coercions.numToStr(this.get());
        }

        $$decont(ctx) {
          let hll = STable.hllOwner;
          if (hll === undefined) {
            hll = ctx.codeRef().staticCode.hll;
          }

          const type = hll.get('num_box');
          if (!type) {
            // HACK - nqp still uses raw javascript numbers instead of the thing in the hll config
            return this.get();
          } else {
            const repr = type._STable.REPR;
            const obj = repr.allocate(type._STable);
            obj.$$setNum(this.get());
            return obj;
          }
        }

        $$assign(ctx, value) {
          this.set(value.$$getNum());
        }
      });
    } else if (primitiveType == 3) { // str
      this.STable.addInternalMethods(class {
        $$iscont_s() {
          return 1;
        }

        $$iscont() {
          return 1;
        }

        $$isrwcont() {
          return 1;
        }

        $$assign_s(ctx, value) {
          this.set(value);
        }

        $$decont_s(ctx) {
          return this.get();
        }

        $$getStr() {
          return this.get();
        }

        $$getInt() {
          return coercions.strToInt(this.get());
        }

        $$getNum() {
          return coercions.strToNum(this.get());
        }

        $$decont(ctx) {
          let hll = STable.hllOwner;
          if (hll === undefined) {
            hll = ctx.codeRef().staticCode.hll;
          }

          const type = hll.get('str_box');
          if (!type) {
            // HACK - nqp still uses raw javascript strings instead of the thing in the hll config
            return this.get();
          } else {
            const repr = type._STable.REPR;
            const obj = repr.allocate(type._STable);
            obj.$$setStr(this.get());
            return obj;
          }
        }

        $$assign(ctx, value) {
          this.set(value.$$getStr());
        }
      });
    } else {
      throw 'incorrect type of NativeRef: ' + primitiveType;
    }
  }
};

NativeRef.prototype.name = 'native_ref';

exports.native_ref = NativeRef;
