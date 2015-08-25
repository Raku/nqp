CodeRef.cuids = {};
function CodeRef(name, cuid) {
  this.name = name;
  this.cuid = cuid;
  if (cuid) CodeRef.cuids[cuid] = this;
}

CodeRef.prototype.block = function(func) {
  this.$call = func;
  func.codeRef = this;
};

CodeRef.prototype.$apply = function _(argsArray) {
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

CodeRef.prototype.setInfo = function(ctx, outerCtx, closureTemplate, staticInfo) {
  this.closureTemplate = closureTemplate;
  this.ctx = ctx;
  this.outerCtx = outerCtx;
  this.staticInfo = staticInfo;
  return this;
};

CodeRef.prototype.$$clone = function() {
  var clone = new CodeRef(this.name);
  clone.$call = this.$call;
  clone.codeObj = this.codeObj;
  clone.cuid = this.cuid+" clone";
  return clone;
};

module.exports = CodeRef;
