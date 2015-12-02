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

// HACK - do this properly
CodeRef.prototype.$call = function() {
  var nqp = require('nqp-runtime');
  if (this["$!do"].closureTemplate) {
    console.log(this["$!do"]);
    var template = "var " + this["$!do"].outerCtx + "= null;(" + this["$!do"].closureTemplate + ")";
    this.$call = eval(template);
    this.$call.codeRef = this;
    return this.$call.apply(this, arguments);
  }
}

CodeRef.prototype.$apply = function _(argsArray) {
  return this.$call.apply(this, argsArray);
};

CodeRef.prototype.takeclosure = function() {
  console.trace("takeclosure shouldn't be used");
};

CodeRef.prototype.capture = function(block) {
  this.$call = block;
  block.codeRef = this;
  return this;
};

CodeRef.prototype.closure = function(block) {
  var closure = new CodeRef(this.name, undefined);
  closure.codeObj = this.codeObj;
  closure.$call = block;
  closure.$call.codeRef = closure;
  return closure;
};

CodeRef.prototype.CPS = function(block) {
  this.$callCPS = block;
  this.$callCPS.codeRef = this;
  return this;
};

CodeRef.prototype.sameCPS = function(block) {
  this.$callCPS = function() {
    var args = Array.prototype.slice.call(arguments);
    var cont = args.splice(2,1)[0];
    return cont(this.$call.apply(this, args));
  };
  return this;
};

CodeRef.prototype.onlyCPS = function(block) {
  this.$call = function() {
    throw "this block can be only called in CPS mode";
  };
  return this;
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
  clone.cuid = this.cuid + ' clone';
  return clone;
};

CodeRef.prototype.$$to_bool = function(ctx) {
  return 1;
};

module.exports = CodeRef;
