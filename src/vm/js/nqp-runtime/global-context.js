class GlobalContext {
  constructor() {
    this.restore = [];
    this.save = [];
  }
};

module.exports.context = new GlobalContext();

const initialization = [];

module.exports.initialize = function(setup) {
  setup(module.exports.context);
  initialization.push(setup);
};

module.exports.freshGlobalContext = function(setup) {
  const old = module.exports.context;

  for (const save of old.save) {
    save(old);
  }

  module.exports.context = new GlobalContext();

  for (const setup of initialization) {
    setup(module.exports.context);
  }

  return old;
};

module.exports.setGlobalContext = function(context) {
  const old = module.exports.context;

  for (const save of old.save) {
    save(old);
  }

  module.exports.context = context;

  for (const action of context.restore) {
    console.log('restoring context', action);
    action(context);
  }

  return old;
};

module.exports.restoreThisGlobalContext = function(callback) {
  callback(module.exports.context);
  module.exports.context.restore.push(callback);
};

module.exports.saveThisGlobalContext = function(callback) {
  callback(module.exports.context);
  module.exports.context.save.push(callback);
};

// Think about compilingSCs
