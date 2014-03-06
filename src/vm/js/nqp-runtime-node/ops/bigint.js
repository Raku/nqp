var nqp_bool = require('nqp-runtime-core/helpers.js').nqp_bool;
var reprs = require('nqp-runtime-core/reprs.js');
var op = exports;
function makeBI(type,num) {
  var instance = type._STable.REPR.allocate(type._STable);
  if (type._STable.REPR instanceof reprs.P6bigint) {
    instance.value = num;
  } else {
    instance._STable.set_bignum(instance,num)
  }
  return instance;
}
function getBI(obj) {
  // TODO a bit hackish
  if (obj._STable.get_bignum) {
    return obj._STable.get_bignum(obj);
  }
  return obj.value;
}
var bignum = require('bigint');

op.tonum_I = function(ctx,n) {
  return getBI(n).toNumber();
}

op.fromstr_I = function(ctx,str,type) {
  return makeBI(type,bignum(str));
};
op.fromnum_I = function(ctx,num,type) {
  // node-bigint bug workaround, when a negative number is too big it gets turned into 0
  if (num < 0) {
    return makeBI(type,bignum(-num).neg());
  } else {
    return makeBI(type,bignum(num));
  }
};
op.tostr_I = function(ctx,n) {
  return getBI(n).toString();
};
op.base_I = function(ctx,n,base) {
  return getBI(n).toString(base).toUpperCase();
};
op.iseq_I = function(ctx,a,b) {
  return nqp_bool(getBI(a).eq(getBI(b)));
};
op.mul_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).mul(getBI(b)));
};
op.add_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).add(getBI(b)));
};
op.sub_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).sub(getBI(b)));
};
op.sub_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).sub(getBI(b)));
};
op.div_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).div(getBI(b)));
};
op.pow_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).pow(getBI(b)));
};
op.expmod_I = function(ctx,a,b,c,type) {
  return makeBI(type,getBI(a).powm(getBI(b),getBI(c)));
};
op.div_In = function(ctx,a,b) {
  var digits = 1e+20;
  return getBI(a).mul(bignum(digits)).div(getBI(b)).toNumber()/digits;
};
op.rand_I = function(ctx,max,type) {
  return makeBI(type,getBI(max).rand());
};
op.isle_I = function(ctx,a,b) {
  return nqp_bool(getBI(a).le(getBI(b)));
};
op.islt_I = function(ctx,a,b) {
  return nqp_bool(getBI(a).le(getBI(b)));
};
op.isprime_I = function(ctx,n) {
  return nqp_bool(getBI(n).probPrime(50));
};

op.bitshiftl_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).shiftLeft(b));
};
op.bitshiftr_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).shiftRight(b));
};
op.bitshiftr_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).shiftRight(b));
};
op.bitand_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).and(getBI(b)));
};
op.bitor_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).or(getBI(b)));
};
op.bitxor_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).xor(getBI(b)));
};
op.bitneg_I = function(ctx,a,type) {
  return makeBI(type,getBI(a).neg().sub(1));
};
op.lcm_I = function(ctx,n,m,type) {
  var a = getBI(n);
  var b = getBI(m);
  return makeBI(type,(a.abs().div(a.gcd(b)).mul(b.abs())));
};
op.gcd_I = function(ctx,a,b,type) {
  return makeBI(type,getBI(a).gcd(getBI(b)));
};

op.bool_I = function(ctx,n) {
  return nqp_bool(getBI(n).toNumber());
};
