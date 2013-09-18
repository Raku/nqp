# NQP Opcodes

Opcodes (ops) are used both directly when writing NQP, and during code
generation in QAST nodes.

When invoking them directly, you'll need to prefix them with nqp::, e.g.

    nqp::mul_n(6,9);

The ops are listed below by type. Each entry shows the name of the op,
its variants, and their arguments and types, and may provide a short
description.  Some opcodes differ only by argument types - in that case,
they are listed under their common name (e.g. mul), with each of their
variants (e.g. mul_i, mul_n) together with a single description.

# Arithmetic Opcodes

## abs
*  `abs_i(int $i)`
*  `abs_n(num $n)`
*  `abs_I(Any $i)`

Return the absolute value of a number.

## add
*  `add_i(int $l, int $r)`
*  `add_n(num $l, num $r)`
*  `add_I(Any $l, Any $r)`

Add two numbers together, returning the result.

## div
*  `div_i(int $l, int $r)`
*  `div_n(num $l, num $r)`
*  `div_I(Any $l, Any $r)`

Divide $l by $r, returning the result.

## gcd
*  `gcd_i(int $l, int $r)`
*  `gcd_I(Any $l, Any $r)`

Return the greatest common multiple of two numbers. 

## lcm
*  `lcm_i(int $l, int $r)`
*  `lcm_I(Any $l, Any $r)`

Return the lowest common multiple of two numbers. 

## mod
*  `mod_i(int $l, int $r)`
*  `mod_n(num $l, num $r)`
*  `mod_I(Any $l, Any $r)`

Return the modulus of $l by $r.

## mul
*  `mul_i(int $l, int $r)`
*  `mul_n(num $l, num $r)`
*  `mul_I(Any $l, Any $r)`

Multiple two numbers, returning the result.

## neg
*  `neg_i(int $i)`
*  `neg_n(num $n)`
*  `neg_I(Any $i)`

Return the negative of a number.

## sub
*  `sub_i(int $l, int $r)`
*  `sub_n(num $l, num $r)`
*  `sub_I(Any $l, Any $r)`

Subtract $r from $l, returning the result.

# Numeric Opcodes

## ceil
*  `ceil_n(num $n)`
*  `ceil_I(Any $n)`

Return the ceiling of a number.

## exp
*  `exp_n(num $exponent)`
*  `exp_I(Any $exponent)`

Return the value of `e` raised to $exponent;

## floor
*  `floor_n(num $n)`
*  `floor_I(Any $n)`

Return the floor of a number.

## inf
*  `inf()`

Return infinity.

## isnanorinf
*  `isnanorinf_n(num $n)`

Return truth value indicating if this number represents any of the special
values, postive infinity, negative infinity, or NaN.

## log
*  `log_n(num $n)`
*  `log_I(Any $n)`

Return the log base 10 of a number.

## ln
*  `ln_n(num $n)`
*  `ln_I(Any $n)`

Return the natural logarithm of a number.

## nan
*  `nan()`

Return NaN.

## neginf
*  `neginf()`

Return negative infinity.

## pow
*  `pow_n(num $base, num $exponent)`
*  `pow_I(Any $base, Any $exponent)`

Return the value of $base raised to $exponent;

## sqrt
*  `sqrt_n(num $l, num $r)`
*  `sqrt_I(Any $l, Any $r)`

# Trigonometric Opcodes

Each opcode corresponds directly to the trigonmetric function of the same
name. `h` indicates a hyperbolic variant.

## asec
*  `asec_n(num $n)`
## asin
*  `asin_n(num $n)`
## acos
*  `acos_n(num $n)`
## atan
*  `atan_n(num $n)`
## atan2
*  `atan2_n(num $l, num $r)`
## cos
*  `cos_n(num $n)`
## cosh
*  `cosh_n(num $n)`
## sin
*  `sin_n(num $n)`
## sinh
*  `sinh_n(num $n)`
## sec
*  `sec_n(num $n)`
## sech
*  `sech_n(num $n)`
## tan
*  `tan_n(num $n)`
## tanh
*  `tanh_n(num $n)`

# Relational Opcodes

## cmp
*  `cmp_i(int $l, int $r)`
*  `cmp_n(num $l, num $r)`
*  `cmp_s(str $l, str $r)`

Compare two values, returns -1 if $l is greater than $r, 0 if they are equal,
and 1 if $r is greater than $l.

## iseq
*  `iseq_i(int $l, int $r)`
*  `iseq_n(num $l, num $r)`
*  `iseq_s(str $l, str $r)`

Return non-zero if the two parameters are equal.

## isgt 
*  `isgt_i(int $l, int $r)`
*  `isgt_n(num $l, num $r)`
*  `isgt_s(str $l, str $r)`

Return non-zero if $l is greater than two $r.

## isge
*  `isge_i(int $l, int $r)`
*  `isge_n(num $l, num $r)`
*  `isge_s(str $l, str $r)`

Return non-zero if $l is greater than or equal two $r.

## islt
*  `islt_i(int $l, int $r)`
*  `islt_n(num $l, num $r)`
*  `islt_s(str $l, str $r)`

Return non-zero if $l is less than two $r.

## isle
*  `isle_i(int $l, int $r)`
*  `isle_n(num $l, num $r)`
*  `isle_s(str $l, str $r)`

Return non-zero if $l is less than or equal two $r.

## isne
*  `isne_i(int $l, int $r)`
*  `isne_n(num $l, num $r)`
*  `isne_s(str $l, str $r)`

Return non-zero if the two parameters are not equal.

# Array opcodes

# Hash opcodes

## atkey
* `atkey(Any %hash, String $key)`
* `atkey_i(int %hash, String $key)`
* `atkey_n(num %hash, String $key)`
* `atkey_s(str %hash, String $key)`

Return the value of %hash at key $key.

## bindkey
* `bindkey(Any %hash, String $key, Any $b)`
* `bindkey_i(int %hash, String $key, int $b)`
* `bindkey_n(num %hash, String $key, num $b)`
* `bindkey_s(str %hash, String $key, str $b)`

Bind key $key of %hash to $b and return $b.

## existskey
* `existskey(Any %hash, String $key)`

Return non-zero if %hash has key $key bound to something.

## deletekey
* `deletekey(Any %hash, String $key)`

Delete the given key from %hash.

# String Opcodes

## radix
*  `radix_I(int $radix, String $str, int $pos, int $flags)`

Convert string $str into a number starting at offset $pos and using radix $radix.
The result of the conversion returns an array with

    out[0] = converted value
    out[1] = radix ** (number of digits converted)
    out[2] = offset after consuming digits, -1 if no digits consumed

The opcode skips single underscores between pairs of digits, per the Perl 6
specification.

The $flags is a bitmask that modifies the parse and/or result:

    0x01: negate the result (useful if you've already parsed a minus)
    0x02: parse a leading +/- and negate the result on -
    0x04: parse trailing zeroes but do not include in result
          (for parsing values after a decimal point)

# Conditional Opcodes

# Loop/Control Opcodes

# Exceptional Opcodes

# Context Introspection Opcodes

## getenvhash
*  `getenvhash()`

Returns a hash containing the environment variables.
Changing the hash doesn't affect the environment variables

## savecapture
*  `savecapture()`

Gets hold of the argument capture passed to the current block.
Commits to doing enough copying that the list is valid any amount of time.
See usecapture for a version of the op that doesn't promise that.
Used by the multi-dispatcher.

## usecapture
*  `usecapture()`

Gets hold of the argument capture passed to the current block.
(a future usecapture may invalidate it)
It's valid to implement this exactly the same way as savecapture if there's no performance benefit to be had in a split.
Used by the multi-dispatcher.
