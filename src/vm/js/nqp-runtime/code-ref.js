'use strict';

var NQPObject = require('./nqp-object.js');
var StaticCtx = require('./static-ctx.js');

class CodeRef extends NQPObject {
  freshBlock() {
    return this.closureTemplate;
  }

  constructor(name, cuid) {
    super();
    this.name = name;
    this.cuid = cuid;
    this.staticCode = this;
  }

  captureCtx(outerCtx) {
    this.$$call = this.freshBlock();
    this.outerCtx = outerCtx;
  }

  capture(block) {
    this.$$call = block;
    return this;
  }

  setOuter(outerCtx) {
    this.outerCtx = outerCtx;
    return this;
  }

  // HACK - do this properly
  $$call() {
    let staticCode = this.staticCode;
    if (staticCode.closureTemplate) {
      /* HACK */
      let searched = staticCode;

      let fakeCtx;
      let fakeOuterCtx;

      let setOuter = outer => {
        if (fakeCtx) {
          fakeCtx.$$outer = outer;
        } else {
          fakeOuterCtx = outer;
        }
      };

      while (true) {
        if (searched.outerCtx) {
          setOuter(searched.outerCtx);
          break;
        } else if (searched.outerCodeRef) {
          let newFakeCtx = new StaticCtx();

          setOuter(newFakeCtx);

          fakeCtx = newFakeCtx;

          let outerCode = searched.outerCodeRef;
          fakeCtx.$$cuid = searched.outerCodeRef.cuid;
          let staticVars = outerCode.staticVars;
          if (staticVars) {
            for (var staticVarName in staticVars) {
              fakeCtx[staticVarName] = staticVars[staticVarName];
            }
          }
          searched = searched.outerCodeRef;
        } else {
          setOuter(null);
          break;
        }
      }

      this.outerCtx = fakeOuterCtx;

      this.$$call = staticCode.freshBlock();
      return staticCode.$$call.apply(staticCode, arguments);
    } else {
      console.log("can't autoclose - BAD");
    }
  }

  $$apply(argsArray) {
    return this.$$call.apply(this, argsArray);
  }

  closure(block) {
    var closure = new CodeRef(this.name, this.cuid);
    closure.codeObj = this.codeObj;
    closure.$$call = block;
    closure.staticCode = this;
    return closure;
  }

  closureCtx(outerCtx) {
    var closure = new CodeRef(this.name, this.cuid);
    closure.codeObj = this.codeObj;
    closure.$$call = this.freshBlock();
    closure.staticCode = this;

    /* HACK thing more how declaration_static should be handled,
       we need this for rakudo.js setting loading to work */

    if (outerCtx === null && this.outerCtx) {
      closure.outerCtx = this.outerCtx;
    } else {
      closure.outerCtx = outerCtx;
    }

    return closure;
  }

  captureAndClosure(outer, block) {
    this.capture(block);
    var closure = this.closure(block);
    if (outer !== null) {
      this.outerCtx = outer;
      closure.outerCtx = outer;
    }
    return closure;
  }

  captureAndClosureCtx(outerCtx) {
    this.capture(this.freshBlock());
    var closure = this.closure(this.freshBlock());

    if (outerCtx !== null) {
      this.outerCtx = outerCtx;
      closure.outerCtx = outerCtx;
    }

    return closure;
  }

  setCodeObj(codeObj) {
    this.codeObj = codeObj;
    return this;
  }

  setInfo(outerCodeRef, closureTemplate, lexicalsTypeInfo, staticVars) {
    this.closureTemplate = closureTemplate;
    this.outerCodeRef = outerCodeRef;
    this.lexicalsTypeInfo = lexicalsTypeInfo;
    this.staticVars = staticVars;
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

  $$can(ctx, name) {
    return 0;
  }
};

module.exports = CodeRef;
