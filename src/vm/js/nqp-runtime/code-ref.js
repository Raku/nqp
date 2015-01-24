function CodeRef() {
}

CodeRef.prototype.block = function(func) {
  this.$call = func;
  func.codeRef = this;
};

CodeRef.prototype.$apply = function(argsArray) {
  return this.$call.apply(this, argsArray);
};

CodeRef.prototype.takeclosure = function() {
  var closure = new CodeRef;
  closure.$call = this.$call;
  return closure;
};

CodeRef.prototype.setCodeObj = function(codeObj) {
  this.codeObj = codeObj;
  return this;
};

module.exports = CodeRef;
