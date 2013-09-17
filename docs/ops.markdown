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
*  abs_i(int $i)
*  abs_n(num $n)

Return the absolute value of a number.

## add
*  add_i(int $l, int $r)
*  add_n(num $l, num $r)

Add two numbers together, returning the result.

## div
*  div_i(int $l, int $r)
*  div_n(num $l, num $r)

Divide $l by $r, returning the result.

## gcd
*  gcd_i(int $l, int $r)

Return the greatest common multiple of two numbers. 

## lcm
*  lcm_i(int $l, int $r)

Return the lowest common multiple of two numbers. 

## mod
*  mod_i(int $l, int $r)
*  mod_n(num $l, num $r)

Return the modulus of $l by $r.

## mul
*  mul_i(int $l, int $r)
*  mul_n(num $l, num $r)

Multiple two numbers, returning the result.

## neg
*  neg_i(int $i)
*  neg_n(num $n)

Return the negative of a number.

## sub
*  sub_i(int $l, int $r)
*  sub_n(num $l, num $r)

Subtract $r from $l, returning the result.

# String Opcodes

## radix
*  radix(int $radix, String $str, int $pos, int $flags)

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

# Miscellaneous Opcodes

## getenvhash
*  getenvhash()

Returns a hash containing the environment variables.
Changing the hash doesn't affect the environment variables

## savecapture
*  savecapture()

Gets hold of the argument capture passed to the current block.
Commits to doing enough copying that the list is valid any amount of time.
See usecapture for a version of the op that doesn't promise that.
Used by the multi-dispatcher.

## usecapture
*  usecapture()

Gets hold of the argument capture passed to the current block.
(a future usecapture may invalidate it)
It's valid to implement this exactly the same way as savecapture if there's no performance benefit to be had in a split.
Used by the multi-dispatcher.
