function CodeRef() {
}

CodeRef.prototype.block = function(func) {
  this.$call = func;
  func.codeRef = this;
};

CodeRef.prototype.apply = function(thisArg, argsArray) {
  return this.$call.apply(thisArg, argsArray);
};

CodeRef.prototype.takeclosure = function() {
  var closure = new CodeRef;
  closure.$call = this.$call;
  return closure;
};

module.exports = CodeRef;
