CodeRef.cuids = {};
function CodeRef(name, cuid) {
  this.name = name;
  this.cuid = cuid;
  if (cuid) CodeRef.cuids[cuid] = this;
}

CodeRef.prototype.block = function(func) {
  this.$call = func;
};

// HACK - do this properly
CodeRef.prototype.$call = function() {
  var nqp = require('nqp-runtime');
  if (this.closureTemplate) {
    var template = 'var ' + this.outerCtx + '= null;(' + this.closureTemplate + ')';
    var $$codeRef = this;
    this.$call = eval(template);
    return this.$call.apply(this, arguments);
  }
};

CodeRef.prototype.$apply = function(argsArray) {
  return this.$call.apply(this, argsArray);
};

CodeRef.prototype.takeclosure = function() {
  console.trace("takeclosure shouldn't be used");
};

CodeRef.prototype.capture = function(block) {
  this.$call = block;
  return this;
};

CodeRef.prototype.method = function(method) {
  this.$call = function() {
    var args = [];
    args.push(arguments[0]);
    args.push(arguments[1]);
    for (var i = 3; i < arguments.length; i++) {
      args.push(arguments[i]);
    }
    return method.apply(arguments[2], args);
  };

  /* TODO - think about cloning */

  return this;
};

CodeRef.prototype.closure = function(block) {
  var closure = new CodeRef(this.name, undefined);
  closure.codeObj = this.codeObj;
  closure.cuid = this.cuid;
  closure.$call = block;
  return closure;
};

CodeRef.prototype.CPS = function(block) {
  this.$callCPS = block;
  return this;
};

CodeRef.prototype.sameCPS = function(block) {
  this.$callCPS = function() {
    var args = Array.prototype.slice.call(arguments);
    var cont = args.splice(2, 1)[0];
    return cont(this.$call.apply(this, args));
  };
  return this;
};

CodeRef.prototype.onlyCPS = function(block) {
  this.$call = function() {
    throw 'this block can be only called in CPS mode';
  };
  return this;
};

CodeRef.prototype.setCodeObj = function(codeObj) {
  this.codeObj = codeObj;
  return this;
};

CodeRef.prototype.setInfo = function(ctx, outerCtx, closureTemplate, staticInfo, asMethod) {
  this.closureTemplate = closureTemplate;
  this.ctx = ctx;
  this.outerCtx = outerCtx;
  this.staticInfo = staticInfo;
  this.asMethod = asMethod;
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
