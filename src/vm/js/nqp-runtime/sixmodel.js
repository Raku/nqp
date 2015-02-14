function STable(REPR, HOW) {
  this.REPR = REPR;
  this.HOW = HOW;
  this.obj_constructor = function() {};
  this.obj_constructor.prototype._STable = this;

  /* HACK - it's a bit hackish - think how correct it is */
  this.obj_constructor.prototype.$$clone = function() {
      var clone = new this._STable.obj_constructor();
      for (var i in this) {
        if (this.hasOwnProperty(i) && i != '_SC') {
          clone[i] = this[i];
        }
      }
      return clone;
  };

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
    } else if (mode == 7 || mode == 8) {
      // STUB
    } else {
      throw "setboolspec with mode: "+mode+" NYI";
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

module.exports.STable = STable;
