const fibers = process.browser ? {} : require('fibers');

const globalContext = require('./global-context.js');

globalContext.initialize(context => context.exceptionsStack = []);

module.exports = function() {
  if (fibers.current === undefined) {
    return globalContext.context.exceptionsStack;
  } else if (fibers.current) {
    if (fibers.current.exceptionsStack === undefined) {
      fibers.current.exceptionsStack = [];
    }
    return fibers.current.exceptionsStack;
  }
};
