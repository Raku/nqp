'use strict';
const core = require('./core.js');

const hll = require('./hll.js');

const NQPInt = require('./nqp-int.js');

const isPrime = require('bigint-is-prime');

const op = {};
exports.op = op;
function intishBool(b) {
  return b ? 1 : 0;
}

function makeNum(type, num) {
  const instance = type._STable.REPR.allocate(type._STable);
  instance.$$setNum(num);
  return instance;
}

function makeBI(type, num) {
  const instance = type._STable.REPR.allocate(type._STable);
  instance.$$setBignum(num);
  return instance;
}

function getBI(obj) {
  return obj.$$getBignum();
}

op.fromstr_I = function(str, type) {
  return makeBI(type, BigInt(str));
};

op.tostr_I = function(n) {
  return getBI(n).toString();
};

op.base_I = function(n, base) {
  return getBI(n).toString(base).toUpperCase();
};

op.iseq_I = function(a, b) {
  return intishBool(getBI(a) === getBI(b));
};

op.isne_I = function(a, b) {
  return intishBool(getBI(a) !== getBI(b));
};

op.mul_I = function(a, b, type) {
  return makeBI(type, getBI(a) * getBI(b));
};

op.add_I = function(a, b, type) {
  return makeBI(type, getBI(a) + getBI(b));
};

op.sub_I = function(a, b, type) {
  return makeBI(type, getBI(a) - getBI(b));
};

op.div_I = function(a, b, type) {
  const divident = getBI(a);
  const divisor = getBI(b);
  // workaround for .div rounding to zero not down
  if (((divident < 0n) !== (divisor < 0n)) && divident % divisor !== 0n) {
    return makeBI(type, (divident / divisor) - 1n);
  }
  return makeBI(type, divident / divisor);
};

op.pow_I = function(a, b, numType, biType) {
  const base = getBI(a);
  const exponent = getBI(b);
  if (exponent < 0n) {
    return makeNum(numType, Math.pow(Number(base), Number(exponent)));
  } else {
    if (exponent > 4294967296 && base !== 1n && base !== -1n && base !== 0n) {
        return makeNum(numType, (base < 0n && exponent % 2n === 1n) ? Number.NEGATIVE_INFINITY : Number.POSITIVE_INFINITY);
    }
    return makeBI(biType, base ** exponent);
  }
};

op.mod_I = function(n, m, type) {
  /* TODO - think if this can be optimized. */
  /* We are doing this in complicated way because,
     bignum returns the module with the sign equal to the dividend not the divisor. */
  const a = getBI(n);
  const b = getBI(m);
  if ((a < 0n && b > 0n) || (a > 0n && b < 0n)) {
    const x = (a / b) - 1n;
    const ret = a - (b * x);
    return makeBI(type, (ret === b) ? 0n : ret);
  }
  return makeBI(type, a % b);
};

op.neg_I = function(a, type) {
  return makeBI(type, -getBI(a));
};

op.isbig_I = function(n) {
  /* Check if it needs more bits than a long can offer; note that
   * bitLength excludes sign considerations, thus 31 rather than
   * 32. */
  const x = getBI(n);
  return (x < -2147483648n || 2147483647n < x) ? 1 : 0;
};

op.expmod_I = function(a, b, c, type) {
  let base = getBI(a);
  let exponent = getBI(b);
  const modulus = getBI(c);

  if (modulus === 1n) return makeBI(type, 0n);

  let result = 1n;


  if (exponent < 0n && base != 1n) {
      return makeBI(type, 0n);
  }

  base = base % modulus;

  while (exponent > 0n) {
    if (exponent % 2n === 1n) {
      result = (result * base) % modulus;
    }
    exponent = exponent >> 1n;
    base = (base * base) % modulus;
  }

  return makeBI(type, result);
};


/* TODO - optimize by using a smaller bignum when so much isn't needed */
const digits = 325;
const digitsBignum = 10n ** BigInt(digits);

op.div_In = function(a, b) {
  const divisor = getBI(b);
  if (divisor === 0n) {
    return Number(getBI(a)) / 0;
  }

  let sign = 1;
  let big = ((getBI(a) * digitsBignum) / divisor).toString();
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
  return intishBool(getBI(a) <= getBI(b));
};

op.islt_I = function(a, b) {
  return intishBool(getBI(a) < getBI(b));
};

op.isge_I = function(a, b) {
  return intishBool(getBI(a) >= getBI(b));
};

op.isgt_I = function(a, b) {
  return intishBool(getBI(a) > getBI(b));
};

op.cmp_I = function(left, right) {
  const a = getBI(left);
  const b = getBI(right);
  return (a === b ? 0 : (a < b ? -1 : 1));
};

op.isprime_I = function(n, attempts) {
  const unboxed = getBI(n);
  return isPrime(unboxed) ? 1 : 0;
};

op.bitshiftl_I = function(a, b, type) {
  return makeBI(type, getBI(a) << BigInt(b));
};

op.bitshiftr_I = function(a, b, type) {
  return makeBI(type, getBI(a) >> BigInt(b));
};

op.bitand_I = function(a, b, type) {
  return makeBI(type, getBI(a) & getBI(b));
};

op.bitor_I = function(a, b, type) {
  return makeBI(type, getBI(a) | getBI(b));
};

op.bitxor_I = function(a, b, type) {
  return makeBI(type, getBI(a) ^ getBI(b));
};

op.bitneg_I = function(a, type) {
  return makeBI(type, ~getBI(a));
};

function gcd(a, b) {
  while (b !== 0n) {
    let r = a % b;
    a = b;
    b = r;
  }
  return a;
}

op.lcm_I = function(n, m, type) {
  const a = getBI(n);
  const b = getBI(m);
  const absA = a < 0n ? -a : a;
  const absB = b < 0n ? -b : b;
  return makeBI(type, (absA / gcd(a, b)) * absB);
};

/* TODO - benchmark the binary version */
op.gcd_I = function(a, b, type) {
  return makeBI(type, gcd(getBI(a), getBI(b)));
};

op.abs_I = function(n, type) {
  let x = getBI(n);
  return makeBI(type, x < 0n ? -x : x);
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
  })

  expanded = expanded.replace(/e\+(\d+)/, function(match, exponent) {
    return '0'.repeat(parseInt(exponent));
  })

  return makeBI(type, BigInt(expanded));
};

op.bool_I = function(n) {
  return intishBool(getBI(n) !== 0n);
};

op.radix_I = function(currentHLL, radix, str, zpos, flags, type) {
  const extracted = core.radixHelper(radix, str, zpos, flags);
  if (extracted == null) {
    return hll.slurpyArray(currentHLL, [makeBI(type, 0n), makeBI(type, 1n), new NQPInt(-1)]);
  }

  if (radix == 10) {
    const pow = 10n ** BigInt(extracted.power);
    return hll.slurpyArray(currentHLL, [makeBI(type, BigInt(extracted.number)), makeBI(type, pow), new NQPInt(extracted.offset)]);
  } else {
    const n = extracted.number;
    let base = 1n;
    let result = 0n;

    for (let i = n.length - 1; i >= 0; i--) {
      let digit = n.charCodeAt(i);
      if (digit >= 48 && digit <= 57) digit -= 48; // 0-9
      else if (digit >= 97 && digit <= 122) digit = digit - 97 + 10; // a-z
      else if (digit >= 65 && digit <= 90) digit = digit - 65 + 10; // A-Z
      else break;

      result += base * BigInt(digit);
      base = base * BigInt(radix);
    }

    if (n[0] == '-') result = -result;

    return hll.slurpyArray(currentHLL, [makeBI(type, result), makeBI(type, base), new NQPInt(extracted.offset)]);
  }
};

function bitSize(n) {
  let bits = 0;

  while (n) {
    n = n >> 1n;
    bits++;
  }
  return bits;
}

function randomWithSameBitSize(n) {
  let got = 0n;
  let needed = bitSize(n);
  while (needed >= 64) {
    let randomBits = core.generator.randomint()
    got = got << 64n | BigInt(randomBits[0]) << 32n | BigInt(randomBits[1]);
    needed -= 64;
  }

  if (needed === 0) {
    return got;
  }

  let randomBits = core.generator.randomint()
  let unused = 0;

  if (needed > 32) {
    needed -= 32;
    unused = 1;
    got = got << 32n | BigInt(randomBits[0])
  }


  const prefixMask = (2 ** needed) - 1;
  got = got << BigInt(needed) | BigInt((randomBits[unused] & prefixMask) >>> 0);

  return got;
}

op.rand_I = function(n, type) {
  const max = getBI(n);

  if (!core.isXorShiftGenerator) {
    core.generator = require('xorshift');
    core.isXorShiftGenerator = true;
  }

  let candidate;
  do {
    candidate = randomWithSameBitSize(max);
  } while (candidate >= max);

  return makeBI(type, candidate);
};
