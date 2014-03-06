var Null = require('./null.js');
function Ctx(caller, outer) {
  if (caller === undefined) {
    var stack = new Error().stack;
    console.log("can't create ctx", stack);
    process.exit();
  }
  this.handlers = {};
  this.caller = caller;
  this.outer = outer;
  this.resets = {};
}
Ctx.prototype.handle = function(name, code) {
  var ctx = new Ctx(this, this);
  ctx.handlers[name] = code;
  return ctx;
};
Ctx.prototype.die = function(ctx, msg) {
  var ctx = this;
  while (ctx.handlers && !ctx.handlers.CATCH) {
    if (!ctx.caller) {console.log('WTF');process.exit();}
    ctx = ctx.caller;
  }

  if (!ctx.handlers) {
    console.log('Unhandled exception:', msg);process.exit();
  }

  var e = {};

  var resume = {};
  e.resume = function() {
    throw resume;
  };
  e.rethrow = function() {
    ctx.caller.die();
  };
  e.to_s = function(ctx) {
    return msg;
  };
  try {
    ctx.handlers.CATCH(e);
  } catch (e) {
    if (e !== resume) {
      throw e;
    } else {
    }
  }
};
Ctx.prototype.lookup_contextual = function(name) {
  var ctx = this;
  while (ctx) {
    if (ctx.hasOwnProperty(name)) {
      return ctx[name];
    }
    ctx = ctx.caller;
  }
  return Null;
  /* Looking up of a contextual is allowed to fail,
     nqp code usually fallbacks to looking up of global */
};
Ctx.prototype.bind_contextual = function(name, value) {
  var ctx = this;
  while (ctx) {
    if (ctx.hasOwnProperty(name)) {
      ctx[name] = value;
      return ctx[name];
    }
    ctx = ctx.caller;
  }
  throw "Can't bind contextual: " + name;
};
Ctx.prototype.declare_var = function(name) {
  this[name] = Null;
};
Ctx.prototype.lookup = function(name) {
  var ctx = this;
  //console.log(ctx);
  while (ctx) {
    if (ctx.hasOwnProperty(name)) {
      return ctx[name];
    }
    ctx = ctx.outer;
  }
  throw "Can't lookup: " + name;
};
Ctx.prototype.bind = function(name, value) {
  var ctx = this;
  while (ctx) {
    if (ctx.hasOwnProperty(name)) {
      ctx[name] = value;
      return ctx[name];
    }
    ctx = ctx.outer;
  }
  throw "Can't bind: " + name;
};
Ctx.prototype.at_key = function(ctx, _NAMED, key) {
  return this[key];
};
module.exports = Ctx;
