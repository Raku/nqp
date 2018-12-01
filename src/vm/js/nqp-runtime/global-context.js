class GlobalContext {
};

module.exports.context = new GlobalContext();

const initialization = [];

module.exports.initialize = function(setup) {
  setup(module.exports.context);
  initialization.push(setup);
};

module.exports.freshGlobalContext = function(setup) {
  const old = module.exports.context;

  module.exports.context = new GlobalContext();

  for (const setup of initialization) {
    setup(module.exports.context);
  }

  return old;
};

module.exports.setGlobalContext = function(context) {
  const old = module.exports.context;
  module.exports.context = context;
  return old;
};

// Think about compilingSCs
