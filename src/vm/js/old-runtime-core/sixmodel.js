
var Null = require('./null.js');

//HACK
function repr_clone() {
  var clone = new this._STable.obj_constructor();
  for (var i in this) {
    if (this.hasOwnProperty(i)) {
      clone[i] = this[i];
    }
  }
  clone._SC = null;
  return clone;
}

function STable(REPR, HOW) {
  this.REPR = REPR;
  this.HOW = HOW;
  this.obj_constructor = function() {};
  this.obj_constructor.prototype._STable = this;
  this.obj_constructor.prototype.repr_clone = repr_clone;
  if (this.REPR.setup_STable) {
    this.REPR.setup_STable(this);
  }
}

exports.mark_as_type_object = function(obj) {
  obj._type_object = 1;
  obj.at_key = function(ctx, _NAMED, key) {return Null};
};

STable.prototype.setMethodCache = function(method_cache) {
  // TODO delete old methods
  var proto = this.obj_constructor.prototype;
  this.method_cache = method_cache;
  for (var name in method_cache) {
    if (method_cache.hasOwnProperty(name)) {
      proto[name] = adapt_method(method_cache[name]);
    }
  }
};
STable.prototype.setContSpec = function(fetch, store) {
  this.obj_constructor.prototype.cont_FETCH = adapt_method(fetch);
  this.obj_constructor.prototype.cont_STORE = adapt_method(store);
};

STable.prototype.delegatePositional = function(attr) {
  this.obj_constructor.prototype.at_pos = function(ctx, _NAMED, key) {
    return this[attr].at_pos(ctx, _NAMED, key);
  };
  this.obj_constructor.prototype.bind_pos = function(ctx, _NAMED, key, value) {
    return this[attr].bind_pos(ctx, _NAMED, key, value);
  };
  this.obj_constructor.prototype.unshift = function(value) {
    return this[attr].unshift(value);
  };
};

STable.prototype.delegateAssociative = function(attr) {
  this.obj_constructor.prototype.at_key = function(ctx, _NAMED, key) {
    return this[attr].at_key(ctx, _NAMED, key);
  };
  this.obj_constructor.prototype.bind_key = function(ctx, _NAMED, key, value) {
    return this[attr].bind_key(ctx, _NAMED, key, value);
  };
};

exports.STable = STable;

// This turns a nqp method  into something we can put into a prototype.
function adapt_method(method) {
  return function _() {
    var args = [];
    args.push(arguments[0]);
    args.push(arguments[1]);
    args.push(this);
    for (var i = 2; i < arguments.length; i++) {
      args.push(arguments[i]);
    }

    /*HACK*/
    var code = method;
    if (code.code) code = code.code;
    if (method['$!do']) {
      code = method['$!do'];
      if (code.code) code = code.code;
    }
    if (!code.apply) {
      console.log(code);
    }
    return code.apply(this, args);
  }
}
exports.adapt_method = adapt_method;
