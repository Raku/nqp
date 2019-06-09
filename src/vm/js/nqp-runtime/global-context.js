'use strict';

class GlobalContext {
  constructor() {
    this.restore = [];
    this.save    = [];

    // Serialization context properties.
    this.scs              = new Map();
    this.compilingSCs     = [];
    this.scwbDisableDepth = 0;
    this.neverRepossess   = new WeakSet();

    // HLL properties.
    this.hllSyms          = new Map();
    this.hllConfigs       = new Map();
    this.compilerRegistry = new Map();

    // Runtime properties.
    this.loadedCache = new WeakMap();
  }
}

class GlobalContextWrapper {
  constructor() {
    this.context        = new GlobalContext();
    this.initialization = [];
  }

  initialize(setup) {
    setup(this.context);
    this.initialization.push(setup);
  }

  freshGlobalContext(setup) {
    const old = this.context;
    for (const save of old.save) {
      save(old);
    }

    this.context = new GlobalContext();
    for (const setup of this.initialization) {
      setup(this.context);
    }

    return old;
  }

  setGlobalContext(context) {
    const old = this.context;
    for (const save of old.save) {
      save(old);
    }

    this.context = context;
    for (const action of this.context.restore) {
      action(this.context);
    }

    return old;
  }

  restoreThisGlobalContext(callback) {
    callback(this.context);
    this.context.restore.push(callback);
  }

  saveThisGlobalContext(callback) {
    callback(this.context);
    this.context.save.push(callback);
  }

  // Think about compiling SCs.
};

module.exports = new GlobalContextWrapper();
