# NQP Opcodes

Opcodes (ops) are used both directly when writing NQP, and during code
generation in QAST nodes.

When invoking them directly, you'll need to prefix them with nqp::, e.g.

    nqp::mul_n(6,9);

The ops are listed below by type. Each entry shows the name of the op,
its variants, and their arguments and types, and may provide a short
description.  Some opcodes differ only by argument types - in that case,
they are listed under their common name (e.g. `mul`), with each of their
variants (e.g. `mul_i`, `mul_n`) together with a single description.

Opcode variants may contain a type suffix, which usually indicates:

* `_i` argument is native int 
* `_n` argument is native float
* `_s` argument is native string
* `_b` argument is code blocks
* `_I` argument is Big Integer

They may also have a numeric suffix, which typically indicates the number
of arguments required.

In opcode signatures below, we use the following types, which may not
correspond directly to NQP types.

* int       - native int
* num       - native float
* str       - native string
* Int       - BigInt
* Mu        - any NQP or VM object
* Mu:T      - a type object, e.g. `Int`
* Exception - an Exception object
* Handle    - an I/O Handle object
* Iterable  - something iterable
* Context   - a Context object
* LexPad    - a Context object
* @         - this sigil indicates an array parameter
* %         - this sigil indicates a hash parameter
* ...       - indicates variable args are accepted

VM-specific opcodes are denoted with a `jvm`, e.g. on the same line
as the header. No annotation indicates this opcode should be supported on
all nqp backends.

Some individual opcodes may be marked with _Internal_ or _Deprecated_.
Both of these indicate the opcodes are not intended to be used. Deprecated
opcodes will eventually be removed from NQP. Internal opcodes are typically
used at compile time to replace opcodes that take a variable number of
arguments.

# Arithmetic Opcodes

## abs
* `abs_i(int $i)`
* `abs_n(num $n)`
* `abs_I(Int $i, Mu:T $type)`

Return the absolute value of a number.
`_I` variant returns an object of the given type.

## add
* `add_i(int $l, int $r)`
* `add_n(num $l, num $r)`
* `add_I(Int $l, Int $r, Mu:T $type)`

Add two numbers together, returning the result.
`_I` variant returns an object of the given type.

## div
* `div_i(int $l, int $r)`
* `div_n(num $l, num $r)`
* `div_I(Int $l, Int $r, Mu:T $type)`
* `div_In(Int $l, Int $r)`

Divide $l by $r, returning the result.
`_I` variant returns an object of the given type. The `_In` variant returns
a native num, using a scale of 309, and a rounding mode equivalent to Java's
`ROUND_HALF_UP`.

## gcd
* `gcd_i(int $l, int $r)`
* `gcd_I(Int $l, Int $r, Mu:T $type)`

Return the greatest common multiple of two numbers. 
`_I` variant returns an object of the given type.

## lcm
* `lcm_i(int $l, int $r)`
* `lcm_I(Int $l, Int $r, Mu:T $type)`

Return the lowest common multiple of two numbers. 
`_I` variant returns an object of the given type.

## mod
* `mod_i(int $l, int $r)`
* `mod_n(num $l, num $r)`
* `mod_I(Int $l, Int $r, Mu:T $type)`

Return the modulus of $l by $r.
`_I` variant returns an object of the given type.

## mul
* `mul_i(int $l, int $r)`
* `mul_n(num $l, num $r)`
* `mul_I(Int $l, Int $r, Mu:T $type)`

Multiple two numbers, returning the result.
`_I` variant returns an object of the given type.

## neg
* `neg_i(int $i)`
* `neg_n(num $n)`
* `neg_I(Int $i, Mu:T $type)`

Return the negative of a number.
`_I` variant returns an object of the given type.

## sub
* `sub_i(int $l, int $r)`
* `sub_n(num $l, num $r)`
* `sub_I(Int $l, Int $r, Mu:T $type)`

Subtract $r from $l, returning the result.
`_I` variant returns an object of the given type.

# Numeric Opcodes

## base
* `base_I(Int $i, int $radix)`

Returns a string representing the integer `$i` in base `$radix`

## ceil
* `ceil_n(num $n)`

Return the ceiling of a number.

## exp
* `exp_n(num $exponent)`

Return the value of `e` raised to $exponent;

## floor
* `floor_n(num $n)`

Return the floor of a number.

## inf
* `inf()`

Return infinity.

## log
* `log_n(num $n)`

Return the log base 10 of a number.

## ln
* `ln_n(num $n)`

Return the natural logarithm of a number.

## expmod
* `expmod_I(Int $base, Int $exponent, Int $modulus, Mu:T $type)`

Return a bigint that is `$base` raised to `$exponent` modulus `$modulus`.
`_I` variant returns an object of the given type.

## nan
* `nan()`

Return NaN.

## neginf
* `neginf()`

Return negative infinity.

## pow
* `pow_n(num $base, num $exponent)`
* `pow_I(Int $base, Int $exponent, Mu:T $type_num, Mu:T $type_bigint)`

Return the value of $base raised to $exponent;
`_I` variant returns an object of `$type_num` for negative exponents,
and of type `$type_bigint` for positive exponents.

## rand
* `rand_n(num $n)`
* `rand_I(Int $i, Mu:T $type)`

Returns a psuedo-random bigint up to the value of the
given number. 
`_I` variant returns an object of the given type.

## sqrt
* `sqrt_n(num $l, num $r)`

# Trigonometric Opcodes

Each opcode corresponds directly to the trigonmetric function of the same
name. `h` indicates a hyperbolic variant.

## asec
* `asec_n(num $n)`

## asin
* `asin_n(num $n)`

## acos
* `acos_n(num $n)`

## atan
* `atan_n(num $n)`

## atan2
* `atan2_n(num $l, num $r)`

## cos
* `cos_n(num $n)`

## cosh
* `cosh_n(num $n)`

## sin
* `sin_n(num $n)`

## sinh
* `sinh_n(num $n)`

## sec
* `sec_n(num $n)`

## sech
* `sech_n(num $n)`

## tan
* `tan_n(num $n)`

## tanh
* `tanh_n(num $n)`

# Relational / Logic Opcodes

## cmp
* `cmp_i(int $l, int $r)`
* `cmp_n(num $l, num $r)`
* `cmp_s(str $l, str $r)`
* `cmp_I(Int $l, Int $r)`

Compare two values, returns -1 if $l is greater than $r, 0 if they are equal,
and 1 if $r is greater than $l.

## eqat
* `eqat(str $haystack, str $needle, int $pos)`

Return 1 if the string `$haystack` has the string `$needle` at position `$pos`,
or 0 otherwise.

## iseq
* `iseq_i(int $l, int $r)`
* `iseq_n(num $l, num $r)`
* `iseq_s(str $l, str $r)`
* `iseq_I(Int $l, Int $r)`

Return non-zero if the two parameters are equal.

## isgt 
* `isgt_i(int $l, int $r)`
* `isgt_n(num $l, num $r)`
* `isgt_s(str $l, str $r)`
* `isgt_I(Int $l, Int $r)`

Return non-zero if $l is greater than two $r.

## isge
* `isge_i(int $l, int $r)`
* `isge_n(num $l, num $r)`
* `isge_s(str $l, str $r)`
* `isge_I(Int $l, Int $r)`

Return non-zero if $l is greater than or equal two $r.

## islt
* `islt_i(int $l, int $r)`
* `islt_n(num $l, num $r)`
* `islt_s(str $l, str $r)`
* `islt_I(Int $l, Int $r)`

Return non-zero if $l is less than two $r.

## isle
* `isle_i(int $l, int $r)`
* `isle_n(num $l, num $r)`
* `isle_s(str $l, str $r)`
* `isle_I(Int $l, Int $r)`

Return non-zero if $l is less than or equal two $r.

## isne
* `isne_i(int $l, int $r)`
* `isne_n(num $l, num $r)`
* `isne_s(str $l, str $r)`
* `isne_I(Int $l, Int $r)`

Return non-zero if the two parameters are not equal.

## not
* `not_i(int $val)`

Return 1 if `$val` is 0, 1 otherwise.

# Array opcodes

## atpos
* `atpos(@arr, int $i)`
* `atpos_i(@arr, int $i)`
* `atpos_n(@arr, int $i)`
* `atpos_s(@arr, int $i)`

Return whatever is bound to @arr at position $i.

## bindpos
* `bindpos(@arr, int $i, Mu $v)`
* `bindpos_i(@arr, int $i, int $v)`
* `bindpos_n(@arr, int $i, num $v)`
* `bindpos_s(@arr, int $i, str $v)`

Bind $v to @arr at position $i and return $v.

## elems
* `elems(@arr)`
* `elems(%hash)`

Return the number of elements in `@arr`, or the number of keys in `%hash`.

## existspos
* `existspos(@arr, int $i)`

Return 1 if anything is bound to `@arr` at position `$i`,
0 otherwise.

## list
* `list(...)`
* `list_i(...)`
* `list_n(...)`
* `list_s(...)`
* `list_b(...)`

Create a list of the given parameters. If no arguments are passed,
an empty list is created. If a typed variant is used, the parameters
are coerced to the appropriate type.

## push
* `push(@arr, Mu $v)`
* `push_i(Array int @arr, int $v)`
* `push_n(Array num @arr, num $v)`
* `push_s(Array str @arr, str $v)`

"Push $v onto the end of @arr."
Bind $v to @arr at the position at the end of @arr, i.e., the position that is just after the last position of @arr that has been bound to.
Return the number of elements of @arr on Parrot, $v on JVM.

## pop
* `pop(@arr)`
* `pop_i(@arr)`
* `pop_n(@arr)`
* `pop_s(@arr)`

"Pop the last value off the end of @arr."
Return the value of @arr at its last bound position, and unbind @arr at that position.

## setelems
* `setelems(@arr, int $i)`

Set the size of `@arr` to `$i` elements. If less than the current size,
any elements after the newlast position are unbound. If greater, the empty
elments at the end are bound with potentially VM specific null entries.

## shift
* `shift(@arr)`
* `shift_i(@arr)`
* `shift_n(@arr)`
* `shift_s(@arr)`

"Shift the last value from the beginning of @arr."
Return the value of @arr at index 0, unbind @arr at index 0, and move all other binding of @arr to the index one below what they were previously bound to.

## splice
* `splice(@arr, @from, int $offset, int $count)`

Remove the elements in `@arr` starting at `$offset`, for `$count` positions.
Replace them with all the elements from `@from`.

## unshift
* `unshift(@arr, Mu $v)`
* `unshift_i(@arr, int $v)`
* `unshift_n(@arr, num $v)`
* `unshift_s(@arr, str $v)`

"Shift $v into the beginning of @arr."
Bind $v to @arr at index 0, move all other bindings of @arr to the index one above what they were previously bound to.
Return the number of elements of @arr on Parrot, $v on JVM.

# Hash opcodes

## atkey
* `atkey(%hash, String $key)`
* `atkey_i(%hash, String $key)`
* `atkey_n(%hash, String $key)`
* `atkey_s(%hash, String $key)`

Return the value of %hash at key $key.

## bindkey
* `bindkey(%hash, String $key, Mu $v)`
* `bindkey_i(%hash, String $key, int $v)`
* `bindkey_n(%hash, String $key, num $v)`
* `bindkey_s(%hash, String $key, str $v)`

Bind key $key of %hash to $v and return $v.

## existskey
* `existskey(%hash, String $key)`

Return non-zero if %hash has key $key bound to something.

## deletekey
* `deletekey(%hash, String $key)`

Delete the given key from %hash.

# String Opcodes

## chars
* `chars(str $str)`

Return the number of characters in the string.

## chr
* `chr(int $codepoint)`

Given a unicode codepoint, return a str containing its character. Will
throw an exception on invalid codepoints.

## codepointfromname
* `codepointfromname(str $name)`

Returns the codepoint for the given unicode character name, or -1 if no
match was found.

## concat
* `concat(str $l, str $r)`

Return a string that is the concatenation of the two passed in strings.

## escape
* `escape(str $str)`

Given a string, return an escaped version that replaces the following
characters with their escaped equivalents: "\\", "\b", "\n", "\r",
"\t", "\f", "\"", "\a", and "\e".

## findcclass
* `findcclass(int $class, str $str, int $i, int $count)`

Search the string starting at the `$i`th character, for `$count` characters.
Return the position of the first character that is of the specified class
(`nqp::const::CCLASS_*`). If no characters match, return the position of the
first character after the given range, or the length of the string, whichever
is smaller.

## findnotcclass
* `findnotcclass(int $class, str $str, int $i, int $count)`

Search the string starting at the `$i`th character, for `$count` characters.
Return the position of the first character that is not of the specified class
(`nqp::const::CCLASS_*`). If no characters match, return the position of the
first character after the given range, or the length of the string, whichever
is smaller.

## flip
* `flip(str $str)`

Return a string with the characters of `$string` in reverse order.

## hash
* `hash(...)`

Return a hash. The first argument is a key, the second its value, and so on.
Be sure to pass an even number of arguments, a VM specific error may occur
otherwise.

## index
* `index(str $haystack, str $needle)`
* `index(str $haystack, str $needle, int $pos)`

Return the position in `$haystack` at which `$needle` appears, or -1
if `$needle` does not appear. Begin searching at position `$pos` if specified,
or at 0, otherwise.

* `indexfrom(str $haystack, str $needle, int $pos)` _Internal_

`index` is converted to this internal opcode by the compiler.

## iscclass
* `iscclass(int $class, str $str, int $i)`

Return 1 if the `$i`th character of $str is of the specified class,
(`nqp::const::CCLASS_*`), 0 otherwise.

## join
* `join(str $delim, @arr)`

Joins the separate strings of `@arr` into a single string with
fields separated by the value of EXPR, and returns that new string.

## lc
* `lc(str $str)`

Return lowercase copy of string.

## ord
* `ord(str $str)`
* `ord(str $str, int $i)`

Return the unicode codepoint of the first character in `$str`, or
at the `$i`th character, if it's specified.

* `ordat(str $str, int $i)` _Internal_
* `ordfirst(str $str)` _Internal_

`ord` is converted to these internal opcodes by the compiler.

## radix
* `radix(int $radix, String $str, int $pos, int $flags)`
* `radix_I(int $radix, String $str, int $pos, int $flags, Mu:T $type)`

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

## replace
* `replace(str $str, int $offset, int $count, str $replacement)`

Replace the the characters of `$str` starting at `$offset` for `$count`
characters, with the `$replacement` string.

## rindex
* `rindex(str $haystack, str $needle)`
* `rindex(str $haystack, str $needle, int $pos)`

Searching backwards through the `$haystack`, return the position at which
`$needle` appears, or -1 if it does not. Begin searching at `$pos` if
specified, otherwise start from the last position.

* `rindexfrom(str $haystack, str $needle, int $pos)` _Internal_
* `rindexfromend(str $haystack, str $needle)` _Internal_

`rindex` is converted to these internal opcodes by the compiler.

## uc
* `uc(str $str)`

Return uppercase copy of string.

## split
* `split(str $delimiter, str $string)`

Splits the string `$string` into an array of elements; these elements are
the substrings between delimiters in the original string.

If the original string begins or ends with the delimiter, the resulting
array will begin or end with an empty element.

## substr
* `substr(str $str, int $position)`
* `substr(str $str, int $position, int $length)`

Return the portion of the string starting at the given position.
If `$length` is specified, only return that many characters. The
numbered variants required the args specified - the unnumbered
version may use either signature.

* `substr2(str $str, int $position)` _Internal_
* `substr3(str $str, int $position, int $length)` _Internal_

`substr` is converted to these internal opcodes by the compiler.

## tc
* `tc(str $str)`

Return titlecase copy of string.

## x
* `x(str $str, int $count)`

Return a new string containing `$count` copies of `$str`.

## sprintf
* `sprintf(str $pattern, @values)`

Returns a string formatted by the printf conventions similar to Perl 5 / C. Machine sized numeric
types, their limits and therefor overflows are not implemented though.

## sprintfdirectives
* `sprintfdirectives(str $pattern)`

This takes the same pattern as `sprintf` does, and computes the needed value-count that `sprintf`
would have to provide.

## sprintfaddargumenthandler
* `sprintfaddargumenthandler(Mu $handler)`

Lets you register a handler-instance that supports the sprintf op when it has to numify
custom types. This handler has to provide two methods, `mine` and `int`. `mine` gets the
the value in question and returns true if this handler is in charge for this type, false otherwise.
The method `int` does the conversion for patterns like %d.

```perl
my class MyHandler {
    method mine($x) { $x ~~ MyType }
    method int($x) { $x.Int }
}
```

# Conditional Opcodes

## if
* `if(Block $condition, Block $then)`
* `if(Block $condition, Block $then, Block $else)`

If the `$condition` evaluates to a non-zero value, run the `$then` block.
If not, and an `$else` block is present, run that instead.

## unless
* `unless(Block $condition, Block $then)`
* `unless(Block $condition, Block $then, Block $else)`

If the `$condition` evaluates to 0, run the `$then` block.
If not, and an `$else` block is present, run that instead.

# Loop/Control Opcodes

## for
* `for(Iterable $iter, Block $body)`

Invoke the `$body` for every item available in `$iter`.

## ifnull
* `ifnull(Block $cond, Block $body)`

If the `$cond` evaluates to null, evaluate the `$body`, otherwise return
the result of `$cond`.

## defor
* `defor(Block $cond, Block $body)`

If the `$cond` evaluates to defined value, return it, otherwise, evaluate
the `$body`.

## repeat_until
* `repeat_until(Block $condition, Block $body)`
* `repeat_until(Block $condition, Block $body, Block $post)`

First run the `$body`. Then, enter a loop, running the `$body`
only if the condition returns 0.

If a `$post` block is present, run that at the end, regardless of `$condition`.

## repeat_while
* `repeat_while(Block $condition, Block $body)`
* `repeat_while(Block $condition, Block $body, Block $post)`

First run the `$body`. Then, enter a loop, running the `$body`
only if the condition returns a non-0 value.

If a `$post` block is present, run that at the end, regardless of `$condition`.

## until
* `until(Block $condition, Block $body)`
* `until(Block $condition, Block $body, Block $post)`

Enter a loop, running the `$body` only if the condition returns 0.

If a `$post` block is present, run that at the end, regardless of `$condition`.

## while
* `while(Block $condition, Block $body)`
* `while(Block $condition, Block $body, Block $post)`

Enter a loop, running the `$body` only if the condition returns a non-0 value.

If a `$post` block is present, run that at the end, regardless of `$condition`.

# Exceptional Opcodes

## backtrace
* `backtrace(Exception $ex)`

Return an array of hashes, describing the backtrace of the given exception.

## backtracestrings
* `backtracestrings(Exception $ex)`

Return an array of strings, describing the backtrace of the given exception.

## die
* `die(str $message)`
* `die_s(str $message)`

Create and throw an exception using the given message.

## exception
* `exception()`

Return the current exception object.

## getextype
* `getextype(Exception $ex)`

Gets the exception category (`nqp::const::CONTROL_*`)

## getmessage
* `getmessage(Exception $ex)`

Gets the exception message.

## getpayload
* `getpayload(Exception $ex)`

Gets the exception payload.

## newexception
* `newexception()`

Return a new exception object.

## resume
* `resume(Exception $ex)`

Resume the exception, if possible.

## rethrow
* `rethrow(Exception $ex)`

Re-throw the exception.

## setextype
* `setextype(Exception $ex, int $type)`

Sets the exception category (`nqp::const::CONTROL_*`)

## setmessage
* `setmessage(Exception $ex, str $message)`

Sets the exception message.

## setpayload
* `setpayload(Exception $ex, Mu $obj)`

Sets the exception payload.

## throw
* `throw(Exception $ex)`

Throw the exception.

# Input/Output Opcodes

## closefh
* `closefh(Handle $fh)`

Close the filehandle.

## eoffh
* `eoffh(Handle $fh)`

Return 1 if this filehandle is at the end of the file, otherwise 0.

## flushfh
* `flushfh(Handle $fh)`

Flushes the file handle, forcing it to write any buffered output.

## getcfh
* `getcfh(Handle $in)`

Reads a single character from the supplied filehandle.

## getstderr
* `getstderr()`

Return the filehandle for standard error.

## getstdin
* `getstdin()`

Return the filehandle for standard input.

## getstdout
* `getstdout()`

Return the filehandle for standard output.

## open
* `open(str $filename, str $mode)`

Open the specified file in the given mode. Valid modes include `r` for read,
`w` for write, and `wa` for write with append.

## openasync `jvm`
_Experimental_
* `openasync(str $filename, str $mode)`

Open the specified file in the given mode for async IO.
See `open` for valid modes.

## print
* `print(str $str)`

Output the given string to stdout.

## printfh
* `printfh(Handle $fh, str $str)`

Output the given string to the filehandle.

## readallfh
* `readallfh(Handle $fh)`

Return the contents of the open filehandle.

## readfh
* `readfh(Handle $fh, @arr, long $count)`

Given a readable `$fh`, and an array of `Buf[int8]` or a `Buf[uint8]`, read
in the next `$count` bytes from the filehandle and story them in the array.

## readlinefh
* `readlinefh(Handle $fh)`

Return the next line of the open filehandle.

## readlineintfh
* `readlineintfh(Handle $fh, str $prompt)`

Prompt the user with `$prompt`, then return the next line of the open filehandle.

## say
* `say(str $str)`

Output the given string to stdout, followed by a newline.

## sayfh
* `sayfh(Handle $fh, str $str)`

Output the given string to the filehandle, followed by a newline.

## setencoding
* `setencoding(Handle $fh, str $encoding)`

Set the encoding for the given handle. Valid encodings are: ascii,
iso-8859-1, utf8, utf16, and binary.

## setinputlinesep
* `setinputlinesep(Handle $fh, str $sep)`

Set the input line separator on the given file handle.

## tellfh
* `tellfh(Handle $fh)`

Return current access position for an open handle.

## writefh
* `writefh(Handle $fh, Mu $str)`

Output the given object to the filehandle.

# External command Opcodes

## shell
* `shell(str $cmd, str $path, %env)`

Using $path as the working directory, execute the given command using the
specified environment variables. Returns a POSIX-style return value. Command
is executed using an OS-appropriate shell (`sh -c` or `cmd /c`). Blocks
until command is complete.

* `shell(str $cmd)` _Deprecated: use the three argument version_

Same as the three argument version of `shell`, using the current directory and an empty environment.

* `shell1(str $cmd)` _Internal, Deprecated_
* `shell3(str $cmd, str $path, %env)` _Internal_

`shell` is converted to these internal opcodes by the compiler.

## spawn
* `spawn(@cmd, str $path, %env)`

Using $path as the working directory, execute the given command  using the
specified environment variables. Returns a POSIX-style return value. No shell
processing of args is done. The first value of `@args` is the command
executed, further values are passed as arguments. Blocks until command is
complete.

# File / Directory / Network Opcodes

## chdir
* `chdir(str $path)`

Change the working directory to the given path.

## chmod
* `chmod(str $path, int $mode)`

Change the permissions of `$path` to the posix style permissions of `$mode`.
Returns 0 on success, throws an exception on failure.

## closedir
* `closedir(Handle $)`

Close the given directory handle.

## copy
* `copy(str $from, str $to)`

Copy file `$from` to file `$to`. Return 0 on success, throw an exception
on failure.

## cwd
* `cwd()`

Return a string containing the current working directory.

## fileexecutable
* `fileexecutable(str $str)`

If the specified filename refers to an executable file, returns 1.
If not, returns 0. If an error occurs, return -1.

## fileislink
* `fileislink(str $str)`

If the specified filename refers to a symbolic link, returns 1.
If not, returns 0. If an error occurs, return -1.

## filereadable
* `filereadable(str $str)`

If the specified filename refers to a readable file, returns 1.
If not, returns 0. If an error occurs, return -1.

## filewritable
* `filewritable(str $str)`

If the specified filename refers to a writable file, returns 1.
If not, returns 0. If an error occurs, return -1.

## link
* `link(str $before, str $after)`

Create a link from `$after` to `$before`

## mkdir
* `mkdir(str $name, int $mode)`

Create a directory of the given name. Use posix-style mode
on non-windows platforms. Returns 0, or throws an exception.

## nextfiledir
* `nextfiledir(handle $iterator)`

Given the result of an opendir, return the next path from that directory.
When no more items are available, return a null string. (check with `null_s`)

## opendir
* `opendir(str $path)`

Return a directory handle on the given directory path. Throw an exception
if `$path` is not a directory.

## rename
* `rename(str $from, str $to)`

Rename file `$from` to file `$to`. Return 0 on success, throw an exception
on failure.

## rmdir
* `rmdir(str $path)`

Delete the given directory $path. Returns 0 on success, -2 if the
directory didn't exist. May throw an exception.

## stat
* `stat(str $path, int $code)`

Given a path and a code, return an int describing that path. Any of
these variants may throw an exception if the platform does not support
them. (JVM does not support `STAT_PLATFORM_BLOCKSIZE` or
`STAT_PLATFORM_BLOCKS`).

    * `nqp::const::STAT_EXISTS` 

Returns 1 if the path exists, 0 otherwise.

    * `nqp::const::STAT_FILESIZE` 

Returns the size of the file in bytes.

    * `nqp::const::STAT_ISDIR`

Returns 1 if the path is a directory, 0 otherwise, -1 if an exception occurred
processing the request.

    * `nqp::const::STAT_ISREG`

Returns 1 if the path is a regular file, 0 otherwise, -1 if an exception
occurred processing the request.

    * `nqp::const::STAT_ISDEV`

Returns 1 if the path is a special file, 0 otherwise, -1 if an exception
occurred processing the request.

    * `nqp::const::STAT_ISLNK`

Returns 1 if the path is a symbol link, 0 otherwise, -1 if an exception occurred
processing the request.

    * `nqp::const::STAT_CREATETIME`
    * `nqp::const::STAT_ACCESSTIME`
    * `nqp::const::STAT_MODIFYTIME`
    * `nqp::const::STAT_CHANGETIME`

Returns respective time attribute in seconds since epoch, or -1 if
an exception occurred.

    * `nqp::const::STAT_BACKUPTIME`

Returns -1. 

    * `nqp::const::STAT_GID`
    * `nqp::const::STAT_UID`

Returns the user id and group id of the path, respectively. Returns -1 if
an exception occurred.

    * `nqp::const::STAT_PLATFORM_DEV`

Returns the device number of filesystem associated with the path.
Returns -1 if an exception occurred.

    * `nqp::const::STAT_PLATFORM_INODE`

Returns the inode. Returns -1 if an exception occurred.

    * `nqp::const::STAT_PLATFORM_MODE`

Returns unix style mode. Returns -1 if an exception occurred.

    * `nqp::const::STAT_PLATFORM_NLINKS`

Returns number of hard links to the path. Returns -1 if an exception occurred.

    * `nqp::const::STAT_PLATFORM_NLINKS`

Returns the device identifier.  Returns -1 if an exception occurred.

    * `nqp::const::STAT_PLATFORM_BLOCKSIZE`

Returns preferred I/O size in bytes for interacting with the file.

    * `nqp::const::STAT_PLATFORM_BLOCKS`

Returns number of system-specific blocks allocated on disk.

## symlink
* `symlink(str $before, str $after)`

Create a symbolic link from `$after` to `$before`

## unlink
* `unlink(str $path)`

Delete the given file $path. Returns 0 on success, -2 if the file
didn't exist. May throw an exception.

# Type/Conversion Opcodes

## bool
* `bool_I(Int $val)`

Returns 0 if `$val` is 0, otherwise 1.

## bootarray `jvm` `moar`
* `bootarray()`

Returns a VM specific type object for a native array.

## boothash `jvm` `moar`
* `boothash()`

Returns a VM specific type object for a native hash.

## bootint `jvm` `moar`
* `bootint()`

Returns a VM specific type object that can box a native int.

## bootintarray `jvm` `moar`
* `bootintarray()`

Returns a VM specific type object for a native array of int.

## bootnum `jvm` `moar`
* `bootnum()`

Returns a VM specific type object that can box a native num.

## bootnumarray `jvm` `moar`
* `bootnumarray()`

Returns a VM specific type object for a native array of num.

## bootstr `jvm` `moar`
* `bootstr()`

Returns a VM specific type object that can box a native str.

## bootstrarray `jvm` `moar`
* `bootstrarray()`

Returns a VM specific type object for a native array of str.

## box
* `box_i(int $val, Mu:T $type)`
* `box_n(num $val, Mu:T $type)`
* `box_s(str $val, Mu:T $type)`

Given a native value, return a perl 6 object of the given type
with the same value.

## defined
* `defined(Mu $obj)`

Returns 1 if the object is not null and is not a Type object, 0 otherwise.

## fromnum
* `fromnum_I(num $val, Mu:T $type)`

Convert float value to a Big Integer of the given type,
discarding any decimal portion.

## fromstr
* `fromstr_I(str $val, Mu:T $type)`

Convert string value to a Big Integer of the given type.

## isbig
* `isbig_I(Mu $obj)`

Returns a 1 if the object's numerical representation requires a big int, 0 otherwise.

## isconcrete
* `isconcrete(Mu $obj)`

Returns a 1 if the object is not a type object, 0 otherwise.

## iscont
* `iscont(Mu $obj)`

Returns a 1 if the object is a container type, 0 otherwise.

## isfalse
* `isfalse(Mu $obj)`

Returns a 0 if the object has a truthy value, 1 otherwise.

## ishash
* `ishash(Mu $obj)`

Returns a 1 if the object is a Hash, 0 otherwise.

## isint
* `isint(Mu $obj)`

Returns a 1 if the object is an int type, 0 otherwise.

## isinvokable
* `isinvokable(Mu $obj)`

Returns a 1 if the object represents something executable, 0 otherwise.

## islist
* `islist(Mu $obj)`

Returns a 1 if the object is an Array, 0 otherwise.

## isnanorinf
* `isnanorinf(num $n)`

Return truth value indicating if this number represents any of the special
values, postive infinity, negative infinity, or NaN.

## isnull
* `isnull(Mu $obj)`
* `isnull_s(str $obj)`

Returns a 1 if the object is a null, 0 otherwise.

## isnum
* `isnum(Mu $obj)`

Returns a 1 if the object is a float type, 0 otherwise.

## isprime
* `isprime_I(Int $obj)`

Returns a 1 if the integer value of the object is prime, 0 otherwise.

## isstr
* `isstr(Mu $obj)`

Returns a 1 if the object is a str type, 0 otherwise.

## istrue
* `istrue(Mu $obj)`

Returns a 1 if the object has a truthy value, 0 otherwise.

## istype
* `istype(Mu $obj, Mu:T $obj)`

Returns a 1 if the object is of the given type, 0 otherwise.

## null
* `null()`
* `null_s()`

Generate a null value.

`null_s` returns a null string value that can be stored in a native str.

The value returned by `null_s` is VM dependant. Notably, it may stringify
differently depending on the backend.

## jvmisnull `jvm`
* `jvmisnull(Mu $obj)`

Returns a 1 if the object is an NQP Type object *or*  the underlying 
JVM object is null. Returns 0 otherwise.

## tostr
* `tostr_I(Int $val)`

Convert Big Integer value to a native string.

## tonum
* `tonum_I(Int $val)`

Convert Big Integer value to a native number.

## unbox
* `unbox_i(Mu $val)`
* `unbox_n(Mu $val)`
* `unbox_s(Mu $val)`

Given a Perl 6 object, return a native with the same value,
of the type indicated by the opcode suffix.

# OO/SixModel Opcodes

## bindattr
* `bindattr(Mu $obj, Mu:T $type, str $attributename, Mu $new_value)`
* `bindattr_i(Mu $obj, Mu:T $type, str $attributename, int $new_value)`
* `bindattr_n(Mu $obj, Mu:T $type, str $attributename, num $new_value)`
* `bindattr_s(Mu $obj, Mu:T $type, str $attributename, str $new_value)`

Binds `$new_value` to the attribute of name `$attributename` of object `$obj`,
where the attribute was declared in type `$type`. The notes in the
`getattr` documentation also apply to `bindattr`.

## bindcomp
* `bindcomp(Str $base-class, Mu $compiler)`

Registers `$compiler` as the compiler for the language named `$base-class`, as in:

    my $lang = My::Lang::Compiler.new();
    nqp::bindcomp('My::Lang', $lang);

In general, though, `$lang` will inherit from `HLL::Compiler`, and the above
will be achieved via:

    $lang.language('My::Lang');

## callmethod
* `callmethod(Mu $obj, str $methodname, *@pos, *%named)`

Uses `findmethod` to locate method `$methodname` on object `$obj`, and `call`
to invoke the method with positional arguments `*@pos` and named arguments
`*%named`.

Example:

class A { method x($a, $b, :$c) { say("$a $b $c") } }

    nqp::callmethod(A, 'x', '4', '2', c => 'foo');
    # same as: A.x(4, 2, c => 'foo')

## can
* `can(Mu $obj, str $method)`

If the object has a method of the given name, return 1. Otherwise, return 0.

## clone
* `clone(Mu $obj)`

Return a clone of the passed in object.

## create
* `create(Mu:T $type)`

Returns a newly allocated instance of type `$type`.

## eqaddr
* `eqaddr(Mu $l, Mu $r)`

Returns 1 if the objects are the same object in the underlying VM,
0 otherwise.

## findmethod
* `findmethod(Mu $obj, str $method)`

If the object has a method of the given name, return it. Otherwise,
throw an exception.

## getattr
* `getattr(Mu $obj, Mu:T $type, str $attributename)`
* `getattr_i(Mu $obj, Mu:T $type, str $attributename)`
* `getattr_n(Mu $obj, Mu:T $type, str $attributename)`
* `getattr_s(Mu $obj, Mu:T $type, str $attributename)`

Returns the attribute of name `$attributename` of object `$obj`, where the
object was declared in class `$type`. The `_n`, `_i`, and `_s` variants are
for natively typed attributes.

The following example demonstrates why the type object needs to passed along,
and cannot be infered from the object:

    class A      { has str $!x }
    class B is A { has str $!x }

    my $obj := nqp::create(B);
    nqp::bindattr_s($obj, A, '$!x', 'A.x');
    nqp::bindattr_s($obj, B, '$!x', 'B.x');

    nqp::say(nqp::getattr_s($obj, A, '$!x'));
    nqp::say(nqp::getattr_s($obj, B, '$!x'));

Throws an exception if there is no such attribute in the class, the attribute
is of the wrong type, or the object doesn't conform to the type.

Note that in languages that support a full-blown container model, you might
need to decontainerize `$obj` before passing it to `getattr`, unless you
actually want to access an attribute of the container.

## getcomp
* `getcomp(Str $base-class)`

Returns the compiler class registered for that `$base-class`.
See `bindcomp` for more information.

## how
* `how(Mu $obj)`

NQP equivalent for Perl 6's `$obj.HOW`.

## rebless
* `rebless(Mu $obj, Mu:T $type)`

Convert `$obj` to be an object of the new `$type`.

## reprname
* `reprname(Mu $obj)`

Return the name of the REPR for the given object.

## setwho
* `setwho(Mu $obj, Mu $who)`

Replace `$obj`'s WHO. Return `$obj`.

## who
* `who(Mu $obj)`

NQP equivalent for Perl 6's `$obj.WHO`.

## what
* `what(Mu $obj)`

NQP equivalent for Perl 6's `$obj.WHAT`.

## where
* `where(Mu $obj)`

Return a unique ID for this `$obj`.

# Bit Opcodes

## bitand
* `bitand_i(int $l, int $r)`
* `bitand_s(str $l, str $r)`
* `bitand_I(Mu $l, Mu $r, Mu:T $type)`

AND the bits in `$l` and `$r`.
`_I` variant returns an object of the given type.

## bitneg
* `bitneg_i(int $bits)`
* `bitneg_I(Mu $bits, Mu:T $type)`

Negate the bits in `$bits`.
`_I` variant returns an object of the given type.

## bitor
* `bitor_i(int $l, int $r)`
* `bitor_s(str $l, str $r)`
* `bitor_I(Mu $l, Mu $r, Mu:T $type)`

OR the bits in `$l` and `$r`.
`_I` variant returns an object of the given type.

## bitshiftl
* `bitshiftl_i(int $bits, int $count)`
* `bitshiftl_I(Mu $bits, int $count, Mu:T $type)`

Signed left shift of `$bits` by `$count`.
`_I` variant returns an object of the given type.

## bitshiftr
* `bitshiftr_i(int $bits, int $count)`
* `bitshiftr_I(Mu $bits, int $count, Mu:T $type)`

Signed right shift of `$bits` by `$count`.
`_I` variant returns an object of the given type.

## bitxor
* `bitxor_i(int $l, int $r)`
* `bitxor_s(str $l, str $r)`
* `bitxor_I(Mu $l, Mu $r, Mu:T $type)`

XOR the bits in `$l` and `$r`.
`_I` variant returns an object of the given type.

# Context Introspection Opcodes

## ctx
* `ctx()`

Return the object representing the current context.

## ctxcaller
* `ctxcaller(Context $ctx)`

Given a context, return the caller context, or null.

## ctxlexpad
* `ctxlexpad(Context $ctx)`

Given a context, return its lexpad

## curlexpad
* `curlexpad()`

Return the current lexpad.

## ctxouter
* `ctxouter(Context $ctx)`

Given a context, return the outer context, or null.

## lexprimspec
* `lexprimspec(LexPad $pad, str $name)`

Given a lexpad and a name, return the name's primitive type.

The primitive types are 1 for int, 2 for num and 3 for str. 0 is any object.

## savecapture
* `savecapture()`

Gets hold of the argument capture passed to the current block.
Commits to doing enough copying that the list is valid any amount of time.
See usecapture for a version of the op that doesn't promise that.
Used by the multi-dispatcher.

## usecapture
* `usecapture()`

Gets hold of the argument capture passed to the current block.
(a future usecapture may invalidate it)
It's valid to implement this exactly the same way as savecapture if there's no performance benefit to be had in a split.
Used by the multi-dispatcher.

## getlex
* `getlex(str $name)`
* `getlex_i(str $name)`
* `getlex_n(str $name)`
* `getlex_s(str $name)`

Looks up the lexical with the specified name and the specified type. Searching in the outer frames, starting at the current.
An error is thrown if it does not exist or if the type is incorrect.

## bindlex
* `bindlex(str $name, Mu $value)`
* `bindlex_i(str $name, int $value)`
* `bindlex_n(str $name, num $value)`
* `bindlex_s(str $name, str $value)`

Binds $value to the lexical specified by name and type. Searching in the outer frames, starting at the current.
An error is thrown if it does not exist or if the type is incorrect.

## getlexdyn
* `getlexdyn(str $name)`

Looks up the contextual with the specified name in the caller chain, starting at the calling frame.

## bindlexdyn
* `bindlexdyn(str $name, Mu $value)`

Binds $value to the contextual with the specified name, searching for it in the call-chain, starting at the calling frame.

## getlexouter
* `getlexouter(str $name)`

Looks up the lexical with the specified name and the specified type. Searching in the outer frames, starting at outer.

## getlexcaller
* `getlexcaller(str $name)`

Looks up the lexical with the specified name, starting at the calling frame. It checks all outer frames of the caller chain.

## getlexrel
* `getlexrel(Mu $context, str $name)`

Looks up the lexical with the specified name and the specified type. Searching in the outer frames, starting at the given $context.

## getlexreldyn
* `getlexreldyn(Mu $context, str $name)`

Looks up the contextual with the specified name in the caller chain, starting at the given $context.

## getlexrelcaller
* `getlexrelcaller(Mu $context, str $name)`

Looks up the lexical with the specified name, starting at the given $context. It checks all outer frames of the caller chain.

# Variable opcodes

## bind
* `bind(Mu $variable, Mu $value)`

Binds `$value` to the `$variable`. Dies if `$variable` isn't actually a
variable. Same as the `:=` operator in NQP.

# Miscellaneous Opcodes

## const
* `const()`

Not actually an opcode, but a collection of several constants. Each of the
constants below can be used in nqp as (e.g.) `nqp::const::CCLASS_ANY`. 

    * CCLASS_ANY
    * CCLASS_UPPERCASE
    * CCLASS_LOWERCASE
    * CCLASS_ALPHABETIC
    * CCLASS_NUMERIC
    * CCLASS_HEXADECIMAL
    * CCLASS_WHITESPACE
    * CCLASS_PRINTING
    * CCLASS_BLANK
    * CCLASS_CONTROL
    * CCLASS_PUNCTUATION
    * CCLASS_ALPHANUMERIC
    * CCLASS_NEWLINE
    * CCLASS_WORD

    * HLL_ROLE_NONE
    * HLL_ROLE_INT
    * HLL_ROLE_NUM
    * HLL_ROLE_STR
    * HLL_ROLE_ARRAY
    * HLL_ROLE_HASH
    * HLL_ROLE_CODE

    * CONTROL_TAKE
    * CONTROL_LAST
    * CONTROL_NEXT
    * CONTROL_REDO
    * CONTROL_SUCCEED
    * CONTROL_PROCEED
    * CONTROL_WARN

    * STAT_EXISTS
    * STAT_FILESIZE
    * STAT_ISDIR
    * STAT_ISREG
    * STAT_ISDEV
    * STAT_CREATETIME
    * STAT_ACCESSTIME
    * STAT_MODIFYTIME
    * STAT_CHANGETIME
    * STAT_BACKUPTIME
    * STAT_UID
    * STAT_GID
    * STAT_ISLNK
    * STAT_PLATFORM_DEV
    * STAT_PLATFORM_INODE
    * STAT_PLATFORM_MODE
    * STAT_PLATFORM_NLINKS
    * STAT_PLATFORM_DEVTYPE
    * STAT_PLATFORM_BLOCKSIZE
    * STAT_PLATFORM_BLOCKS

    * TYPE_CHECK_CACHE_DEFINITIVE
    * TYPE_CHECK_CACHE_THEN_METHOD
    * TYPE_CHECK_NEEDS_ACCEPTS

## debugnoop
* `debugnoop(Mu $a)`

Returns `$a`. Does nothing, exists only to provide a breakpoint location
for debugging.

## exit
* `exit(int $status)`

Exit nqp, using the given status as the compiler's exit value.

## getenvhash
* `getenvhash()`

Returns a hash containing the environment variables.
Changing the hash doesn't affect the environment variables

## backendconfig
* `backendconfig()`

Returns a hash containing backend-specific information, like backend-version,
configure and build flags.

## getpid
* `getpid()`

Return the current process id, an int. 

## jvmclasspaths `jvm`
* `jvmclasspaths()`

Converts the JVM property `java.class.path` into a list of paths, returns it.

## sha1
* `sha1(str $str)`

Given a UTF-8 string, return the SHA-1 digest for that string.

## sleep
* `sleep(num $seconds)`

Sleep for the given number of seconds (no guarantee is made how exact the
time sleeping is spent.) Returns the passed in number.

## takeclosure
* `takeclosure(Block $innerblock)`

Creates a lexical closure from the block's outer scope.

## time
* `time_i()`
* `time_n()`

Return the time in seconds since January 1, 1970 UTC. `_i` variant returns
an integral number of seconds, `_n` returns a fractional amount.

# Native Call / Interoperability Opcodes

## x_posixerrno
* `x_posixerrno()`

Returns an int that corresponds to the value of POSIX's errno.
