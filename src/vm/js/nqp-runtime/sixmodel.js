'use strict';

var incompleteMethodCaches = [];
var null_s = require('./null_s.js'); /* Used when evaling runtime compiled methods */
var Null = require('./null.js');

var repossession = require('./repossession.js');
var compilingSCs = repossession.compilingSCs;

/* Needed for setting defaults values of attrs for objects */
var bignum = require('bignum');
var ZERO = bignum(0);


class STable {
  constructor(REPR, HOW) {
    this.REPR = REPR;
    this.HOW = HOW;

    this.modeFlags = 0;

    this._SC = null;

    this.objConstructor = REPR.createObjConstructor(this);

    /* HACK - it's a bit hackish - think how correct it is */
    this.objConstructor.prototype.$$clone = function() {
      var clone = new this._STable.objConstructor();
      for (var i in this) {
        if (Object.prototype.hasOwnProperty.call(this, i) && i != '_SC') {
          clone[i] = this[i];
        }
      }
      return clone;
    };

    /* Default boolification mode 5 */
    this.objConstructor.prototype.$$toBool = function(ctx) {
      return this.typeObject_ ? 0 : 1;
    };

    this.objConstructor.prototype.$$decont = function(ctx) {
      return this;
    };

    this.objConstructor.prototype.typeObject_ = 0;

    this.objConstructor.prototype.$$call = undefined;
    this.objConstructor.prototype.$$injectMethod = undefined;

    if (this.REPR.setupSTable) {
      this.REPR.setupSTable(this);
    }
  }

  setboolspec(mode, method) {
    this.boolificationSpec = {mode: mode, method: method};
    if (mode == 0) {
      this.objConstructor.prototype.$$toBool = function(ctx) {
        return method.$$call(ctx, {}, this).$$toBool(ctx);
      };
    } else if (mode == 1) {
      this.objConstructor.prototype.$$toBool = function(ctx) {
        return this.$$getInt() == 0 ? 0 : 1;
      };
    } else if (mode == 2) {
      this.objConstructor.prototype.$$toBool = function(ctx) {
        return this.$$getNum() == 0 ? 0 : 1;
      };
    } else if (mode == 3) {
      this.objConstructor.prototype.$$toBool = function(ctx) {
        return this.$$getStr() == '' ? 0 : 1;
      };
    } else if (mode == 4) {
      this.objConstructor.prototype.$$toBool = function(ctx) {
        var str = this.$$getStr();
        return (str == '' || str == '0') ? 0 : 1;
      };
    } else if (mode == 5) {
    // this is the default - do nothing
    } else if (mode == 6) {
      this.objConstructor.prototype.$$toBool = function(ctx) {
        return this.$$getBignum().eq(0) ? 0 : 1;
      };
    } else if (mode == 7) {
    // STUB
    } else if (mode == 8) {
      this.objConstructor.prototype.$$toBool = function(ctx) {
        return this.$$elems() ? 1 : 0;
      };
    } else {
      throw 'setboolspec with mode: ' + mode + ' NYI';
    }
  }

  setinvokespec(classHandle, attrName, invocationHandler) {
    if (classHandle !== Null) {
      /* TODO  - think if we can use direct access here */
      var getter = this.REPR.getterForAttr(classHandle, attrName);
      this.objConstructor.prototype.$$call = function() {
        var value = this[getter]();
        return value.$$call.apply(value, arguments);
      };
      this.objConstructor.prototype.$$apply = function(args) {
        return this[getter]().$$apply(args);
      };

      this.objConstructor.prototype.$$injectMethod = function(proto, name) {
        var value = this[getter]();
        if (value && value.$$injectMethod) {
          return value.$$injectMethod(proto, name);
        }
      };
    } else {
      this.objConstructor.prototype.$$call = function() {
        var args = [];
        args.push(arguments[0]);
        args.push(arguments[1]);
        args.push(this);
        for (var i = 2; i < arguments.length; i++) {
          args.push(arguments[i]);
        }
        return invocationHandler.$$apply(args);
      };

      this.objConstructor.prototype.$$apply = function(args) {
        var newArgs = [];
        newArgs.push(args[0]);
        newArgs.push(args[1]);
        newArgs.push(this);
        for (var i = 2; i < args.length; i++) {
          newArgs.push(args[i]);
        }
        return invocationHandler.$$apply(newArgs);
      };
    }
    this.invocationSpec = {classHandle: classHandle, attrName: attrName, invocationHandler: invocationHandler};

    var setAgain = incompleteMethodCaches;
    incompleteMethodCaches = [];
    for (var i = 0; i < setAgain.length; i++) {
      setAgain[i].setMethodCache(setAgain[i].methodCache);
    }
  }


  createTypeObject() {
    var obj = new this.objConstructor();
    obj.typeObject_ = 1;
    obj.$$atkey = function(key) {
      return Null;
    };
    obj.$$atpos = function(index) {
      return Null;
    };
    obj.$$decont = function(ctx) {
      return this;
    };
    return obj;
  }

  injectMethod(proto, name, method) {
    proto[name] = function() {
      return method.$$call.apply(method, arguments);
    };

    if (method.$$injectMethod) {
      method.$$injectMethod(proto, name);
    }
  }

  setMethodCache(methodCache) {
    // TODO delete old methods
    var proto = this.objConstructor.prototype;
    this.methodCache = methodCache;
    var notReadyYet = false;
    for (var name in methodCache) {
      if (methodCache.hasOwnProperty(name)) {
        this.injectMethod(proto, name, methodCache[name]);
        if (!methodCache[name].$$call) {
          notReadyYet = true;
        }
      }
    }

    if (notReadyYet) {
      incompleteMethodCaches.push(this);
    }
  }

  setPositionalDelegate(attr) {
    this.objConstructor.prototype.$$bindpos = function(index, value) {
      return this[attr].$$bindpos(index, value);
    };

    this.objConstructor.prototype.$$atpos = function(index) {
      return this[attr].$$atpos(index);
    };

    this.objConstructor.prototype.$$unshift = function(value) {
      return this[attr].$$unshift(value);
    };

    this.objConstructor.prototype.$$pop = function(value) {
      return this[attr].$$pop(value);
    };

    this.objConstructor.prototype.$$push = function(value) {
      return this[attr].$$push(value);
    };

    this.objConstructor.prototype.$$shift = function(value) {
      return this[attr].$$shift(value);
    };

    this.objConstructor.prototype.$$elems = function(value) {
      return this[attr].$$elems();
    };
  }

  setAssociativeDelegate(attr) {
    this.objConstructor.prototype.$$bindkey = function(key, value) {
      return this[attr].$$bindkey(key, value);
    };
    this.objConstructor.prototype.$$atkey = function(key) {
      return this[attr].$$atkey(key);
    };
    this.objConstructor.prototype.$$existskey = function(key) {
      return this[attr].$$existskey(key);
    };
    this.objConstructor.prototype.$$deletekey = function(key) {
      return this[attr].$$deletekey(key);
    };
  }

  addInternalMethod(name, func) {
    this.objConstructor.prototype[name] = func;
  }

  addInternalMethods(klass) {
    for (let methodName of Object.getOwnPropertyNames(klass.prototype)) {
      this.addInternalMethod(methodName, klass.prototype[methodName]);
    }
  }

  compileAccessor(accessor, code, setup) {
    this.code = this.code || '';
    this.setup = this.setup || '';
    if (setup) this.setup += setup;
    this.code += 'STable.addInternalMethod("' + accessor + '",' + code + ');\n';
  }

  evalGatheredCode() {
    if (this.code) {
      var STable = this;
      eval(this.setup + this.code);
      this.code = '';
    }
  }

  scwb() {
    if (compilingSCs.length == 0 || repossession.scwbDisableDepth) return;
    if (compilingSCs[compilingSCs.length - 1] !== this._SC) {
      compilingSCs[compilingSCs.length - 1].repossessSTable(this);
    }
  }
};

module.exports.STable = STable;
