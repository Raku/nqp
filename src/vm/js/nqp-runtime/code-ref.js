'use strict';

class WrappedCtx {
  constructor(wrap) {
    this.$$outer = wrap;
  }
  codeRef() {
    return {statiCode: null};
  }
};

class CodeRef {
  constructor(name, cuid) {
    this.name = name;
    this.cuid = cuid;
    this.staticCode = this;
    if (cuid) CodeRef.cuids[cuid] = this;
  }

  $$injectMethod(proto, name) {
    if (this.isCompilerStub) {
      return;
    }
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
  }

  capture(block) {
    this.$$call = block;
    if (this.inject) {
      for (var i = 0; i < this.inject.length; i++) {
        this.inject[i].proto[this.inject[i].name] = block;
      }
    }
    return this;
  }

  setOuter(outerCtx) {
    this.outerCtx = outerCtx;
    return this;
  }

  // HACK - do this properly
  $$call() {
    var nqp = require('nqp-runtime');
    if (this.closureTemplate) {

      var $$cuids = this.cuids;
      var declare = [];
      for (var i in $$cuids) {
        declare.push('cuid' + $$cuids[i].cuid + ' = $$cuids[' + i + ']');
      }
      var declareCuids = 'var ' + declare.join(',') + ';\n';

      var searched = this;
      var forcedOuterCtx = null;
      while (searched) {
        if (searched.forcedOuterCtx) {
          forcedOuterCtx = searched.forcedOuterCtx;
          break;
        }
        searched = searched.outerCodeRef;
      }
      var outerCtxVar = this.outerCodeRef.ctx;

      if (forcedOuterCtx) forcedOuterCtx = new WrappedCtx(forcedOuterCtx);

      var template = declareCuids + 'var ' + outerCtxVar + '= forcedOuterCtx;(' + this.closureTemplate + ')';
      this.$$call = eval(template);
      return this.$$call.apply(this, arguments);

    }
  }

  $$apply(argsArray) {
    return this.$$call.apply(this, argsArray);
  }

  takeclosure() {
    console.trace("takeclosure shouldn't be used");
  }


  closure(block) {
    var closure = new CodeRef(this.name, undefined);
    closure.codeObj = this.codeObj;
    closure.cuid = this.cuid;
    closure.$$call = block;
    closure.staticCode = this;
    return closure;
  }

  CPS(block) {
    this.$$callCPS = block;
    return this;
  }

  sameCPS(block) {
    this.$$callCPS = function() {
      var args = Array.prototype.slice.call(arguments);
      var cont = args.splice(2, 1)[0];
      return cont(this.$$call.apply(this, args));
    };
    return this;
  }

  onlyCPS(block) {
    this.$$call = function() {
      throw 'this block can be only called in CPS mode';
    };
    return this;
  }

  setCodeObj(codeObj) {
    this.codeObj = codeObj;
    return this;
  }

  setInfo(ctx, outerCodeRef, closureTemplate, lexicalsTypeInfo, cuids, setSetting, codeRefAttr) {
    this.closureTemplate = closureTemplate;
    this.ctx = ctx;
    this.outerCodeRef = outerCodeRef;
    this.lexicalsTypeInfo = lexicalsTypeInfo;
    this.cuids = cuids;
    return this;
  }

  setCodeRefAttr(codeRefAttr) {
    this.codeRefAttr = codeRefAttr;
    return this;
  }

  $$clone() {
    var clone = new CodeRef(this.name, undefined);
    clone.$$call = this.$$call;
    clone.codeObj = this.codeObj;
    clone.staticCode = this.staticCode;
    clone.outerCtx = this.outerCtx;
    return clone;
  }

  $$toBool(ctx) {
    return 1;
  }
};

CodeRef.cuids = {};

module.exports = CodeRef;
