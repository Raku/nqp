function STable(REPR, HOW) {
  this.REPR = REPR;
  this.HOW = HOW;
  this.obj_constructor = function() {};
  this.obj_constructor.prototype._STable = this;

  if (this.REPR.setup_STable) {
    this.REPR.setup_STable(this);
  }
}


STable.prototype.setinvokespec = function(classHandle, attrName, invocationHandler) {
  // TODO take classHandle into account
  this.obj_constructor.prototype.$call = function() {
    return this[attrName].$call.apply(this, arguments);
  };
  this.obj_constructor.prototype.$apply = function(args) {
    return this[attrName].$apply(args);
  };
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
