function STable(REPR, HOW) {
  this.REPR = REPR;
  this.HOW = HOW;

  this.modeFlags = 0;

  this.objConstructor = REPR.createObjConstructor(this);


  /* HACK - it's a bit hackish - think how correct it is */
  if (!this.objConstructor.prototype.hasOwnProperty('$$clone')) {
    this.objConstructor.prototype.$$clone = function() {
      var clone = new this._STable.objConstructor();
      for (var i in this) {
        if (this.hasOwnProperty(i) && i != '_SC') {
          clone[i] = this[i];
        }
      }
      return clone;
    };
  }

  /* Default boolification mode 5 */
  this.objConstructor.prototype.$$toBool = function(ctx) {
    return this.typeObject_ ? 0 : 1;
  };

  if (this.REPR.setup_STable) {
    this.REPR.setup_STable(this);
  }
}

STable.prototype.setboolspec = function(mode, method) {
  this.boolificationSpec = {mode: mode, method: method};
  if (mode == 0) {
    this.objConstructor.prototype.$$toBool = function(ctx) {
      return method.$call(ctx, {}, this);
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
};

STable.prototype.setinvokespec = function(classHandle, attrName, invocationHandler) {
  // TODO take classHandle into account
  if (classHandle) {
    var attr = this.REPR.getAttr(classHandle, attrName);
    this.objConstructor.prototype.$call = function() {
      return this[attr].$call.apply(this[attr], arguments);
    };
    this.objConstructor.prototype.$apply = function(args) {
      return this[attr].$apply(args);
    };
  } else {
    this.objConstructor.prototype.$call = function() {
      var args = [];
      args.push(arguments[0]);
      args.push(arguments[1]);
      args.push(this);
      for (var i = 2; i < arguments.length; i++) {
        args.push(arguments[i]);
      }
      return invocationHandler.$apply(args);
    };

    this.objConstructor.prototype.$apply = function(args) {
      var newArgs = [];
      newArgs.push(args[0]);
      newArgs.push(args[1]);
      newArgs.push(this);
      for (var i = 2; i < args.length; i++) {
        newArgs.push(args[i]);
      }
      return invocationHandler.$apply(newArgs);
    };
  }
  this.invocationSpec = {classHandle: classHandle, attrName: attrName, invocationHandler: invocationHandler};
};

function injectMethod(proto, name, method) {
  proto[name] = function() {
    //    console.log("calling method:",name,method);
    if (method.$call) {
      var args = [];
      args.push(arguments[0]);
      args.push(arguments[1]);
      args.push(this);
      for (var i = 2; i < arguments.length; i++) {
        args.push(arguments[i]);
      }
      return method.$call.apply(method, args);
    }
  };
}

STable.prototype.createTypeObject = function() {
  var obj = new this.objConstructor();
  obj.typeObject_ = 1;
  obj.$$atkey = function(key) {
    return null;
  };
  obj.$$atpos = function(index) {
    return null;
  };
  return obj;
};

STable.prototype.setMethodCache = function(methodCache) {
  // TODO delete old methods
  var proto = this.objConstructor.prototype;
  this.methodCache = methodCache;
  for (var name in methodCache) {
    if (methodCache.hasOwnProperty(name)) {
      injectMethod(proto, name, methodCache[name]);
    }
  }
};

// TODO handle attrs properly
STable.prototype.setPositionalDelegate = function(attr) {
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
};

// TODO handle attrs properly
STable.prototype.setAssociativeDelegate = function(attr) {
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
};

STable.prototype.addInternalMethod = function(name, func) {
  this.objConstructor.prototype[name] = func;
};

module.exports.STable = STable;
