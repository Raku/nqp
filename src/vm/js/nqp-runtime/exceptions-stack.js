const fibers = require('fibers');
const globalStack = [];
module.exports = function() {
  if (fibers.current === undefined) {
    return globalStack;
  } else if (fibers.current) {
    if (fibers.current.exceptionsStack === undefined) {
      fibers.current.exceptionsStack = [];
    }
    return fibers.current.exceptionsStack;
  }
};
