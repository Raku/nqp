# TABLE OF CONTENTS
- [NQP Opcodes](#nqp-opcodes)
- [Arithmetic Opcodes](#-arithmetic-opcodes)
    - [abs](#abs)
    - [add](#add)
    - [div](#div)
    - [gcd](#gcd)
    - [lcm](#lcm)
    - [mod](#mod)
    - [mul](#mul)
    - [neg](#neg)
    - [sub](#sub)
- [Numeric Opcodes](#-numeric-opcodes)
    - [base](#base)
    - [ceil](#ceil)
    - [exp](#exp)
    - [floor](#floor)
    - [inf](#inf)
    - [log_n](#log_n)
    - [expmod](#expmod)
    - [nan](#nan)
    - [neginf](#neginf)
    - [pow](#pow)
    - [rand](#rand)
    - [sqrt](#sqrt)
- [Trigonometric Opcodes](#-trigonometric-opcodes)
    - [asec](#asec)
    - [asin](#asin)
    - [acos](#acos)
    - [atan](#atan)
    - [atan2](#atan2)
    - [cos](#cos)
    - [cosh](#cosh)
    - [sin](#sin)
    - [sinh](#sinh)
    - [sec](#sec)
    - [sech](#sech)
    - [tan](#tan)
    - [tanh](#tanh)
- [Relational / Logic Opcodes](#-relational--logic-opcodes)
    - [cmp](#cmp)
    - [eqat](#eqat)
    - [iseq](#iseq)
    - [isgt](#isgt)
    - [isge](#isge)
    - [islt](#islt)
    - [isle](#isle)
    - [isne](#isne)
    - [not_i](#not_i)
- [Array Opcodes](#-array-opcodes)
    - [atpos](#atpos)
    - [bindpos](#bindpos)
    - [atposref](#atposref)
    - [elems](#elems)
    - [existspos](#existspos)
    - [list](#list)
    - [push](#push)
    - [pop](#pop)
    - [setelems](#setelems)
    - [shift](#shift)
    - [splice](#splice)
    - [unshift](#unshift)
    - [iterator](#iterator)
- [Hash Opcodes](#-hash-opcodes)
    - [atkey](#atkey)
    - [bindkey](#bindkey)
    - [existskey](#existskey)
    - [deletekey](#deletekey)
    - [iterkey](#iterkey)
    - [iterval](#iterval)
- [String Opcodes](#-string-opcodes)
    - [chars](#chars)
    - [chr](#chr)
    - [codepointfromname](#codepointfromname)
    - [getstrfromname](#getstrfromname)
    - [concat](#concat)
    - [decode](#decode)
    - [decodetocodes](#decodetocodes)
    - [encode](#encode)
    - [encodefromcodes](#encodefromcodes)
    - [encodenorm](#encodenorm)
    - [escape](#escape)
    - [fc](#fc)
    - [findcclass](#findcclass)
    - [findnotcclass](#findnotcclass)
    - [flip](#flip)
    - [hash](#hash)
    - [index](#index)
    - [indexic](#indexic)
    - [iscclass](#iscclass)
    - [join](#join)
    - [lc](#lc)
    - [normalizecodes](#normalizecodes)
    - [ord](#ord)
    - [radix](#radix)
    - [replace](#replace)
    - [rindex](#rindex)
    - [split](#split)
    - [sprintf](#sprintf)
    - [sprintfdirectives](#sprintfdirectives)
    - [sprintfaddargumenthandler](#sprintfaddargumenthandler)
    - [strfromcodes](#strfromcodes)
    - [strtocodes](#strtocodes)
    - [substr](#substr)
    - [tc](#tc)
    - [uc](#uc)
    - [unicmp_s](#unicmp_s)
    - [x](#x)
- [Unicode Property Opcodes](#-unicode-property-opcodes)
    - [getuniname](#getuniname)
    - [getuniprop_int](#getuniprop_int)
    - [getuniprop_str](#getuniprop_str)
    - [getuniprop_bool](#getuniprop_bool)
    - [matchuniprop](#matchuniprop)
    - [unipropcode](#unipropcode)
    - [unipvalcode](#unipvalcode)
- [VM-Provided Streaming Decoder Opcodes](#-vm-provided-streaming-decoder-opcodes)
    - [decoderconfigure](#decoderconfigure)
    - [decodersetlineseps](#decodersetlineseps)
    - [decoderaddbytes](#decoderaddbytes)
    - [decodertakechars](#decodertakechars)
    - [decodertakeallchars](#decodertakeallchars)
    - [decodertakeavailablechars](#decodertakeavailablechars)
    - [decodertakeline](#decodertakeline)
    - [decoderbytesavailable](#decoderbytesavailable)
    - [decodertakebytes](#decodertakebytes)
    - [decoderempty](#decoderempty)
- [Conditional Opcodes](#-conditional-opcodes)
    - [if](#if)
    - [unless](#unless)
- [Loop/Control Opcodes](#-loopcontrol-opcodes)
    - [control](#control)
    - [defor](#defor)
    - [for](#for)
    - [ifnull](#ifnull)
    - [repeat_until](#repeat_until)
    - [repeat_while](#repeat_while)
    - [stmts](#stmts)
    - [until](#until)
    - [while](#while)
- [Exceptional Opcodes](#-exceptional-opcodes)
    - [backtrace](#backtrace)
    - [backtracestrings](#backtracestrings)
    - [die](#die)
    - [exception](#exception)
    - [getextype](#getextype)
    - [getmessage](#getmessage)
    - [getpayload](#getpayload)
    - [newexception](#newexception)
    - [resume](#resume)
    - [rethrow](#rethrow)
    - [setextype](#setextype)
    - [setmessage](#setmessage)
    - [setpayload](#setpayload)
    - [throw](#throw)
- [Input/Output Opcodes](#-inputoutput-opcodes)
    - [closefh](#closefh)
    - [eoffh](#eoffh)
    - [filenofh](#filenofh)
    - [flushfh](#flushfh)
    - [getstderr](#getstderr)
    - [getstdin](#getstdin)
    - [getstdout](#getstdout)
    - [open](#open)
    - [openasync `jvm`](#openasync-jvm)
    - [print](#print)
    - [readfh](#readfh)
    - [say](#say)
    - [seekfh](#seekfh)
    - [tellfh](#tellfh)
    - [writefh](#writefh)
- [External command Opcodes](#-external-command-opcodes)
    - [shell](#shell)
    - [spawn](#spawn)
- [File / Directory / Network Opcodes](#-file--directory--network-opcodes)
    - [chdir](#chdir)
    - [chmod](#chmod)
    - [closedir](#closedir)
    - [copy](#copy)
    - [cwd](#cwd)
    - [fileexecutable](#fileexecutable)
    - [fileislink](#fileislink)
    - [filereadable](#filereadable)
    - [filewritable](#filewritable)
    - [link](#link)
    - [mkdir](#mkdir)
    - [nextfiledir](#nextfiledir)
    - [opendir](#opendir)
    - [rename](#rename)
    - [rmdir](#rmdir)
    - [stat](#stat)
    - [stat_time](#stat_time)
    - [lstat](#lstat)
    - [stat_time](#stat_time)
    - [symlink](#symlink)
    - [unlink](#unlink)
- [Type/Conversion Opcodes](#-typeconversion-opcodes)
    - [bool](#bool)
    - [bootarray `jvm` `moar`](#bootarray-jvm-moar)
    - [boothash `jvm` `moar`](#boothash-jvm-moar)
    - [bootint `jvm` `moar`](#bootint-jvm-moar)
    - [bootintarray `jvm` `moar`](#bootintarray-jvm-moar)
    - [bootnum `jvm` `moar`](#bootnum-jvm-moar)
    - [bootnumarray `jvm` `moar`](#bootnumarray-jvm-moar)
    - [bootstr `jvm` `moar`](#bootstr-jvm-moar)
    - [bootstrarray `jvm` `moar`](#bootstrarray-jvm-moar)
    - [box](#box)
    - [defined](#defined)
    - [fromnum](#fromnum)
    - [fromstr](#fromstr)
    - [isbig](#isbig)
    - [isconcrete](#isconcrete)
    - [iscont](#iscont)
    - [isfalse](#isfalse)
    - [ishash](#ishash)
    - [isint](#isint)
    - [isinvokable](#isinvokable)
    - [islist](#islist)
    - [isnanorinf](#isnanorinf)
    - [isnull](#isnull)
    - [isnum](#isnum)
    - [isprime](#isprime)
    - [isstr](#isstr)
    - [istrue](#istrue)
    - [istype](#istype)
    - [null](#null)
    - [jvmisnull `jvm`](#jvmisnull-jvm)
    - [tostr](#tostr)
    - [tonum](#tonum)
    - [unbox](#unbox)
- [OO/SixModel Opcodes](#-oosixmodel-opcodes)
    - [bindattr](#bindattr)
    - [bindcomp](#bindcomp)
    - [callmethod](#callmethod)
    - [can](#can)
    - [clone](#clone)
    - [create](#create)
    - [eqaddr](#eqaddr)
    - [findmethod](#findmethod)
    - [getattr](#getattr)
    - [getcomp](#getcomp)
    - [how](#how)
    - [rebless](#rebless)
    - [reprname](#reprname)
    - [setwho](#setwho)
    - [who](#who)
    - [what](#what)
    - [where](#where)
- [Bit Opcodes](#-bit-opcodes)
    - [bitand](#bitand)
    - [bitneg](#bitneg)
    - [bitor](#bitor)
    - [bitshiftl](#bitshiftl)
    - [bitshiftr](#bitshiftr)
    - [bitxor](#bitxor)
- [Context Introspection Opcodes](#-context-introspection-opcodes)
    - [ctx](#ctx)
    - [ctxcaller](#ctxcaller)
    - [ctxlexpad](#ctxlexpad)
    - [curlexpad](#curlexpad)
    - [ctxouter](#ctxouter)
    - [lexprimspec](#lexprimspec)
    - [savecapture](#savecapture)
    - [usecapture](#usecapture)
    - [getlex](#getlex)
    - [bindlex](#bindlex)
    - [getlexdyn](#getlexdyn)
    - [bindlexdyn](#bindlexdyn)
    - [getlexouter](#getlexouter)
    - [getlexcaller](#getlexcaller)
    - [getlexrel](#getlexrel)
    - [getlexreldyn](#getlexreldyn)
    - [getlexrelcaller](#getlexrelcaller)
- [Variable Opcodes](#-variable-opcodes)
    - [bind](#bind)
- [Miscellaneous Opcodes](#-miscellaneous-opcodes)
    - [locallifetime](#locallifetime)
    - [const](#const)
    - [debugnoop](#debugnoop)
    - [exit](#exit)
    - [getenvhash](#getenvhash)
    - [backendconfig](#backendconfig)
    - [getpid](#getpid)
    - [jvmclasspaths `jvm`](#jvmclasspaths-jvm)
    - [sha1](#sha1)
    - [sleep](#sleep)
    - [takeclosure](#takeclosure)
    - [time](#time)
- [Native Call / Interoperability Opcodes](#-native-call--interoperability-opcodes)
    - [x_posixerrno](#x_posixerrno)
- [Asynchronous Operations](#-asynchronous-operations)
    - [permit](#permit)
    - [cancel](#cancel)
    - [timer](#timer)
    - [signal](#signal)
    - [watchfile](#watchfile)
    - [asyncconnect](#asyncconnect)
    - [asynclisten](#asynclisten)
    - [asyncwritestr](#asyncwritestr)
    - [asyncwritebytes](#asyncwritebytes)
    - [asyncreadchars](#asyncreadchars)
    - [asyncreadbytes](#asyncreadbytes)
    - [spawnprocasync](#spawnprocasync)
    - [killprocasync](#killprocasync)

# NQP Opcodes

Opcodes (ops) are used both directly when writing NQP, and during code
generation in QAST nodes.

When invoking them directly, you'll need to prefix them with nqp::, e.g.

    nqp::mul_i(6,9);

The ops are listed below by type. Each entry shows the name of the op,
its variants, and their arguments and types, and may provide a short
description.  Some opcodes differ only by argument types - in that case,
they are listed under their common name (e.g. `mul`), with each of their
variants (e.g. `mul_i`, `mul_n`) together with a single description.

Opcode variants may contain a type suffix, which usually indicates:

* `_i` argument is a native int
* `_u` argument is an unsigned int
* `_n` argument is a native float
* `_s` argument is a native string
* `_b` argument is a code block
* `_I` argument is a Big Integer

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

The opcodes are grouped into the following categories:

* [Arithmetic Opcodes](#arithmetic)
* [Numeric Opcodes](#numeric)
* [Trigonometric Opcodes](#trig)
* [Relational / Logic Opcodes](#logic)
* [Array Opcodes](#array)
* [Hash Opcodes](#hash)
* [String Opcodes](#string)
* [Unicode Property Opcodes](#unicode)
* [Conditional Opcodes](#conditional)
* [Loop/Control Opcodes](#control)
* [Exceptional Opcodes](#exceptions)
* [Input/Output Opcodes](#io)
* [External command Opcodes](#extern)
* [File / Directory / Network Opcodes](#filedirnet)
* [Type/Conversion Opcodes](#type)
* [OO/SixModel Opcodes](#sixmodel)
* [Bit Opcodes](#bit)
* [Context Introspection Opcodes](#context)
* [Variable Opcodes](#variable)
* [Miscellaneous Opcodes](#misc)
* [Native Call / Interoperability Opcodes](#nativecall)
* [Asynchronous operations](#async)

# <a id="arithmetic"></a> Arithmetic Opcodes

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

Multiply two numbers, returning the result.
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

# <a id="numeric"></a> Numeric Opcodes

## base
* `base_I(Int $i, int $radix)`

Returns a string representing the integer `$i` in base `$radix`

## ceil
* `ceil_n(num $n)`

Return the ceiling of a number.

## exp
* `exp_n(num $exponent)`

Return the value of `e` raised to $exponent.

## floor
* `floor_n(num $n)`

Return the floor of a number.

## inf
* `inf()`

Return infinity.

## log_n
* `log_n(num $n)`

Return the natural logarithm (base 𝑒) of a number.

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

# <a id="trig"></a> Trigonometric Opcodes

Each opcode corresponds directly to the trigonometric function of the same
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

# <a id="logic"></a> Relational / Logic Opcodes

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

## eqatic
MoarVM only

* `eqatic(str haystack, str $needle, int $pos)`

Case insensitive version of eqat

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

Return non-zero if $l is greater than $r.

## isge
* `isge_i(int $l, int $r)`
* `isge_n(num $l, num $r)`
* `isge_s(str $l, str $r)`
* `isge_I(Int $l, Int $r)`

Return non-zero if $l is greater than or equal to $r.

## islt
* `islt_i(int $l, int $r)`
* `islt_n(num $l, num $r)`
* `islt_s(str $l, str $r)`
* `islt_I(Int $l, Int $r)`

Return non-zero if $l is less than $r.

## isle
* `isle_i(int $l, int $r)`
* `isle_n(num $l, num $r)`
* `isle_s(str $l, str $r)`
* `isle_I(Int $l, Int $r)`

Return non-zero if $l is less than or equal to $r.

## isne
* `isne_i(int $l, int $r)`
* `isne_n(num $l, num $r)`
* `isne_s(str $l, str $r)`
* `isne_I(Int $l, Int $r)`

Return non-zero if the two parameters are not equal.

## not_i
* `not_i(int $val)`

Return 1 if `$val` is 0, 0 otherwise.

# <a id="array"></a> Array Opcodes

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

## atposref
* atposref_i(@arr, int $idx)
* atposref_n(@arr, int $idx)
* atposref_s(@arr, int $idx)

Returns a container (of type `IntPosRef`, `NumPosRef`, or `StrPosRef`) that you can assign to or read from which will directly access `@arr` at index `$idx`.

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
Bind $v to @arr at the position at the end of @arr, i.e., the position that
is just after the last position of @arr that has been bound to.

Return value is not currently defined.

## pop
* `pop(@arr)`
* `pop_i(@arr)`
* `pop_n(@arr)`
* `pop_s(@arr)`

"Pop the last value off the end of @arr."
Return the value of @arr at its last bound position, and unbind @arr at that
position.

## setelems
* `setelems(@arr, int $i)`

Set the size of `@arr` to `$i` elements. If less than the current size,
any elements after the new last position are unbound. If greater, the empty
elements at the end are bound with potentially VM specific null entries.

## shift
* `shift(@arr)`
* `shift_i(@arr)`
* `shift_n(@arr)`
* `shift_s(@arr)`

"Shift the last value from the beginning of @arr."
Return the value of @arr at index 0, unbind @arr at index 0, and move all
other binding of @arr to the index one below what they were previously bound
to.

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
Bind $v to @arr at index 0, move all other bindings of @arr to the index one
above what they were previously bound to.
Return the $v on JVM.

## iterator
* `iterator()`

Returns an iterator object to iterate over a list's items.  For example:

```perl

my $list := nqp::list('a', 'b', 'c');
my $iter := nqp::iterator($list);

while $iter {
    say(nqp::shift($iter));
}

```

You can also use `nqp::iterator()` to iterate over a hash's key-value pairs.

# <a id="hash"></a> Hash Opcodes

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

## iterkey
* `iterkey_s($pair)`

Returns the key associated with the given key-value pair.
For example:

```perl

for %hash {
    say(nqp::iterkey_s($_), ' => ', nqp::iterval($_));
}

```

## iterval
* `iterval($pair)`

Returns the value associated with the given key-value pair.

# <a id="string"></a> String Opcodes

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

## getstrfromname
* `getstrfromname(str $name)` (Currently only on MoarVM)

Like `codepointfromname` except it returns a string instead of a codepoint.
This function is able to return not just Unicode codepoints by name, but also
Unicode Named Sequences, including Emoji Sequences and Emoji ZWJ Sequences
and Name Aliases.

In addition it is also case-insensitive, unlike codepointfromname

See these links for a full list of [Named Sequences][Named-Sequences],
[Emoji Sequences][Emoji-Sequences], [Emoji ZWJ Sequences][Emoji-ZWJ-Sequences]
and [Name Aliases][Name-Aliases].

[Named-Sequences]: http://www.unicode.org/Public/UCD/latest/ucd/NamedSequences.txt
[Emoji-Sequences]: http://www.unicode.org/Public/emoji/4.0/emoji-sequences.txt
[Emoji-ZWJ-Sequences]: http://www.unicode.org/Public/emoji/4.0/emoji-zwj-sequences.txt
[Name-Aliases]: http://www.unicode.org/Public/UCD/latest/ucd/NameAliases.txt

## concat
* `concat(str $l, str $r)`

Return a string that is the concatenation of the two passed in strings.

## decode
* `decode($buffer, str $encoding)`

Returns an (NFG) string resulting from decoding the specified buffer assuming
the specified encoding.

## decodetocodes `moar`
* `decodetocodes($buffer, str $encoding, int $normalization, $codes)`

Decodes the bytes in the specified buffer using the provided encoding. Applies
normalization as requested (must be one of the nqp::const::NORMALIZE_* values;
use nqp::const::NORMALIZE_NONE to apply no normalization). Places the code
points into $codes, which should be some VMArray holding 32-bit integers.

## encode
* `encode(str $string, str $encoding, $buffer)`

Encodes an (NFG) string into the specified encoding, writing into the buffer
provided. The data written is normalized according to NFC.

## encodefromcodes `moar`
* `encodefromcodes($codes, str $encoding, $buffer)`

Takes a 32-bit integer array of Unicode codepoints, encodes them using the
chosen encoding, and writes them into the buffer. No normalization is applied.

## encodenorm
* `encode(str $string, str $encoding, int $normalization, $buffer)`

Encodes an (NFG) string into the specified encoding, writing into the buffer
provided. The data written is normalized according to the normalization value
passed (which must be one of the nqp::const::NORMALIZE_* values). Specifying
NORMALIZE_NONE is equivalent to NFC.

## escape
* `escape(str $str)`

Given a string, return an escaped version that replaces the following
characters with their escaped equivalents: "\\", "\b", "\n", "\r",
"\t", "\f", "\"", "\a", and "\e".

## fc
* `fc(str $str)`

Returns a Unicode "fold case" operation copy of string, suitable for doing
caseless string comparisons.

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

## indexic
* `indexic(str $haystack, str $needle, int $pos)`

This op has the same arguments and functionality as nqp::index,
except it is case-insensitive. For now we only have it under MoarVM,
but the plan is to support it on other platforms as well.

On MoarVM uses proper Unicode foldcase type comparison.

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

## normalizecodes
* `normalizecodes($codes-in, int $normalization, $codes-out)`

Takes the codepoints in $codes-in, applies the specified normalization, and
places the result into the $codes-out array. Both arrays of codepoints must
be 32-bit integer arrays.

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
    out[1] = $radix ** $number-of-digits-converted
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

Return a copy of `$str` where the characters starting at `$offset` for `$count`
characters have been replaced with the `$replacement` string.

## rindex
* `rindex(str $haystack, str $needle)`
* `rindex(str $haystack, str $needle, int $pos)`

Searching backwards through the `$haystack`, return the position at which
`$needle` appears, or -1 if it does not. Begin searching at `$pos` if
specified, otherwise start from the last position.

* `rindexfrom(str $haystack, str $needle, int $pos)` _Internal_

`rindex` is converted to this internal opcode by the compiler.

## rindexfromend `jvm`
* `rindexfromend(str $haystack, str $needle)` _Internal_

`rindex` is converted to this internal opcode by the compiler.

## split
* `split(str $delimiter, str $string)`

Splits the string `$string` into an array of elements; these elements are
the substrings between delimiters in the original string.

If the original string begins or ends with the delimiter, the resulting
array will begin or end with an empty element.

## sprintf
* `sprintf(str $pattern, @values)`

Returns a string formatted by the printf conventions similar to Perl 5 / C.
Machine sized numeric types, their limits and therefore overflows are not
implemented though.

## sprintfdirectives
* `sprintfdirectives(str $pattern)`

This takes the same pattern as `sprintf` does, and computes the needed
value-count that `sprintf` would have to provide.

## sprintfaddargumenthandler
* `sprintfaddargumenthandler(Mu $handler)`

Lets you register a handler-instance that supports the sprintf op when it
has to numify custom types. This handler has to provide two methods, `mine`
and `int`. `mine` gets the the value in question and returns true if this
handler is in charge for this type, false otherwise.
The method `int` does the conversion for patterns like %d.

```perl
my class MyHandler {
    method mine($x) { $x ~~ MyType }
    method int($x) { $x.Int }
}
```

## strfromcodes
* `strfromcodes($codes)`

Returns an (NFG) string built from the specified codepoints, which must be
provided as a 32-bit integer array.

## strtocodes
* `strtocodes(str $str, int $normalization, $codes)`

Takes an NFG string, and places the codepoints from it into the codes array,
which must be a 32-bit integer array. Applies the specified normalization,
specified as one of the nqp::const::NORMALIZE_* values; NORMALIZE_NONE is
not allowed.

## substr
* `substr(str $str, int $position)`
* `substr(str $str, int $position, int $length)`

Return the portion of the string starting at the given position.
If `$length` is specified, only return that many characters. The
numbered variants required the args specified - the unnumbered
version may use either signature.

## substr2 `jvm`
* `substr2(str $str, int $position)` _Internal_

A JVM specific internal opcode for `substr`.

## substr3 `jvm`
* `substr3(str $str, int $position, int $length)` _Internal_

A JVM specific internal opcode for `substr`.

## tc
* `tc(str $str)`

Return titlecase copy of string.

## uc
* `uc(str $str)`

Return uppercase copy of string.

## unicmp_s
* `unicmp_s(str, str, int, int, int)`
(Currently only on MoarVM)

Compares strings using the [Unicode Collation Algorithm][UCA] (UCA).
#### Parameters:
```
str, str, # strings to compare
int,      # collation mode (bitmask)
int,      # ISO 639 Language code
int       # ISO 3166 Country code
```

The collation mode defines whether we use Primary, Secondary, Tertiary and/or
Quaternary sorting.

The bitmask is as follows:
* 1 => Unicode Collation Primary
* 2 => Unicode Collation Secondary
* 4 => Unicode Collation Tertiary
* 8 => Quaternary (Break ties by codepoint)

15 will apply all four levels which is how most users will expect things
to be sorted, breaking any possible ties by checking codepoint number. This
should be the default for user facing applications.

The default language and country code is 0, meaning to sort without
respect to country or language.

* Returns -1 if string a is less than (sorted before) string b
* Returns 0 if strings are equal for the selected collation levels
 * Note: Will never return 0 for different strings unless you don't use the
  Quaternary level
* Returns 1 if string a is more than (sorted after) string b

While the Primary, Secondary and Tertiary mean different things for
different scripts, for the Latin script used in English they mostly
correspond with Primary being Alphabetic, Secondary being Diacritics
and Tertiary being Case.

Setting 0 for language and country will collate all scripts according to
their own distinctions for Primary, Secondary, and Tertiary, although it
will not take into account certain languages.

For example, some language based differences in collation:
* “…include ch as in traditional Spanish, ä as in traditional German,
  and å as in Danish” ― [Unicode Technical Report 10][UCA].

For more information see [Unicode TR10][UCA].

*** Note ***
 - Currently only language and country insensitive sorting methods are implemented.

[UCA]: http://unicode.org/reports/tr10/

## x
* `x(str $str, int $count)`

Return a new string containing `$count` copies of `$str`.

# <a id="unicode"></a> Unicode Property Opcodes

## getuniname
* `getuniname(int $codepoint)`

Translate a codepoint to its Unicode name.

## getuniprop_int `moar`
* `getuniprop_int(int $codepoint, int $propcode)`

Uses the table found by unipropcode to look up an integer property value
for a given codepoint.  Note that many properties that are officially
numeric are really stored as strings, and if you try to use this op
on such a property, you'll get a meaningless position in an enum table
instead of the value you want.

## getuniprop_str
* `getuniprop_str(int $codepoint, int $propcode)`

Same thing, but fetches a string property value.

## getuniprop_bool `moar`
* `getuniprop_bool(int $codepoint, int $propcode)`

Same thing, but fetches a boolean property value.

## matchuniprop `moar`
* `matchuniprop(int $codepoint, int $propcode, int $pvalcode)`

Looks up a codepoint property and return 1 if it matches the pval, 0
otherwise.  The propcode and pvalcode may be looked up with the opcodes
above.  (Note that you can use the property value name (e.g. Nd) for both
lookups.)

## unipropcode
* `unipropcode(str $propname)`

Translates a property name to the backend's property code. This is not distinct
across backends and is expected to change over time. For the most part only
useful for calling getuniprop_int, get_uniprop_str or get_uniprop_bool or
comparing whether two unicode property names resolve to the same propcode, for
example 'Alpha', 'alpha', 'alphabetic' and 'Alphabetic' should return the same
property code.

## unipvalcode `moar`
* `unipvalcode(int $propcode, str $propname)`

Looks up a property name in its property category, and returns which
table within that category to use.

# <a id="-vm-provided-streaming-decoder-opcodes"></a> VM-Provided Streaming Decoder Opcodes

## decoderconfigure
* `decoderconfigure(Decoder $dec, str $encoding, VMHash $config)`

Configures the decoder with an encoding. The `$config` hash parameter is
currently unused, and an empty hash or an `nqp::null` should be passed.

## decodersetlineseps
* `decodersetlineseps(Decoder $dec, VMArray $separators)`

Sets the line separators to be used for line-based reading. It should be
a string array (`nqp::list_s(...)`).

## decoderaddbytes
* `decoderaddbytes(Decoder $dec, VMArray $blob)`

Adds bytes to the decoder's internal buffer. Must have VMArray REPR, and
must have elements of type `int8` or `uint8`.

## decodertakechars
* `decodertakechars(Decoder $dec, int $num-chars)`

Returns an NFG string consisting of `$num-chars` graphemes, provided that
many are available after decoding. If less than `$num-chars` characters
can be decoded, then `nqp::null_s` will be returned. Note that some a
decoded codepoint at the end of a byte buffer may not be available as a
character if the encoding allows the next character to be a combining
character.

## decodertakeallchars
* `decodertakeallchars(Decoder $dec)`

Decodes all remaining undecoded bytes, and flushes the normalization buffer.
Returns an NFG string consisting of the decoded characters. This is suitable
to use when the end of a stream of bytes to decode has been reached (for
example, EOF when reading a file).

## decodertakeavailablechars
* `decodertakeavailablechars(Decoder $dec)`

Decodes all remaining undecoded bytes. Returns an NFG string consisting of the
decoded characters. Does not flush the normalization buffer. This is suitable
when performing streaming decoding, and a later byte buffer may provide a
combining character.

## decodertakeline
* `decodertakeline(Decoder $dec, int $chomp, int $incomplete-ok)`

Decodes bytes until a line separator is reached, or all bytes have been
decoded. If `$incomplete-ok` is zero and the separator was not found, then
`nqp::null_s` will be returned. (Thus, `$incomplete-ok` is appropriate only
when knowing that the end of the stream has been reached.) If `$chomp` is
non-zero, then the separator - if present - will not be included in the
resulting string.

## decoderbytesavailable
* `decoderbytesavailable(Decoder $dec)`

Returns the number of undecoded bytes available inside of the decoder. This is
useful in the case that chunks of the input should also be pulled out as bytes,
and may be useful for doing tuning or pre-fetching in various other cases. Note
that the result does not include bytes that were decoded but have not yet been
taken as characters, or that were decoded to code points that are still in the
normalization buffer. Thus the result is only accurate before reading any chars
or after `decodertakechars` or after `decodertakeline` with `$incomplete-ok`
passed a non-zero value.

## decodertakebytes
* `decodertakebytes(Decoder $dec, VMArray $blob_type, int $bytes)`

Takes up to `$bytes` bytes from the decode stream's undecoded buffer, makes an
instance of the `$blob_type`, and places the bytes in it. The same set of
caveats about decoded-but-untaken bytes in `decoderbytesavailable` apply.

## decoderempty
* `decoderempty(Decoder $dec)`

Returns zero if the decoder is empty (this means that there are no undecoded
bytes, no decoded but untaken chars, and nothing in the normalization buffer).
Otherwise returns non-zero.

# <a id="conditional"></a> Conditional Opcodes

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

# <a id="control"></a> Loop/Control Opcodes

## control
* `QAST::Op.new(:op<control>, :name<next>);`
* `QAST::Op.new(:op<control>, :name<last>);`
* `QAST::Op.new(:op<control>, :name<redo>);`

Not callable directly from NQP, but used in languages via QAST to perform loop
control. The specific kind of loop control desired is specified via the
`:name` attribute; either `next`, `last`, or `redo`.

## defor
* `defor(Block $cond, Block $body)`

If the `$cond` evaluates to defined value, return it, otherwise, evaluate
the `$body`.

## for
* `for(Iterable $iter, Block $body)`

Invoke the `$body` for every item available in `$iter`.

## ifnull
* `ifnull(Block $cond, Block $body)`

If the `$cond` evaluates to null, evaluate the `$body`, otherwise return
the result of `$cond`.

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

## stmts
* `stmts(...)`

Executes the given statements sequentially. For example:

```perl

nqp::stmts((my $a := nqp::chars("foo")), say($a), say("bar"));
# 3
# bar

```

Note that `:=` statements must be surrounded by parentheses.

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

# <a id="exceptions"></a> Exceptional Opcodes

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

# <a id="io"></a> Input/Output Opcodes

## closefh
* `closefh(Handle $fh)`

Close the filehandle.

## eoffh
* `eoffh(Handle $fh)`

Return 1 if this filehandle is at the end of the file, otherwise 0.

## filenofh
* `filenofh(Handle $fh)`
Returns the filehandle number.

## flushfh
* `flushfh(Handle $fh)`

Flushes the filehandle, forcing it to write any buffered output.

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
`w` for write, and `wa` for write with append. Returns a filehandle.

## openasync `jvm`
_Experimental_
* `openasync(str $filename, str $mode)`

Open the specified file in the given mode for async IO.
See `open` for valid modes.

## print
* `print(str $str)`

Output the given string to stdout.

## readfh
* `readfh(Handle $fh, @arr, long $count)`

Given a readable `$fh`, and an array of `Buf[int8]` or a `Buf[uint8]`, read
in the next `$count` bytes from the filehandle and store them in the array.

## say
* `say(str $str)`

Output the given string to stdout, followed by a newline.

## seekfh
* `seekfh(Handle $fh, int $offset, int $whence)`

Seek in the filehandle to the location specified by the offset and whence.

## tellfh
* `tellfh(Handle $fh)`

Return current access position for an open filehandle.

## writefh
* `writefh(Handle $fh, Mu $str)`

Output the given object to the filehandle. Returns the number of bytes written.

# <a id="extern"></a> External command Opcodes

## shell
* `shell(str $cmd, str $path, %env)`

Using $path as the working directory, execute the given command using the
specified environment variables. Returns a POSIX-style return value. Command
is executed using an OS-appropriate shell (`sh -c` or `cmd /c`). Blocks
until command is complete.

## spawn
* `spawn(@cmd, str $path, %env)`

Using $path as the working directory, execute the given command  using the
specified environment variables. Returns a POSIX-style return value. No shell
processing of args is done. The first value of `@args` is the command
executed, further values are passed as arguments. Blocks until command is
complete.

# <a id="filedirnet"></a> File / Directory / Network Opcodes

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

If the specified filename refers to a writeable file, returns 1.
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

Given a path and a code, return an int describing that path using the OS's
stat() function. Any of these variants may throw an exception if the platform
does not support them. (JVM does not support `STAT_PLATFORM_BLOCKSIZE` or
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

    * `nqp::const::STAT_PLATFORM_DEV`

Returns the device identifier.  Returns -1 if an exception occurred.

    * `nqp::const::STAT_PLATFORM_BLOCKSIZE`

Returns preferred I/O size in bytes for interacting with the file.

    * `nqp::const::STAT_PLATFORM_BLOCKS`

Returns number of system-specific blocks allocated on disk.

## stat_time
* `stat_time(str $path, int $code)`

Given a path and one of the `STAT_*TIME` codes, return that time attribute as
a num, using the OS's stat() function.

## lstat
* `lstat(str $path, int $code)`

Same as stat, but internally uses the OS's lstat() function, which does *not*
follow symlinks.

## lstat_time
* `stat_time(str $path, int $code)`

Same as stat_time, but internally uses the OS's lstat() function, which does
*not* follow symlinks.


## symlink
* `symlink(str $before, str $after)`

Create a symbolic link from `$after` to `$before`

## unlink
* `unlink(str $path)`

Delete the given file $path. Returns 0 on success, -2 if the file
didn't exist. May throw an exception.

# <a id="type"></a> Type/Conversion Opcodes

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
* `isbig_I(Int $obj)`

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
values, positive infinity, negative infinity, or NaN.

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

# <a id="sixmodel"></a> OO/SixModel Opcodes

## attrinited
* `attrinited(Mu $obj. Mu:T $type, str $attributename)`

Test if the attribute of name `$attributename` of object `$obj`
has been binded, see `bindattr`. Note that any access to the atribute
that results in a `getattr` call causes it to be inited.

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
and cannot be inferred from the object:

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

# <a id="bit"></a> Bit Opcodes

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

# <a id="context"></a> Context Introspection Opcodes

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
It's valid to implement this exactly the same way as savecapture if there's
no performance benefit to be had in a split.
Used by the multi-dispatcher.

## getlex
* `getlex(str $name)`
* `getlex_i(str $name)`
* `getlex_n(str $name)`
* `getlex_s(str $name)`

Looks up the lexical with the specified name and the specified type.
Searching in the outer frames, starting at the current.
An error is thrown if it does not exist or if the type is incorrect.

## bindlex
* `bindlex(str $name, Mu $value)`
* `bindlex_i(str $name, int $value)`
* `bindlex_n(str $name, num $value)`
* `bindlex_s(str $name, str $value)`

Binds $value to the lexical specified by name and type. Searching in the
outer frames, starting at the current.
An error is thrown if it does not exist or if the type is incorrect.

## getlexdyn
* `getlexdyn(str $name)`

Looks up the contextual with the specified name in the caller chain,
starting at the calling frame.

## bindlexdyn
* `bindlexdyn(str $name, Mu $value)`

Binds $value to the contextual with the specified name, searching for it in
the call-chain, starting at the calling frame.

## getlexouter
* `getlexouter(str $name)`

Looks up the lexical with the specified name and the specified type.
Searching in the outer frames, starting at outer.

## getlexcaller
* `getlexcaller(str $name)`

Looks up the lexical with the specified name, starting at the calling frame.
It checks all outer frames of the caller chain.

## getlexrel
* `getlexrel(Mu $context, str $name)`

Looks up the lexical with the specified name and the specified type.
Searching in the outer frames, starting at the given $context.

## getlexreldyn
* `getlexreldyn(Mu $context, str $name)`

Looks up the contextual with the specified name in the caller chain,
starting at the given $context.

## getlexrelcaller
* `getlexrelcaller(Mu $context, str $name)`

Looks up the lexical with the specified name, starting at the given
$context. It checks all outer frames of the caller chain.

# <a id="variable"></a> Variable Opcodes

## bind
* `bind(Mu $variable, Mu $value)`

Binds `$value` to the `$variable`. Dies if `$variable` isn't actually a
variable. Same as the `:=` operator in NQP.

# <a id="misc"></a> Miscellaneous Opcodes

## locallifetime
```perl6
QAST::Op.new( :op('locallifetime'), :node($/), QAST::Stmt.new(...))
```

Defines when local variables can be considered dead. E.g. the temporary setting
of `$_` on the right side of `~~` uses that.

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

The JVM only supports SIG_INT and SIG_KILL.

On the MoarVM all of those signal constants below are defined.

    * SIG_HUP
    * SIG_INT
    * SIG_QUIT
    * SIG_ILL
    * SIG_TRAP
    * SIG_ABRT
    * SIG_EMT
    * SIG_FPE
    * SIG_KILL
    * SIG_BUS
    * SIG_SEGV
    * SIG_SYS
    * SIG_PIPE
    * SIG_ALRM
    * SIG_TERM
    * SIG_URG
    * SIG_STOP
    * SIG_TSTP
    * SIG_CONT
    * SIG_CHLD
    * SIG_TTIN
    * SIG_TTOU
    * SIG_IO
    * SIG_XCPU
    * SIG_XFSZ
    * SIG_VTALRM
    * SIG_PROF
    * SIG_WINCH
    * SIG_INFO
    * SIG_USR1
    * SIG_USR2
    * SIG_THR
    * SIG_STKFLT
    * SIG_PWR
    * SIG_BREAK


## debugnoop `jvm`
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

Given a UTF-8 string, return the SHA-1 digest for that string. This op is built
for the specific purpose of hashing source code for dependency management
purposes, and isn't intended to be used more widely.

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

# <a id="nativecall"></a> Native Call / Interoperability Opcodes

## nativecallrefresh
Refresh the C-based data backing the Perl 6 object. This op should only be used if changes have been made to the C-data, and these changes are not being reflected in the Perl 6 object.

# <a id="async"></a> Asynchronous Operations

The various asynchronous operations, such as timers and asynchronous I/O, take
a concurrent queue to push a work item into at an appropriate time. This may
be a code object to be invoked, or it may be an array of a code item and some
arguments to supply to it. Asynchronous operations are represented by some
object with the AsyncTask REPR, the exact details of which are highly
specific to a given backend. The type to use for that is given as $handle_type.

[As of 2014.04, these are very new and subject to revision and additions.]

## permit
* `permit(AsyncTask $handle, int $channel, int $permits)`

Takes something with the AsyncTask REPR and permits it to emit up to `$permits`
more notifications. This is used as a back-pressure mechanism for asynchronous
tasks that produce a stream of events, such as representing data arriving over
a socket. Some kinds of tasks may emit on multiple channels, for example an
asynchronous process may emit events for STDOUT and STDERR if both are of
interest. The `$channel` argument is used to specify which channel is to get
the permits if needed. If `$permits` is less than zero then it means there is
no limit to the emits. If it is set to any value greater than or equal to
zero, then:

* In the case unlimited emits were permitted previously, the permits will be
  set to the new value. If the new value is zero then the reader will be
  stopped.
* Otherwise the number of permits will be incremented by the specified value.
  If the resulting number of permits allowed is greater than zero and the
  reader is not running, it will be started.

## cancel
* `cancel(AsyncTask $handle)`

Takes something with the AsyncTask REPR and tries to cancel it, if it
is possible to do so. If it is somehow not possible (for example, the
operation already completed anyway), then nothing will happen. This is to
avoid race conditions.

## timer
* `timer($queue, $schedulee, int $timeout, int $repeat, $handle_type)`

Starts a timer. If timeout is zero, the $schedulee is immediately pushed to
the queue. Otherwise, it is pushed after the timeout period. If repeat is
non-zero, after the initial timeout period it will then be pushed again at
the repeat interval. Returns an object of type $handle_type, which has a
AsyncTask REPR. Cancellation stops the timer ever repeating again.

## signal
* `signal($queue, $schedulee, int [nqp::cosnt::SIG_], $handle_type)`

Sets up a signal handler for the given signal. Whenever it occurs, an
array is pushed to the queue containing the schedulee and the signal number.
Cancel to stop handling it.

## watchfile
* `watchfile($queue, $schedulee, str $filename, $handle_type)`

Watches an individual file for changes. Pushes an array to the queue
when a change is detected, consisting of the schedulee, the filename that
changed if provided by the underlying watcher mechanism, a 0 if the file
changed, and a 1 if it was renamed. Cancel to stop watching.

## asyncconnect
* `asyncconnect($queue, $schedulee, str $host, int $port, $handle_type)`

Creates an asynchronous client socket and commences a connection operation.
Upon connection, the queue will be passed an array consisting of the
schedulee, a handle if the connection was successful (a type object if not)
and an error string (some type object if no error). Returns an AsyncTask
representing the connection attempt.

## asynclisten
* `asynclisten($queue, $schedulee, str $host, int $port, $handle_type)`

Creates an asynchronous server socket listening on the specified host and port.
Each time a connection arrives, the queue will be passed an array consisting of
the schedulee and the newly created asynchronous socket, for communicating with
the connecting client. Returns an AsyncTask that can be cancelled to stop
listening, or throws an exception if there is an error starting to listen.

## asyncwritestr
* `asyncwritestr($handle, $queue, $schedulee, str $to_write, $handle_type)`

Writes a string to some handle capable of asynchronous operations. Once the write
is complete, the queue will be passed an array consisting of the schedulee, an
integer containing the number of bytes written or a type object if there was an
error, and a string containing an error or some type object if none.

## asyncwritebytes
* `asyncwritebytes($handle, $queue, $schedulee, $to_write, $handle_type)`

Writes a byte array to some handle capable of asynchronous operations. Once
the write is complete, the queue will be passed an array consisting of the
schedulee, an integer containing the number of bytes written or a type
object if there was an error, and a string containing an error or some type
object if none.

## asyncreadchars
* `asyncreadchars($handle, $queue, $schedulee, $handle_type)`

Starts reading chars from the handle. When a packet is received and decoded,
an array will be pushed to the queue containing the schedulee, a squence
number that starts at 0, the string if anything was decoded (type object on
error) and an error string (some type object if no error). If EOF is
reached, a sequence number of -1 is sent. Cancel to stop reading.

## asyncreadbytes
* `asyncreadbytes($handle, $queue, $schedulee, $buf_type, $handle_type)`

Starts reading bytes from the handle. When a packet is received, a $buf_type
will be constructed and point to the received memory. An array will be
pushed to the queue containing the schedulee, a sequence number that starts
at 0, the buffer or just its type object on error, and an error string (type
object if no error). If EOF is reached, a sequence number of -1 is sent.
Cancel to stop reading.

## spawnprocasync `moar`
* `spawnprocasync($queue, $args, $cwd, %env, $callbacks)`

## killprocasync `moar`
* `killprocasync($handle, $signal)`
