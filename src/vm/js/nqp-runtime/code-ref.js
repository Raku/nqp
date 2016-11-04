'use strict';

var NQPObject = require('./nqp-object.js');

class WrappedCtx {
  constructor(wrap) {
    this.$$outer = wrap;
  }
  codeRef() {
    return {statiCode: null};
  }
};

class StaticCtx {
  constructor() {
  }
};

class CodeRef extends NQPObject {
  constructor(name, cuid) {
    super();
    this.name = name;
    this.cuid = cuid;
    this.staticCode = this;
  }

  $$injectMethod(proto, name) {
    if (this.isCompilerStub) {
      return;
    }
    var codeRefAttr = this.staticCode.codeRefAttr;
    if (codeRefAttr === null) {
      return;
    } else if (codeRefAttr === undefined) {
      return;
    }

    if (Object.prototype.hasOwnProperty.call(proto, codeRefAttr) && proto[codeRefAttr] !== this) {
      return;
    }

    /* HACK - think how forcedOuterCtx on injected methods should work */
    proto.forcedOuterCtx = undefined;

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
    //console.log("doing a hack with closure template", this.closureTemplate);
    if (this.closureTemplate) {

      var searched = this;
      var forcedOuterCtx = null;
      while (searched) {
        if (searched.forcedOuterCtx) {
          forcedOuterCtx = searched.forcedOuterCtx;
          break;
        }
        searched = searched.outerCodeRef;
      }

      var i = this.closureTemplate.length - 1;

      var codeRefForCtx = this.outerCodeRef;
      var fakeCtxs = [];

      fakeCtxs.unshift(forcedOuterCtx ? new WrappedCtx(forcedOuterCtx) : new StaticCtx());


      if (codeRefForCtx && codeRefForCtx.staticVars) {
        for (var staticVarName in codeRefForCtx.staticVars) {
          fakeCtxs[0][staticVarName] = codeRefForCtx.staticVars[staticVarName];
        }
      }

      while (i-- > 0) {
        codeRefForCtx = codeRefForCtx.outerCodeRef;
        fakeCtxs.unshift(new StaticCtx());

        if (codeRefForCtx && codeRefForCtx.staticVars) {
          for (var staticVarName in codeRefForCtx.staticVars) {
            fakeCtxs[0][staticVarName] = codeRefForCtx.staticVars[staticVarName];
          }
        }
      }


      this.$$call = this.closureTemplate.apply(null, fakeCtxs);
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
    var closure = new CodeRef(this.name, this.cuid);
    closure.codeObj = this.codeObj;
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

  setInfo(outerCodeRef, closureTemplate, lexicalsTypeInfo) {
    this.closureTemplate = closureTemplate;
    this.outerCodeRef = outerCodeRef;
    this.lexicalsTypeInfo = lexicalsTypeInfo;
    return this;
  }

  setStaticVars(staticVars) {
    this.staticVars = staticVars;
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

module.exports = CodeRef;
