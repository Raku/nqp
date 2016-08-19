'use strict';
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

    this.setupSTable();
  }
};

CodePair.prototype.name = 'code_pair';

exports.code_pair = CodePair;
