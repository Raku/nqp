function CodeRef(name) {
  this.name = name;
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

CodeRef.prototype.setInfo = function(ctx, closureTemplate, staticInfo) {
  this.closureTemplate = closureTemplate;
  this.ctx = ctx;
  this.staticInfo = staticInfo;
  return this;
};

CodeRef.prototype.$$clone = function() {
  var clone = new CodeRef(this.name);
  clone.$call = this.$call;
  clone.codeObj = this.codeObj;
  return clone;
};

module.exports = CodeRef;
