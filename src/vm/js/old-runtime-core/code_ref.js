var Ctx = require('./ctx.js');
function CodeRef(code, static_coderef, ctx) {
  if (code) {
    this.code = code;
    code.code_ref = this;
    this.static_info = static_coderef;
    this.outer = ctx;
  }
}
function create_static_coderef(info) {
  var closure = info.closure;
  if (!closure.cache) {
    var staticCtx = new Ctx(null, null);
    staticCtx.fake_static_ctx = 1;
    /*if (code_refs[i].setting) {
        staticCtx.get_setting(code_refs[i].setting);
    }*/
    closure.cache = closure(staticCtx);
    closure.cache.static_info = info;
  }
  return closure.cache;
}
// a bit of hack to export stuff this way
CodeRef.create_static_coderef = create_static_coderef;

CodeRef.prototype.static_coderef = function() {
  return create_static_coderef(this.static_info);
};
CodeRef.prototype.apply = function _(thisArg, argsArray) {
  return this.code.apply(thisArg, argsArray);
};
CodeRef.prototype.update = function(code) {
  if (code instanceof CodeRef) {
    this.static_info = code.static_info;
    this.outer = code.outer;
    code = code.code;
  }
  this.code = code;
  code.code_ref = this;
  return this;
};
CodeRef.prototype.repr_clone = function() {
  var clone = new CodeRef();
  for (var i in this) {
    if (this.hasOwnProperty(i)) {
      clone[i] = this[i];
    }
  }
  clone.info += ' cloned';
  return clone;
};
module.exports = CodeRef;
