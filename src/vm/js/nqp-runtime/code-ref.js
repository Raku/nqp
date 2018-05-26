'use strict';

const NQPObject = require('./nqp-object.js');
const StaticCtx = require('./static-ctx.js');

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
    const staticCode = this.staticCode;
    if (staticCode.closureTemplate) {
      /* HACK */
      let searched = staticCode;

      let fakeCtx;
      let fakeOuterCtx;

      const setOuter = outer => {
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
          const newFakeCtx = new StaticCtx();

          setOuter(newFakeCtx);

          fakeCtx = newFakeCtx;

          const outerCode = searched.outerCodeRef;
          fakeCtx.$$cuid = searched.outerCodeRef.cuid;
          const staticVars = outerCode.staticVars;
          if (staticVars) {
            for (const staticVarName in staticVars) {
              fakeCtx[staticVarName] = staticVars[staticVarName];
            }
          }

          const contVars = outerCode.contVars;
          if (contVars) {
            for (const contVarName in contVars) {
              /* not cloning make INIT and BEGIN correctly */
              fakeCtx[contVarName] = contVars[contVarName];
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
      return this.$$call.apply(this, arguments);
    } else {
      console.log('can\'t autoclose - BAD');
    }
  }

  $$apply(argsArray) {
    return this.$$call.apply(this, argsArray);
  }

  closure(block) {
    const closure = new CodeRef(this.name, this.cuid);
    closure.codeObj = this.codeObj;
    closure.$$call = block;
    closure.staticCode = this;
    return closure;
  }

  closureCtx(outerCtx) {
    const closure = new CodeRef(this.name, this.cuid);
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
    const closure = this.closure(block);
    if (outer !== null) {
      this.outerCtx = outer;
      closure.outerCtx = outer;
    }
    return closure;
  }

  captureAndClosureCtx(outerCtx) {
    this.capture(this.freshBlock());
    const closure = this.closure(this.freshBlock());

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

  setInfo(outerCodeRef, closureTemplate, lexicalsTypeInfo, staticVars, contVars, sourceOffset) {
    this.closureTemplate = closureTemplate;
    this.outerCodeRef = outerCodeRef;
    this.lexicalsTypeInfo = lexicalsTypeInfo;
    this.staticVars = staticVars;
    this.contVars = contVars;
    this.sourceOffset = sourceOffset;
    return this;
  }

  $$clone() {
    const clone = new CodeRef(this.name, undefined);
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

  $$istype(ctx, type) {
    return 0;
  }

  getOuterCtx() {
    return this.outerCtx || this.staticCode.outerCtx || null;
  }
};

module.exports = CodeRef;
