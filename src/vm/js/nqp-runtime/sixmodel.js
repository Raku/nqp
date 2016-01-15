function STable(REPR, HOW) {
  this.REPR = REPR;
  this.HOW = HOW;

  this.obj_constructor = REPR.create_obj_constructor(this);


  /* HACK - it's a bit hackish - think how correct it is */
  if (!this.obj_constructor.prototype.hasOwnProperty('$$clone')) {
    this.obj_constructor.prototype.$$clone = function() {
      var clone = new this._STable.obj_constructor();
      for (var i in this) {
        if (this.hasOwnProperty(i) && i != '_SC') {
          clone[i] = this[i];
        }
      }
      return clone;
    };
  }

  /* Default boolification mode 5 */
  this.obj_constructor.prototype.$$to_bool = function(ctx) {
    return this.type_object_ ? 0 : 1;
  };

  if (this.REPR.setup_STable) {
    this.REPR.setup_STable(this);
  }
}

STable.prototype.setboolspec = function(mode, method) {
  if (mode == 0) {
    this.obj_constructor.prototype.$$to_bool = function(ctx) {
      return method.$call(ctx, {}, this);
    };
  } else if (mode == 5) {
  // this is the default - do nothing
  } else if (mode == 7 || mode == 8) {
  // STUB
  } else {
    throw 'setboolspec with mode: ' + mode + ' NYI';
  }
};

STable.prototype.setinvokespec = function(classHandle, attrName, invocationHandler) {
  // TODO take classHandle into account
  this.obj_constructor.prototype.$call = function _() {
    return this[attrName].$call.apply(this, arguments);
  };
  this.obj_constructor.prototype.$apply = function _(args) {
    return this[attrName].$apply(args);
  };
  this.invocationSpec = {classHandle: classHandle, attrName: attrName, invocationHandler: invocationHandler};
};

function injectMethod(proto, name, method) {
  proto[name] = function _() {
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
  var obj = new this.obj_constructor();
  obj.type_object_ = 1;
  obj.$$atkey = function(key) {
    return null;
  };
  return obj;
};

STable.prototype.setMethodCache = function(method_cache) {
  // TODO delete old methods
  var proto = this.obj_constructor.prototype;
  this.method_cache = method_cache;
  for (var name in method_cache) {
    if (method_cache.hasOwnProperty(name)) {
      injectMethod(proto, name, method_cache[name]);
    }
  }
};

// TODO handle attrs properly
// TODO delegation to something that is not an array
STable.prototype.setPositionalDelegate = function(attr) {
  this.obj_constructor.prototype.$$bindpos = function(index, value) {
    return this[attr][index] = value;
  };

  this.obj_constructor.prototype.$$atpos = function(index) {
    return this[attr][index];
  };

  this.obj_constructor.prototype.$$unshift = function(value) {
    this[attr].unshift(value);
    return value;
  };

  this.obj_constructor.prototype.$$pop = function(value) {
    return this[attr].pop(value);
  };

  this.obj_constructor.prototype.$$push = function(value) {
    return this[attr].push(value);
  };

  this.obj_constructor.prototype.$$shift = function(value) {
    return this[attr].shift(value);
  };

  this.obj_constructor.prototype.$$elems = function(value) {
    return this[attr].length;
  };
};

// TODO handle attrs properly
STable.prototype.setAssociativeDelegate = function(attr) {
  this.obj_constructor.prototype.$$bindkey = function(key, value) {
    return this[attr].$$bindkey(key, value);
  };
  this.obj_constructor.prototype.$$atkey = function(key) {
    return this[attr].$$atkey(key);
  };
  this.obj_constructor.prototype.$$existskey = function(key) {
    return this[attr].$$existskey(key);
  };
  this.obj_constructor.prototype.$$deletekey = function(key) {
    return this[attr].$$deletekey(key);
  };
};

STable.prototype.addInternalMethod = function(name, func) {
  this.obj_constructor.prototype[name] = func;
};

module.exports.STable = STable;
