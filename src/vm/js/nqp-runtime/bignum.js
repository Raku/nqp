'use strict';

const JSBI = require('jsbi');
const asIntN = require('./as-int-n.js');

const ZERO = JSBI.BigInt(0);
const ONE = JSBI.BigInt(1);
const TWO = JSBI.BigInt(2);

const core = require('./core.js');

const hll = require('./hll.js');

const NQPInt = require('./nqp-int.js');

const isPrime = require('jsbi-is-prime');

const op = {};
exports.op = op;
function intishBool(b) {
  return b ? 1 : 0;
}

function makeNum(type, num) {
  const instance = type.$$STable.REPR.allocate(type.$$STable);
  instance.$$setNum(num);
  return instance;
}

function makeBI(type, num) {
  const instance = type.$$STable.REPR.allocate(type.$$STable);
  instance.$$setBignum(num);
  return instance;
}

function getBI(obj) {
  return obj.$$getBignum();
}

op.fromstr_I = function(str, type) {
  return makeBI(type, JSBI.BigInt(str));
};

op.tostr_I = function(n) {
  return getBI(n).toString();
};

op.base_I = function(n, base) {
  return getBI(n).toString(base).toUpperCase();
};

op.iseq_I = function(a, b) {
  return intishBool(JSBI.equal(getBI(a), getBI(b)));
};

op.isne_I = function(a, b) {
  return intishBool(!JSBI.equal(getBI(a), getBI(b)));
};

op.mul_I = function(a, b, type) {
  return makeBI(type, JSBI.multiply(getBI(a), getBI(b)));
};

op.add_I = function(a, b, type) {
  return makeBI(type, JSBI.add(getBI(a), getBI(b)));
};

op.sub_I = function(a, b, type) {
  return makeBI(type, JSBI.subtract(getBI(a), getBI(b)));
};

op.div_I = function(a, b, type) {
  const divident = getBI(a);
  const divisor = getBI(b);
  // workaround for .div rounding to zero not down
  if ((JSBI.lessThan(divident, ZERO) !== JSBI.lessThan(divisor, ZERO)) && !JSBI.equal(JSBI.remainder(divident, divisor), ZERO)) {
    return makeBI(type, JSBI.subtract(JSBI.divide(divident, divisor), ONE));
  }
  return makeBI(type, JSBI.divide(divident, divisor));
};

op.pow_I = function(a, b, numType, biType) {
  const base = getBI(a);
  const exponent = getBI(b);
  if (JSBI.lessThan(exponent, ZERO)) {
    return makeNum(numType, Math.pow(Number(base), Number(exponent)));
  } else {
    if (JSBI.greaterThan(exponent, JSBI.BigInt(4294967296)) && !JSBI.equal(base, ONE) && !JSBI.equal(base, JSBI.unaryMinus(ONE)) && !JSBI.equal(base, ZERO)) {
        return makeNum(numType, (JSBI.lessThan(base, ZERO) && JSBI.equal(JSBI.remainder(exponent, TWO), ONE)) ? Number.NEGATIVE_INFINITY : Number.POSITIVE_INFINITY);
    }
    return makeBI(biType, JSBI.exponentiate(base, exponent));
  }
};

op.mod_I = function(n, m, type) {
  /* TODO - think if this can be optimized. */
  /* We are doing this in complicated way because,
     bignum returns the module with the sign equal to the dividend not the divisor. */
  const a = getBI(n);
  const b = getBI(m);
  if ((JSBI.lessThan(a, ZERO) && JSBI.greaterThan(b, ZERO)) || (JSBI.greaterThan(a, ZERO) && JSBI.lessThan(b, ZERO))) {
    const x = JSBI.subtract(JSBI.divide(a, b), ONE);
    const ret = JSBI.subtract(a, JSBI.multiply(b, x));
    return makeBI(type, JSBI.equal(ret, b) ? ZERO : ret);
  }
  return makeBI(type, JSBI.remainder(a, b));
};

op.neg_I = function(a, type) {
  return makeBI(type, JSBI.unaryMinus(getBI(a)));
};

op.isbig_I = function(n) {
  /* Check if it needs more bits than a long can offer; note that
   * bitLength excludes sign considerations, thus 31 rather than
   * 32. */
  const x = getBI(n);
  return (JSBI.lessThan(x, JSBI.BigInt('-2147483648')) || JSBI.greaterThan(x, JSBI.BigInt('2147483647'))) ? 1 : 0;
};

op.expmod_I = function(a, b, c, type) {
  let base = getBI(a);
  let exponent = getBI(b);
  const modulus = getBI(c);

  if (JSBI.equal(modulus, ONE)) return makeBI(type, ZERO);

  let result = ONE;


  if (JSBI.lessThan(exponent, ZERO) && !JSBI.equal(base, ONE)) {
      return makeBI(type, ZERO);
  }

  base = JSBI.remainder(base, modulus);

  while (JSBI.greaterThan(exponent, ZERO)) {
    if (JSBI.equal(JSBI.remainder(exponent, TWO), ONE)) {
      result = JSBI.remainder(JSBI.multiply(result, base), modulus);
    }
    exponent = JSBI.signedRightShift(exponent, ONE);
    base = JSBI.remainder(JSBI.multiply(base, base), modulus);
  }

  return makeBI(type, result);
};


/* TODO - optimize by using a smaller bignum when so much isn't needed */
const digits = 325;
const digitsBignum = JSBI.exponentiate(JSBI.BigInt(10), JSBI.BigInt(digits));

op.div_In = function(a, b) {
  const divisor = getBI(b);
  if (JSBI.equal(divisor, ZERO)) {
    return Number(getBI(a)) / 0;
  }

  let sign = 1;
  let big = JSBI.divide(JSBI.multiply(getBI(a), digitsBignum), divisor).toString();
  if (big.substr(0, 1) == '-') {
    big = big.substr(1);
    sign = -1;
  }

  if (big.length <= digits) {
    return sign * parseFloat('0.' + '0'.repeat(digits - big.length) + big);
  } else {
    return sign * parseFloat(big.substr(0, big.length - digits) + '.' + big.substr(big.length - digits));
  }
};


op.isle_I = function(a, b) {
  return intishBool(JSBI.lessThanOrEqual(getBI(a), getBI(b)));
};

op.islt_I = function(a, b) {
  return intishBool(JSBI.lessThan(getBI(a), getBI(b)));
};

op.isge_I = function(a, b) {
  return intishBool(JSBI.greaterThanOrEqual(getBI(a), getBI(b)));
};

op.isgt_I = function(a, b) {
  return intishBool(JSBI.greaterThan(getBI(a), getBI(b)));
};

op.cmp_I = function(left, right) {
  const a = getBI(left);
  const b = getBI(right);
  return (JSBI.equal(a, b) ? 0 : (JSBI.lessThan(a, b) ? -1 : 1));
};

op.isprime_I = function(n) {
  return isPrime(getBI(n)) ? 1 : 0;
};

op.bitshiftl_I = function(a, b, type) {
  return makeBI(type, JSBI.leftShift(getBI(a), JSBI.BigInt(b)));
};

op.bitshiftr_I = function(a, b, type) {
  return makeBI(type, JSBI.signedRightShift(getBI(a), JSBI.BigInt(b)));
};

op.bitand_I = function(a, b, type) {
  return makeBI(type, JSBI.bitwiseAnd(getBI(a), getBI(b)));
};

op.bitor_I = function(a, b, type) {
  return makeBI(type, JSBI.bitwiseOr(getBI(a), getBI(b)));
};

op.bitxor_I = function(a, b, type) {
  return makeBI(type, JSBI.bitwiseXor(getBI(a), getBI(b)));
};

op.bitneg_I = function(a, type) {
  return makeBI(type, JSBI.bitwiseNot(getBI(a)));
};

function gcd(a, b) {
  while (!JSBI.equal(b, ZERO)) {
    const r = JSBI.remainder(a, b);
    a = b;
    b = r;
  }
  return a;
}

op.lcm_I = function(n, m, type) {
  const a = getBI(n);
  const b = getBI(m);
  const absA = a < ZERO ? JSBI.unaryMinus(a) : a;
  const absB = b < ZERO ? JSBI.unaryMinus(b) : b;
  return makeBI(type, JSBI.multiply(JSBI.divide(absA, gcd(a, b)), absB));
};

/* TODO - benchmark the binary version */
op.gcd_I = function(a, b, type) {
  return makeBI(type, gcd(getBI(a), getBI(b)));
};

op.abs_I = function(n, type) {
  const x = getBI(n);
  return makeBI(type, x < ZERO ? JSBI.unaryMinus(x) : x);
};

op.tonum_I = function(n) {
  return Number(getBI(n));
};

op.fromI_I = function(value, type) {
  return makeBI(type, getBI(value));
};

op.fromnum_I = function(num, type) {
  const intified = num < 0 ? -Math.floor(-num) : Math.floor(num);

  // TODO - don't do the string conversion for smaller ones
  const stringy = intified.toFixed(0);

  let expanded = stringy.replace(/\.(\d+)e\+(\d+)/, function(match, floating, exponent) {
    return floating + '0'.repeat(parseInt(exponent - floating.length));
  });

  expanded = expanded.replace(/e\+(\d+)/, function(match, exponent) {
    return '0'.repeat(parseInt(exponent));
  });

  return makeBI(type, JSBI.BigInt(expanded));
};

op.bool_I = function(n) {
  return intishBool(!JSBI.equal(getBI(n), ZERO));
};

const TEN = JSBI.BigInt(10);

op.radix_I = function(currentHLL, radix, str, zpos, flags, type) {
  const extracted = core.radixHelper(radix, str, zpos, flags);
  if (extracted == null) {
    return hll.slurpyArray(currentHLL, [makeBI(type, ZERO), makeBI(type, ONE), new NQPInt(-1)]);
  }

  if (radix == 10) {
    const pow = JSBI.BigInt(extracted.power);
    return hll.slurpyArray(currentHLL, [makeBI(type, JSBI.BigInt(extracted.number)), makeBI(type, pow), new NQPInt(extracted.offset)]);
  } else {
    const n = extracted.number;
    let base = 0;
    let result = ZERO;

    for (let i = n.length - 1; i >= 0; i--) {
      let digit = n.charCodeAt(i);
      if (digit >= 48 && digit <= 57) digit -= 48; // 0-9
      else if (digit >= 97 && digit <= 122) digit = digit - 97 + 10; // a-z
      else if (digit >= 65 && digit <= 90) digit = digit - 65 + 10; // A-Z
      else break;

      result = JSBI.add(result, JSBI.multiply(base, JSBI.BigInt(digit)));
      base++;
    }

    if (n[0] == '-') result = JSBI.unaryMinus(result);

    return hll.slurpyArray(currentHLL, [makeBI(type, result), makeBI(type, JSBI.BigInt(base)), new NQPInt(extracted.offset)]);
  }
};

function bitSize(n) {
  let bits = 0;

  if (JSBI.lessThan(n, ZERO)) n = JSBI.unaryMinus(n);

  while (!JSBI.equal(n, ZERO)) {
    n = JSBI.signedRightShift(n, ONE);
    bits++;
  }
  return bits;
}

exports.bitSize = bitSize;

const THIRTY_TWO = JSBI.BigInt(32);
const SIXTY_FOUR = JSBI.BigInt(64);

function randomWithSameBitSize(n) {
  let got = ZERO;
  let needed = bitSize(n);

  while (needed >= 64) {
    const randomBits = core.randomInt();
    got = JSBI.bitwiseOr(JSBI.bitwiseOr(JSBI.leftShift(got, SIXTY_FOUR), JSBI.leftShift(JSBI.BigInt(randomBits[0]), THIRTY_TWO)), JSBI.BigInt(randomBits[1]));
    needed -= 64;
  }

  if (needed === 0) {
    return got;
  }

  const randomBits = core.randomInt();
  let unused = 0;

  if (needed > 32) {
    needed -= 32;
    unused = 1;
    got = JSBI.bitwiseOr(JSBI.leftShift(got, THIRTY_TWO), JSBI.BigInt(randomBits[0]));
  }


  const prefixMask = (2 ** needed) - 1;
  got = JSBI.bitwiseOr(JSBI.leftShift(got, JSBI.BigInt(needed)), JSBI.BigInt((randomBits[unused] & prefixMask) >>> 0));

  return got;
}

op.rand_I = function(n, type) {
  const max = getBI(n);

  let candidate;
  do {
    candidate = randomWithSameBitSize(max);
  } while (JSBI.greaterThanOrEqual(candidate, max));

  return makeBI(type, candidate);
};

op.add_i64 = function(a, b) {
  return asIntN.asIntN(64, JSBI.add(a, b));
};

op.sub_i64 = function(a, b) {
  return asIntN.asIntN(64, JSBI.subtract(a, b));
};
