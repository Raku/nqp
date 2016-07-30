CodeRef.cuids = {};
function CodeRef(name, cuid) {
  this.name = name;
  this.cuid = cuid;
  this.staticCode = this;
  if (cuid) CodeRef.cuids[cuid] = this;
}

CodeRef.prototype.$$injectMethod = function(proto, name) {
  var codeRefAttr = this.staticCode.codeRefAttr;
  if (codeRefAttr === null) {
    return;
  } else if (codeRefAttr === undefined) {
    console.warn('unknown codeRefAttr');
  }

  if (proto.hasOwnProperty(codeRefAttr) && proto[codeRefAttr] !== this) {
    return;
  }

  proto[codeRefAttr] = this;

  if (!this.inject) this.inject = [];
  this.inject.push({name: name, proto: proto});

  if (this.hasOwnProperty('$$call')) {
    proto[name] = this.$$call;
  }
};

CodeRef.prototype.capture = function(block) {
  this.$$call = block;
  if (this.inject) {
    for (var i = 0; i < this.inject.length; i++) {
      this.inject[i].proto[this.inject[i].name] = block;
    }
  }
  return this;
};

CodeRef.prototype.setOuter = function(outerCtx) {
  this.outerCtx = outerCtx;
  return this;
};

// HACK - do this properly
CodeRef.prototype.$$call = function() {
  var nqp = require('nqp-runtime');
  if (this.closureTemplate) {

    var $$cuids = this.cuids;
    var declare = [];
    for (var i in $$cuids) {
      declare.push('cuid' + $$cuids[i].cuid + ' = $$cuids[' + i + ']');
    }
    var declareCuids = 'var ' + declare.join(',') + ';\n';

    var setSetting = this.setSetting || '';
    var template = declareCuids + setSetting + 'var ' + this.outerCtxVar + '= null;(' + this.closureTemplate + ')';
    var $$codeRef = this;

    this.$$call = eval(template);
    return this.$$call.apply(this, arguments);
  }
};

CodeRef.prototype.$apply = function(argsArray) {
  return this.$$call.apply(this, argsArray);
};

CodeRef.prototype.takeclosure = function() {
  console.trace("takeclosure shouldn't be used");
};


CodeRef.prototype.closure = function(block) {
  var closure = new CodeRef(this.name, undefined);
  closure.codeObj = this.codeObj;
  closure.cuid = this.cuid;
  closure.$$call = block;
  closure.staticCode = this;
  return closure;
};

CodeRef.prototype.CPS = function(block) {
  this.$$callCPS = block;
  return this;
};

CodeRef.prototype.sameCPS = function(block) {
  this.$$callCPS = function() {
    var args = Array.prototype.slice.call(arguments);
    var cont = args.splice(2, 1)[0];
    return cont(this.$$call.apply(this, args));
  };
  return this;
};

CodeRef.prototype.onlyCPS = function(block) {
  this.$$call = function() {
    throw 'this block can be only called in CPS mode';
  };
  return this;
};

CodeRef.prototype.setCodeObj = function(codeObj) {
  this.codeObj = codeObj;
  return this;
};

CodeRef.prototype.setInfo = function(ctx, outerCtxVar, closureTemplate, staticInfo, cuids, setSetting, codeRefAttr) {
  this.closureTemplate = closureTemplate;
  this.ctx = ctx;
  this.outerCtxVar = outerCtxVar;
  this.staticInfo = staticInfo;
  this.cuids = cuids;
  this.setSetting = setSetting;
  return this;
};

CodeRef.prototype.setCodeRefAttr = function(codeRefAttr) {
  this.codeRefAttr = codeRefAttr;
  return this;
};

CodeRef.prototype.$$clone = function() {
  var clone = new CodeRef(this.name, undefined);
  clone.$$call = this.$$call;
  clone.codeObj = this.codeObj;
  clone.staticCode = this.staticCode;
  clone.outerCtx = this.outerCtx;
  return clone;
};

CodeRef.prototype.$$toBool = function(ctx) {
  return 1;
};

module.exports = CodeRef;
