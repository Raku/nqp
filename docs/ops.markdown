# Introduction

This document is for core NQP opcodes.

For generating an abstract tree that includes opcodes, see [docs/qast.markdown](https://github.com/Raku/nqp/blob/master/docs/qast.markdown).

There is not a 1:1 mapping of MoarVM opcodes to the MoarVM-based NQP. Some opcodes are defined in NQP,
some MoarVM opcodes are not exposed.

For Raku opcodes added by the rakudo compiler see
[docs/ops.markdown](https://github.com/rakudo/rakudo/blob/master/docs/ops.markdown) in the Rakudo
repository. They are of the form `nqp::p6*` (following the historical naming of Perl 6).

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
* `_o` argument is an object
* `_b` argument is a code block
* `_I` argument is a Big Integer

They may also have a numeric suffix, which typically indicates the number
of arguments required. (_Note that some opcodes contain an underscore
not being used to indicate a type suffix_.)

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

## [Arithmetic](#arithmetic)

[abs](#abs) |
[add](#add) |
[div](#div) |
[gcd](#gcd) |
[lcm](#lcm) |
[mod](#mod) |
[mul](#mul) |
[neg](#neg) |
[sub](#sub)

## [Array](#array)

[atpos](#atpos) |
[atpos2d](#atpos2d) |
[atpos3d](#atpos3d) |
[atposnd](#atposnd) |
[atposref](#atposref) |
[bindpos](#bindpos) |
[bindpos2d](#bindpos2d) |
[bindpos3d](#bindpos3d) |
[bindposnd](#bindposnd) |
[elems](#elems) |
[existspos](#existspos) |
[list](#list) |
[pop](#pop) |
[push](#push) |
[setelems](#setelems) |
[shift](#shift) |
[slice](#slice) |
[splice](#splice) |
[unshift](#unshift)

## [Asynchronous](#async)

[asyncconnect](#asyncconnect) |
[asynclisten](#asynclisten) |
[asyncreadbytes](#asyncreadbytes-moar-jvm) |
[asyncwritebytes](#asyncwritebytes) |
[cancel](#cancel-moar-jvm) |
[killprocasync](#killprocasync) |
[permit](#permit) |
[signal](#signal-moar-jvm) |
[spawnprocasync](#spawnprocasync) |
[timer](#timer-moar-jvm) |
[watchfile](#watchfile-moar-jvm)

## [Atomic](#atomic)

[atomicadd_i](#atomicadd_i-moar) |
[atomicbindattr](#atomicbindattr-moar) |
[atomicdec_i](#atomicdec_i-moar) |
[atomicinc_i](#atomicinc_i-moar) |
[atomicload](#atomicload-moar) |
[atomicload_i](#atomicload_i-moar) |
[atomicstore](#atomicstore-moar) |
[atomicstore_i](#atomicstore_i-moar) |
[barrierfull](#barrierfull-moar) |
[cas](#cas-moar) |
[cas_i](#cas_i-moar)

## [Binary Data](#binarydata)

[readint](#readint-moar-js) |
[readnum](#readnum-moar-js) |
[readuint](#readuint-moar-js) |
[writeint](#writeint-moar-js) |
[writenum](#writenum-moar-js) |
[writeuint](#writeuint-moar-js)

## [Bit](#bit)

[bitand](#bitand) |
[bitneg](#bitneg) |
[bitor](#bitor) |
[bitshiftl](#bitshiftl) |
[bitshiftr](#bitshiftr) |
[bitxor](#bitxor)

## [Coercion](#coercion)

[coerce_in](#coerce_in-moar) |
[coerce_is](#coerce_is) |
[coerce_ni](#coerce_ni-moar) |
[coerce_ns](#coerce_ns-moar) |
[coerce_si](#coerce_si) |
[coerce_sn](#coerce_sn-moar) |
[intify](#intify-moar) |
[numify](#numify-moar) |
[stringify](#stringify)

## [Conditional](#conditional)

[if](#if) |
[unless](#unless) |
[with](#with) |
[without](#without)

## [Context Introspection](#context)

[bindlex](#bindlex-moar-jvm) |
[bindlexdyn](#bindlexdyn) |
[captureposelems](#captureposelems) |
[ctx](#ctx) |
[ctxcaller](#ctxcaller) |
[ctxlexpad](#ctxlexpad) |
[ctxouter](#ctxouter) |
[curlexpad](#curlexpad) |
[getlex](#getlex-moar-jvm) |
[getlexcaller](#getlexcaller) |
[getlexdyn](#getlexdyn) |
[getlexouter](#getlexouter) |
[getlexref](#getlexref-moar-jvm) |
[getlexrel](#getlexrel) |
[getlexrelcaller](#getlexrelcaller) |
[getlexreldyn](#getlexreldyn) |
[lexprimspec](#lexprimspec) |
[savecapture](#savecapture) |
[usecapture](#usecapture)

## [Loop/Control](#control)

[control](#control) |
[defor](#defor) |
[for](#for) |
[ifnull](#ifnull) |
[repeat_until](#repeat_until) |
[repeat_while](#repeat_while) |
[stmts](#stmts) |
[until](#until) |
[while](#while)

## [Exception Handling](#exception-handling)

[backtrace](#backtrace) |
[backtracestrings](#backtracestrings) |
[die](#die) |
[exception](#exception) |
[getextype](#getextype) |
[getmessage](#getmessage) |
[getpayload](#getpayload) |
[newexception](#newexception) |
[resume](#resume) |
[rethrow](#rethrow) |
[setextype](#setextype) |
[setmessage](#setmessage) |
[setpayload](#setpayload) |
[throw](#throw)

## [External Command](#extern)

[execname](#execname-moar-js)

## [File / Directory / Network](#filedirnet)

[chdir](#chdir) |
[chmod](#chmod) |
[closedir](#closedir) |
[copy](#copy) |
[cwd](#cwd) |
[fileexecutable](#fileexecutable) |
[fileislink](#fileislink) |
[filereadable](#filereadable) |
[filewritable](#filewritable) |
[gethostname](#gethostname) |
[getport](#getport-moar-jvm) |
[link](#link) |
[lstat](#lstat) |
[lstat_time](#lstat_time) |
[mkdir](#mkdir) |
[nextfiledir](#nextfiledir) |
[opendir](#opendir) |
[readlink](#readlink) |
[rename](#rename) |
[rmdir](#rmdir) |
[stat](#stat) |
[stat_time](#stat_time) |
[symlink](#symlink) |
[unlink](#unlink)

## [Hash](#hash)

[atkey](#atkey) |
[bindkey](#bindkey) |
[deletekey](#deletekey) |
[existskey](#existskey) |
[hash](#hash) |
[iterator](#iterator) |
[iterkey](#iterkey) |
[iterval](#iterval)

## [HLL-Specific](#hll-specific)

[bindhllsym](#bindhllsym / bindcurhllsym) |
[gethllsym](#gethllsym / getcurhllsym) |
[hllbool](#hllbool) |
[hllboxtype](#hllboxtype) |
[hllhash](#hllhash-moar-jvm) |
[hlllist](#hlllist-moar-jvm) |
[usecompilerhll](#usecompilerhll / usecompileehll)

## [Input/Output](#io)

[closefh](#closefh) |
[eoffh](#eoffh) |
[filenofh](#filenofh) |
[flushfh](#flushfh) |
[getstderr](#getstderr) |
[getstdin](#getstdin) |
[getstdout](#getstdout) |
[open](#open) |
[print](#print) |
[readfh](#readfh) |
[say](#say) |
[seekfh](#seekfh) |
[tellfh](#tellfh) |
[writefh](#writefh)

## [Relational / Logic](#logic)

[cmp](#cmp) |
[eqat](#eqat) |
[eqatic](#eqatic) |
[eqaticim](#eqaticim-moar-js) |
[eqatim](#eqatim-moar-js) |
[falsey](#falsey) |
[iseq](#iseq) |
[isge](#isge) |
[isgt](#isgt) |
[isle](#isle) |
[islt](#islt) |
[isne](#isne) |
[not](#not)

## [NativeCall](#nativecall)

[buildnativecall](#buildnativecall) |
[nativecall](#nativecall) |
[nativecallcast](#nativecallcast) |
[nativecallglobal](#nativecallglobal) |
[nativecallinvoke](#nativecallinvoke) |
[nativecallrefresh](#nativecallrefresh) |
[nativecallsizeof](#nativecallsizeof)

## [Numeric](#numeric)

[base](#base) |
[ceil](#ceil) |
[exp](#exp) |
[expmod](#expmod) |
[floor](#floor) |
[inf](#inf) |
[log_n](#log_n) |
[nan](#nan) |
[neginf](#neginf) |
[pow](#pow) |
[rand](#rand) |
[sqrt](#sqrt) |
[srand](#srand)

## [Objects](#objects)

[attrinited](#attrinited) |
[bindattr](#bindattr) |
[bindcomp](#bindcomp) |
[call](#call) |
[callmethod](#callmethod) |
[can](#can) |
[clone](#clone) |
[create](#create) |
[eqaddr](#eqaddr) |
[findmethod](#findmethod) |
[getattr](#getattr) |
[getcomp](#getcomp) |
[how](#how) |
[rebless](#rebless) |
[reprname](#reprname) |
[setwho](#setwho) |
[tryfindmethod](#tryfindmethod) |
[what](#what) |
[where](#where) |
[who](#who)

## [SixModel Parametric Extensions](#parametric-type-extensions)

[setparameterizer](#setparameterizer) |
[setparameterizetype](#setparameterizetype) |
[typeparameterat](#typeparameterat) |
[typeparameterized](#typeparameterized) |
[typeparameters](#typeparameters)

## [Serialization context](#serialization-context)

[createsc](#createsc) |
[deserialize](#deserialize) |
[forceouterctx](#forceouterctx) |
[freshcoderef](#freshcoderef) |
[getobjsc](#getobjsc) |
[markcodestatic](#markcodestatic) |
[neverrepossess](#neverrepossess) |
[popcompsc](#popcompsc) |
[pushcompsc](#pushcompsc) |
[scgetdesc](#scgetdesc) |
[scgethandle](#scgethandle) |
[scgetobjidx](#scgetobjidx) |
[scobjcount](#scobjcount) |
[scsetcode](#scsetcode) |
[scsetdesc](#scsetdesc) |
[scsetobjc](#scsetobjc) |
[serialize](#serialize) |
[setobjsc](#setobjsc)

## [Stream Decoding](#stream-decoding)

[decoderaddbytes](#decoderaddbytes) |
[decoderbytesavailable](#decoderbytesavailable) |
[decoderconfigure](#decoderconfigure) |
[decoderempty](#decoderempty) |
[decodersetlineseps](#decodersetlineseps) |
[decodertakeallchars](#decodertakeallchars) |
[decodertakeavailablechars](#decodertakeavailablechars) |
[decodertakebytes](#decodertakebytes) |
[decodertakechars](#decodertakechars) |
[decodertakeline](#decodertakeline)

## [String](#string)

[chars](#chars) |
[chr](#chr) |
[codepointfromname](#codepointfromname) |
[codes](#codes) |
[concat](#concat) |
[decode](#decode) |
[decodetocodes](#decodetocodes-moar) |
[encode](#encode) |
[encodefromcodes](#encodefromcodes-moar) |
[encodenorm](#encodenorm) |
[escape](#escape) |
[fc](#fc) |
[findcclass](#findcclass) |
[findnotcclass](#findnotcclass) |
[flip](#flip) |
[index](#index) |
[indexic](#indexic-moar) |
[indexicim](#indexicim-moar) |
[indexim](#indexim-moar) |
[iscclass](#iscclass) |
[join](#join) |
[lc](#lc) |
[normalizecodes](#normalizecodes) |
[numify](#numify) |
[ord](#ord) |
[ordbaseat](#ordbaseat) |
[radix](#radix) |
[replace](#replace) |
[rindex](#rindex) |
[split](#split) |
[sprintf](#sprintf) |
[sprintfaddargumenthandler](#sprintfaddargumenthandler) |
[sprintfdirectives](#sprintfdirectives) |
[strfromcodes](#strfromcodes) |
[strfromname](#strfromname) |
[strtocodes](#strtocodes) |
[substr](#substr) |
[tc](#tc) |
[tclc](#tclc) |
[uc](#uc) |
[unicmp_s](#unicmp_s-moar-js) |
[x](#x)

## [Threads](#threads)

[currentthread](#currentthread-moar-jvm) |
[newthread](#newthread-moar-jvm) |
[threadid](#threadid-moar-jvm) |
[threadjoin](#threadjoin-moar-jvm) |
[threadlockcount](#threadlockcount-moar-jvm) |
[threadrun](#threadrun-moar-jvm) |
[threadyield](#threadyield-moar-jvm)

## [Trigonometric](#trig)

[acos](#acos) |
[asec](#asec) |
[asin](#asin) |
[atan](#atan) |
[atan2](#atan2) |
[cos](#cos) |
[cosh](#cosh) |
[sec](#sec) |
[sech](#sech) |
[sin](#sin) |
[sinh](#sinh) |
[tan](#tan) |
[tanh](#tanh)

## [Type / Conversion](#type)

[bool](#bool) |
[bootarray](#bootarray-moar-jvm) |
[boothash](#boothash-moar-jvm) |
[bootint](#bootint-moar-jvm) |
[bootintarray](#bootintarray-moar-jvm) |
[bootnum](#bootnum-moar-jvm) |
[bootnumarray](#bootnumarray-moar-jvm) |
[bootstr](#bootstr-moar-jvm) |
[bootstrarray](#bootstrarray-moar-jvm) |
[box](#box) |
[decont](#decont) |
[defined](#defined) |
[fromI_I](#fromI_I) |
[fromnum](#fromnum) |
[fromstr](#fromstr) |
[isbig](#isbig) |
[iscoderef](#iscoderef-moar) |
[isconcrete](#isconcrete) |
[iscont](#iscont) |
[isfalse](#isfalse) |
[ishash](#ishash) |
[isint](#isint) |
[isinvokable](#isinvokable) |
[islist](#islist) |
[isnanorinf](#isnanorinf) |
[isnull](#isnull) |
[isnum](#isnum) |
[isprime](#isprime) |
[isrwcont](#isrwcont) |
[isstr](#isstr) |
[istrue](#istrue) |
[isttyfh](#isttyfh) |
[istype](#istype) |
[null](#null) |
[tonum](#tonum) |
[tostr](#tostr) |
[unbox](#unbox)

## [Unicode Properties](#unicode)

[getuniname](#getuniname) |
[getuniprop_bool](#getuniprop_bool-moar) |
[getuniprop_int](#getuniprop_int-moar) |
[getuniprop_str](#getuniprop_str) |
[hasuniprop](#hasuniprop-moar) |
[matchuniprop](#matchuniprop-moar) |
[unipropcode](#unipropcode) |
[unipvalcode](#unipvalcode-moar)

## [Variable](#variable)

[bind](#bind)

## [Miscellaneous](#misc)

[backendconfig](#backendconfig) |
[const](#const) |
[cpucores](#cpucores) |
[debugnoop](#debugnoop-jvm) |
[decodelocaltime](#decodelocaltime) |
[exit](#exit) |
[force_gc](#force_gc-moar-jvm) |
[freemem](#freemem) |
[getcodename](#getcodename) |
[getenvhash](#getenvhash) |
[getpid](#getpid) |
[getppid](#getppid-moar) |
[getrusage](#getrusage) |
[getsignals](#getsignals) |
[indexingoptimized](#indexingoptimized) |
[js](#js-moar-js) |
[jvmclasspaths](#jvmclasspaths-jvm) |
[jvmgetproperties](#jvmgetproperties-jvm) |
[locallifetime](#locallifetime) |
[mvmendprofile](#mvmendprofile-moar) |
[mvmstartprofile](#mvmstartprofile-moar) |
[objectid](#objectid) |
[setcodename](#setcodename) |
[sha1](#sha1) |
[sleep](#sleep) |
[takeclosure](#takeclosure) |
[time](#time) |
[totalmem](#totalmem) |
[uname](#uname-moar-js)

# <a id="arithmetic"></a> Arithmetic

## abs
* `abs_i(int $i --> int)`
* `abs_n(num $n --> num)`
* `abs_I(Int $i, Mu:T $type --> Int)`

Return the absolute value of a number.
`_I` variant returns an object of the given type.

## add
* `add_i(int $l, int $r --> int)`
* `add_n(num $l, num $r --> num)`
* `add_I(Int $l, Int $r, Mu:T $type --> Int)`
* `add_i64(Int $l, Int $r, Mu:T $type --> Int)` `js`

Add two numbers together, returning the result.
Typed variants return an object of the given type.

## div
* `div_i(int $l, int $r --> int)`
* `div_n(num $l, num $r --> num)`
* `div_I(Int $l, Int $r, Mu:T $type --> Int)`
* `div_In(Int $l, Int $r --> num)`

Divide $l by $r, returning the result.
`_I` variant returns an object of the given type. The `_In` variant returns
a native num, using a scale of 309, and a rounding mode equivalent to Java's
`ROUND_HALF_UP`.

## gcd
* `gcd_i(int $l, int $r --> int)`
* `gcd_I(Int $l, Int $r, Mu:T $type --> Int)`

Return the greatest common multiple of two numbers.
`_I` variant returns an object of the given type.

## lcm
* `lcm_i(int $l, int $r --> int)`
* `lcm_I(Int $l, Int $r, Mu:T $type --> Int)`

Return the lowest common multiple of two numbers.
`_I` variant returns an object of the given type.

## mod
* `mod_i(int $l, int $r --> int)`
* `mod_n(num $l, num $r --> num)`
* `mod_I(Int $l, Int $r, Mu:T $type --> Int)`

Return the modulus of $l by $r.
`_I` variant returns an object of the given type.

## mul
* `mul_i(int $l, int $r --> int)`
* `mul_n(num $l, num $r --> num)`
* `mul_I(Int $l, Int $r, Mu:T $type --> Int)`

Multiply two numbers, returning the result.
`_I` variant returns an object of the given type.

## neg
* `neg_i(int $i --> int)`
* `neg_n(num $n --> num)`
* `neg_I(Int $i, Mu:T $type --> Int)`

Return the negative of a number.
`_I` variant returns an object of the given type.

## sub
* `sub_i(int $l, int $r --> int)`
* `sub_n(num $l, num $r --> num)`
* `sub_I(Int $l, Int $r, Mu:T $type --> Int)`
* `sub_i64(Int $l, Int $r, Mu:T $type --> Int)` `js`

Subtract $r from $l, returning the result.
Typed variants return an object of the given type.

# <a id="array"></a> Array

## atpos
* `atpos(@arr, int $i --> Mu)`
* `atpos_i(@arr, int $i --> int)`
* `atpos_n(@arr, int $i --> num)`
* `atpos_s(@arr, int $i --> str)`

Return whatever is bound to @arr at position $i.

## atpos2d
* `atpos2d(@arr, int $i, int $j --> Mu)`
* `atpos2d_i(@arr, int $i, int $j --> int)`
* `atpos2d_n(@arr, int $i, int $j --> num)`
* `atpos2d_s(@arr, int $i, int $j --> str)`

Return whatever is bound to the 2-dimensional array @arr at position $i, $j.

## atpos3d
* `atpos3d(@arr, int $i, int $j, int $k --> Mu)`
* `atpos3d_i(@arr, int $i, int $j, int $k --> int)`
* `atpos3d_n(@arr, int $i, int $j, int $k --> num)`
* `atpos3d_s(@arr, int $i, int $j, int $k --> str)`

Return whatever is bound to the 3-dimensional array @arr at position $i, $j, $k.

## atposnd
* `atposnd(@arr, @indices --> Mu)`
* `atposnd_i(@arr, @indices --> int)`
* `atposnd_n(@arr, @indices --> num)`
* `atposnd_s(@arr, @indices --> str)`

Return whatever is bound to the n-dimensional array @arr at @indices,
where @indices is a 1-dimensional integer array of index values.

## atposref
* `atposref(@arr, int $idx --> Mu)` `js`
* `atposref_i(@arr, int $idx --> int)`
* `atposref_n(@arr, int $idx --> num)`
* `atposref_s(@arr, int $idx --> str)`

Returns a container (of type `IntPosRef`, `NumPosRef`, or `StrPosRef`) that you can assign to or read from which will directly access `@arr` at index `$idx`.

## bindpos
* `bindpos(@arr, int $i, Mu $v --> Mu)`
* `bindpos_i(@arr, int $i, int $v --> int)`
* `bindpos_n(@arr, int $i, num $v --> num)`
* `bindpos_s(@arr, int $i, str $v --> str)`

Bind $v to @arr at position $i and return $v.

## bindpos2d
* `bindpos2d(@arr, int $i, int $j, Mu $v --> Mu)`
* `bindpos2d_i(@arr, int $i, int $j, int $v --> int)`
* `bindpos2d_n(@arr, int $i, int $j, num $v --> num)`
* `bindpos2d_s(@arr, int $i, int $j, str $v --> str)`

Bind $v to the 2-dimensional arrray @arr at position $i, $j and return $v.

## bindpos3d
* `bindpos3d(@arr, int $i, int $j, int $k, Mu $v --> Mu)`
* `bindpos3d_i(@arr, int $i, int $j, int $k, int $v --> int)`
* `bindpos3d_n(@arr, int $i, int $j, int $k, num $v --> num)`
* `bindpos3d_s(@arr, int $i, int $j, int $k, str $v --> str)`

Bind $v to the 3-dimensional arrray @arr at position $i, $j, $k and return $v.

## bindposnd
* `bindposnd(@arr, @indices, Mu $v --> Mu)`
* `bindposnd_i(@arr, @indices, int $v --> int)`
* `bindposnd_n(@arr, @indices, num $v --> num)`
* `bindposnd_s(@arr, @indices, str $v --> str)`

Bind $v to @arr at the position specified by @indices and return $v.
@indices is a 1-dimensional integer array of index values.

## elems
* `elems(@arr --> int)`
* `elems(%hash --> int)`

Return the number of elements in `@arr`, or the number of keys in `%hash`.

## existspos
* `existspos(@arr, int $i --> int)`

Return 1 if anything is bound to `@arr` at position `$i`,
0 otherwise.

## list
* `list(... --> Mu)`
* `list_i(... --> Mu)`
* `list_n(... --> Mu)`
* `list_s(... --> Mu)`
* `list_b(... --> Mu)` `moar`

Create a list of the given parameters. If no arguments are passed,
an empty list is created. If a typed variant is used, the parameters
are coerced to the appropriate type.

## pop
* `pop(@arr --> Mu)`
* `pop_i(@arr --> int)`
* `pop_n(@arr --> num)`
* `pop_s(@arr --> str)`

"Pop the last value off the end of @arr."
Return the value of @arr at its last bound position, and unbind @arr at that
position.

## push
* `push(@arr, Mu $v --> Mu)`
* `push_i(Array int @arr, int $v --> int)`
* `push_n(Array num @arr, num $v --> num)`
* `push_s(Array str @arr, str $v --> str)`
* `push_o($obj, str $v --> str)` `moar`

"Push $v onto the end of @arr."
Bind $v to @arr at the position at the end of @arr, i.e., the position that
is just after the last position of @arr that has been bound to.

Return value is not currently defined.

## setelems
* `setelems(@arr, int $i --> @arr)`

Set the size of `@arr` to `$i` elements. If less than the current size,
any elements after the new last position are unbound. If greater, the empty
elements at the end are bound with potentially VM specific null entries.

## shift
* `shift(@arr --> Mu)`
* `shift_i(@arr --> int)`
* `shift_n(@arr --> num)`
* `shift_s(@arr --> str)`
* `shift_o(@arr --> obj)` `moar`

"Shift the first value from the beginning of @arr."
Return the value of @arr at index 0, unbind @arr at index 0, and move all
other bindings of @arr to the index one below what they were previously bound
to.

## slice
* `slice(@arr, int $start_pos, int $end_pos --> @copy)`

Copy the elements in `@arr` starting at `$start_pos` and ending at `$end_pos`
and return the resulting list. If `$start_pos` or `$end_pos` is ```-n``` it will
translate into the ```n```th position relative to the end of the list.

```raku

my @a := 'a', 'b', 'c';
print($_ ~ ', ') for nqp::slice(@a, 0, -2);

# OUTPUT: «a, b»
```

Will throw an exception if either `$start_pos` or `$end_pos` is out-of-bounds
(after translation).

## splice
* `splice(@arr, @from, int $offset, int $count --> @arr)`

Remove the elements in `@arr` starting at `$offset`, for `$count` positions.
Replace them with all the elements from `@from`.

## unshift
* `unshift(@arr, Mu $v --> $v)`
* `unshift_i(@arr, int $v --> $v)`
* `unshift_n(@arr, num $v --> $v)`
* `unshift_s(@arr, str $v --> $v)`

"Shift $v into the beginning of @arr."
Bind $v to @arr at index 0, move all other bindings of @arr to the index one
above what they were previously bound to.
Return the $v on JVM.

# <a id="async"></a> Asynchronous

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

## asyncreadbytes `moar` `jvm`
* `asyncreadbytes($handle, $queue, $schedulee, $buf_type, $handle_type)`

Starts reading bytes from the handle. When a packet is received, a $buf_type
will be constructed and point to the received memory. An array will be
pushed to the queue containing the schedulee, a sequence number that starts
at 0, the buffer or just its type object on error, and an error string (type
object if no error). If EOF is reached, a sequence number of -1 is sent.
Cancel to stop reading.

## asyncwritebytes
* `asyncwritebytes($handle, $queue, $schedulee, $to_write, $handle_type)`

Writes a byte array to some handle capable of asynchronous operations. Once
the write is complete, the queue will be passed an array consisting of the
schedulee, an integer containing the number of bytes written or a type
object if there was an error, and a string containing an error or some type
object if none.

## cancel `moar` `jvm`
* `cancel(AsyncTask $handle)`

Takes something with the AsyncTask REPR and tries to cancel it, if it
is possible to do so. If it is somehow not possible (for example, the
operation already completed anyway), then nothing will happen. This is to
avoid race conditions.

## killprocasync
* `killprocasync($handle, $signal)`

## permit
* `permit(AsyncTask $handle, int $channel, int $permits)`

Takes something with the AsyncTask REPR (the `$handle` parameter) and
permits it to emit up to `$permits` more notifications. This is used
as a back-pressure mechanism for asynchronous tasks that produce a
stream of events, such as representing data arriving over a
socket. Some kinds of tasks may emit on multiple channels, for example
an asynchronous process may emit events for STDOUT (channel 1) and
STDERR (channel 2) if both are of interest. The `$channel` argument is
used to specify which channel is to get the permits if needed (use a
separate `permit` stament for each channel of interest).

If `$permits` is less than zero (e.g., `permit($task, $channel, -1)`,
then it means there is no limit to the emits.

If `$permits` is set to any value greater than or equal to zero, then:

* In the case unlimited emits were permitted previously, the permits will be
  set to the new value. If the new value is zero, then the reader will be
  stopped.
* Otherwise the number of permits will be incremented by the specified value.
  If the resulting number of permits allowed is greater than zero and the
  reader is not running, it will be started.

## signal `moar` `jvm`
* `signal($queue, $schedulee, int [nqp::cosnt::SIG_], $handle_type)`

Sets up a signal handler for the given signal. Whenever it occurs, an
array is pushed to the queue containing the schedulee and the signal number.
Cancel to stop handling it.

## spawnprocasync
* `spawnprocasync($queue, $args, $cwd, %env, $callbacks)`

Replaced *shell* and *spawn*. See t/nqp/111-spawnprocasync.t for an example of use.

## timer `moar` `jvm`
* `timer($queue, $schedulee, int $timeout, int $repeat, $handle_type)`

Starts a timer. If timeout is zero, the $schedulee is immediately pushed to
the queue. Otherwise, it is pushed after the timeout period. If repeat is
non-zero, after the initial timeout period it will then be pushed again at
the repeat interval. Returns an object of type $handle_type, which has a
AsyncTask REPR. Cancellation stops the timer ever repeating again.

## watchfile `moar` `jvm`
* `watchfile($queue, $schedulee, str $filename, $handle_type)`

Watches an individual file for changes. Pushes an array to the queue
when a change is detected, consisting of the schedulee, the filename that
changed if provided by the underlying watcher mechanism, a 0 if the file
changed, and a 1 if it was renamed. Cancel to stop watching.

# <a id="atomic"></a> Atomic

## atomicadd_i `moar`
* `atomicadd_i(NativeIntRef $i, int $value --> int)`

Takes an object with the `NativeRef` representation, which must point to an
integer of the machine's atomic operation size. Performs an atomic addition of
the provided value, which will be cast to the machine's atomic operation size
before the operation is performed. Returns the value at the memory location
**before** the addition was performed.

## atomicbindattr `moar`
* `atomicbindattr(Mu $obj, Mu:T $type, str $attributename, Mu $new_value)`

Atomically binds `$new_value` to the attribute of name `$attributename` of
object `$obj`, where the attribute was declared in type `$type`. The notes
in the `getattr` documentation also apply to `atomicbindattr`.


## atomicdec_i `moar`
* `atomicdec_i(NativeIntRef $i --> int)`

Takes an object with the `NativeRef` representation, which must point to an
integer of the machine's atomic operation size. Performs an atomic decrement
of the referenced integer. Returns the value **before** it was decremented.

## atomicinc_i `moar`
* `atomicinc_i(NativeIntRef $i --> int)`

Takes an object with the `NativeRef` representation, which must point to an
integer of the machine's atomic operation size. Performs an atomic increment
of the referenced integer. Returns the value **before** it was incremented.

## atomicload `moar`
* `atomicload(ObjectContainer $c)`

Takes an object which has a container spec set on it that knows how to do an
atomic load (that is, with appropriate barriering to ensure the latest value
is read). Performs the atomic load, and returns the loaded object.

## atomicload_i `moar`
* `atomicload_i(NativeIntRef $i --> int)`

Takes an object with the `NativeRef` representation, which must point to an
integer of the machine's atomic operation size. Performs an atomic load (that
is, with appropriate barriering to ensure the latest value is read).

## atomicstore `moar`
* `atomicstore(ObjectContainer $c, Mu $value)`

Takes an object which has a container spec set on it that knows how to do an
atomic load. Performs the atomic store, which may fail if the value being
stored does not, for example, meet type constraints. Evaluates to the stored
value. The store performs appropriate barriering to ensure the changed value
is "published".

## atomicstore_i `moar`
* `atomicstore_i(NativeIntRef $i, int64 $value)`

Takes an object with the `NativeRef` representation, which must point to an
integer of the machine's atomic operation size. Performs an atomic store (that
is, with appropriate barriering to ensure the changed value is "published").

## barrierfull `moar`
* `barrierfull()`

Performs a full memory barrier.

## cas `moar`
* `cas(ObjectContainer $cont, Mu $expected, Mu $new --> Mu)`

Takes an object which has a container spec set on it that knows how to do an
atomic compare and swap, and performs an atomic compare and swap operation.
The operation atomically compares the `$expected` object with what is currently
held in the container. If they are the same object, then it replaces it with
`$new`. If not, no change takes place. The original object stored in the
container is returned, which can be used with `eqaddr` to check if it is the
same as the `$expected` object. The container may perform type checks on the
`$new` object before it attempts the operation.

## cas_i `moar`
* `cas_i(NativeIntRef $i, int64 $expected, int64 $new --> int)`

Takes an object with the `NativeRef` representation, which must point to an
integer of the machine's atomic operation size. Casts the expected and new
parameters to the machine's atomic operation size, and then uses them to
perform an atomic compare and swap operation on the referenced integer. The
operation atomically compares the `$expected` value with the value currently
at the referenced location. If they are equal, it replaces the value with
`$new`. If they are not equal, nothing happens. The operation evaluates to the
value originally at the location (which can be compared with `$expected` to
see if the operation was a success).

# <a id="binarydata"></a> Binary Data

## readint `moar` `js`
* `readint(buffer $source, int $offset, int $flags --> int)`

Reads a signed integer at offset `$offset` from `$source` with size and
endianness specified by `$flags`. Returns that value, widened to a 64-bit int.

## readnum `moar` `js`
* `readnum(buffer $source, int $offset, int $flags --> num)`

Reads a floating point number at offset `$offset` from `$source` with the
size specified by `$flags`. Returns that value, widened to a 64-bit num.

## readuint `moar` `js`
* `readuint(buffer $source, int $offset, int $flags --> uint)`

Reads an unsigned integer at offset `$offset` from `$source` with size and
endianness specified by `$flags`. Returns that value, widened to a 64-bit uint.

## writeint `moar` `js`
* `writeint(buffer $target, int $offset, int $value, int $flags)`

Writes the signed integer `$value` at `$offset` into the buffer `$target`,
with the size and endianness specified by `$flags`.

## writenum `moar` `js`
* `writenum(buffer $target, int $offset, num $value, int $flags)`

Writes the floating point `$value` at `$offset` into the buffer `$target`.
Only 32-bit and 64-bit sizes are supported.

## writeuint `moar` `js`
* `writeuint(buffer $target, int $offset, uint $value, int $flags)`

Writes the unsigned integer `$value` at `$offset` into the buffer `$target`,
with the size and endianness specified by `$flags`.

# <a id="bit"></a> Bit

## bitand
* `bitand_i(int $l, int $r)`
* `bitand_s(str $l, str $r --> str)`
* `bitand_I(Int $l, Int $r, Mu:T $type --> Int)`

AND the bits in `$l` and `$r`.
`_I` variant returns an object of the given type.

## bitneg
* `bitneg_i(int $bits --> int)`
* `bitneg_I(Int $bits, Mu:T $type --> Int)`

Negate the bits in `$bits`.
`_I` variant returns an object of the given type.

## bitor
* `bitor_i(int $l, int $r)`
* `bitor_s(str $l, str $r --> str)`
* `bitor_I(Int $l, Int $r, Mu:T $type --> Int)`

OR the bits in `$l` and `$r`.
`_I` variant returns an object of the given type.

## bitshiftl
* `bitshiftl_i(int $bits, int $count --> int)`
* `bitshiftl_I(Int $bits, int $count, Mu:T $type --> Int)`

Signed left shift of `$bits` by `$count`.
`_I` variant returns an object of the given type.

## bitshiftr
* `bitshiftr_i(int $bits, int $count --> int)`
* `bitshiftr_I(Int $bits, int $count, Mu:T $type --> Int)`

Signed right shift of `$bits` by `$count`.
`_I` variant returns an object of the given type.

## bitxor
* `bitxor_i(int $l, int $r --> int)`
* `bitxor_s(str $l, str $r --> str)`
* `bitxor_I(Int $l, Int $r, Mu:T $type --> Int)`

XOR the bits in `$l` and `$r`.
`_I` variant returns an object of the given type.

# <a id="coercion"></a> Coercion

## coerce_in `moar`
* `coerce_in(int --> num)`

Coerce from int to num.

## coerce_is
* `coerce_is(int --> str)`

Coerce from int to str.

## coerce_ni `moar`
* `coerce_ni(num --> int)`

Coerce from num to int.

## coerce_ns `moar`
* `coerce_ns(num --> str)`

Coerce from num to str.

## coerce_si
* `coerce_si(str --> int)`

Coerce from str to int.

## coerce_sn `moar`
* `coerce_sn(str --> num)`

Coerce from str to num.

## intify `moar`
* `intify($o --> int)`

Coerce an object to int.

## numify `moar`
* `numify($o --> num)`

Coerce an object to num.

## stringify
* `stringify($o --> str)`

Coerce an object to str.

# <a id="conditional"></a> Conditional

## if
* `if(Block $condition, Block $then)`
* `if(Block $condition, Block $then, Block $else)`

If the `$condition` evaluates to a non-zero value, run the `$then` block.
If not, and an `$else` block is present, run that instead, if it's absent,
return result of `$condition`.

## unless
* `unless(Block $condition, Block $then)`
* `unless(Block $condition, Block $then, Block $else)`

If the `$condition` evaluates to 0, run the `$then` block.
If not, and an `$else` block is present, run that instead, if it's absent,
return result of `$condition`.

## with
* `with(Block $condition, Block $then)`
* `with(Block $condition, Block $then, Block $else)`

If the `$condition` evaluates to a defined value, run the `$then` block.
If not, and an `$else` block is present, run that instead, if it's absent,
return result of `$condition`.

## without
* `without(Block $condition, Block $then)`
* `without(Block $condition, Block $then, Block $else)`

If the `$condition` evaluates to an **undefined** value, run the `$then` block.
If not, and an `$else` block is present, run that instead, if it's absent,
return result of `$condition`.

# <a id="context"></a> Context Introspection

## bindlex `moar` `jvm`
* `bindlex(str $name, Mu $value)`
* `bindlex_i(str $name, int $value)`
* `bindlex_n(str $name, num $value)`
* `bindlex_s(str $name, str $value)`

Binds $value to the lexical specified by name and type. Searching in the
outer frames, starting at the current.
An error is thrown if it does not exist or if the type is incorrect.

## bindlexdyn
* `bindlexdyn(str $name, Mu $value)`

Binds $value to the contextual with the specified name, searching for it in
the call-chain, starting at the calling frame.

## captureposelems
$ `captureposelems($capture --> int)`

Returns the number of positional elements in a capture that was saved with
`savecapture`

## ctx
* `ctx(--> Context)`

Return the object representing the current context.

## ctxcaller
* `ctxcaller(Context $ctx)`

Given a context, return the caller context, or null.

## ctxlexpad
* `ctxlexpad(Context $ctx)`

Given a context, return its lexpad

## ctxouter
* `ctxouter(Context $ctx)`

Given a context, return the outer context, or null.

## curlexpad
* `curlexpad()`

Return the current lexpad.

## getlex `moar` `jvm`
* `getlex(str $name)`
* `getlex_i(str $name)`
* `getlex_n(str $name)`
* `getlex_s(str $name)`

Looks up the lexical with the specified name and the specified type.
Searching in the outer frames, starting at the current.
An error is thrown if it does not exist or if the type is incorrect.

## getlexcaller
* `getlexcaller(str $name)`

Looks up the lexical with the specified name, starting at the calling frame.
It checks all outer frames of the caller chain.

## getlexdyn
* `getlexdyn(str $name)`

Looks up the contextual with the specified name in the caller chain,
starting at the calling frame.

## getlexouter
* `getlexouter(str $name)`

Looks up the lexical with the specified name and the specified type.
Searching in the outer frames, starting at outer.

## getlexref `moar` `jvm`
* `getlexref_i(str $name)`
* `getlexref_n(str $name)`
* `getlexref_s(str $name)`

Looks up the native type lexical with the specified name and the specified type.
Searching in the outer frames, starting at the current.
An error is thrown if it does not exist or if the type is incorrect.

Lexicalref is a mechanism that allows us to treat a native value stored in
a lexpad as if it were a read-writable container we can pass around. the
lexicalref that gets created holds a reference to the frame in question and
any access to it acts like `getlex` from the frame it originated in

## getlexrel
* `getlexrel(Mu $context, str $name)`

Looks up the lexical with the specified name and the specified type.
Searching in the outer frames, starting at the given $context.

## getlexrelcaller
* `getlexrelcaller(Mu $context, str $name)`

Looks up the lexical with the specified name, starting at the given
$context. It checks all outer frames of the caller chain.

## getlexreldyn
* `getlexreldyn(Mu $context, str $name)`

Looks up the contextual with the specified name in the caller chain,
starting at the given $context.

## lexprimspec
* `lexprimspec(LexPad $pad, str $name --> int)`

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

# <a id="control"></a> Loop/Control

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

```raku

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

# <a id="exception-handling"></a> Exception Handling

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

# <a id="extern"></a> External Command

## execname `moar` `js`
* `execname(--> str)`

It's used to implement `$*EXECUTABLE` in Raku, and is the name of the
current "executable". So if you run `./raku-m ....` then it'll be the
`./raku-m`. It's actually set at present by passing a `--execname=` argument
to MoarVM, since `raku` is actually a shell script. But when we do get to
providing a fake executable for `raku` instead, then it'd just initialize it
to `argv[0]`.

# <a id="filedirnet"></a> File / Directory / Network

## chdir
* `chdir(str $path --> str)`

Change the working directory to the given path.

## chmod
* `chmod(str $path, int $mode --> int)`

Change the permissions of `$path` to the posix style permissions of `$mode`.
Returns 0 on success, throws an exception on failure.

## closedir
* `closedir(Handle $)`

Close the given directory handle.

## copy
* `copy(str $from, str $to --> int)`

Copy file `$from` to file `$to`. Return 0 on success, throw an exception
on failure.

## cwd
* `cwd(--> str)`

Return a string containing the current working directory.

## fileexecutable
* `fileexecutable(str $str --> int)`

If the specified filename refers to an executable file, returns 1.
If not, returns 0. If an error occurs, return -1.

## fileislink
* `fileislink(str $str --> int)`

If the specified filename refers to a symbolic link, returns 1.
If not, returns 0. If an error occurs, return -1.

## filereadable
* `filereadable(str $str --> int)`

If the specified filename refers to a readable file, returns 1.
If not, returns 0. If an error occurs, return -1.

## filewritable
* `filewritable(str $str --> int)`

If the specified filename refers to a writeable file, returns 1.
If not, returns 0. If an error occurs, return -1.

## gethostname
* `gethostname(str $str --> str)`

Returns the hostname of the system where it is run.

## getport `moar` `jvm`
* `getport($obj --> int)`

If the specified object is an IO::Handle, return the integer port
number the object is listening on. If an error occurs, return -1.

## link
* `link(str $before, str $after --> int)`

Create a link from `$after` to `$before`

## lstat
* `lstat(str $path, int $code --> int)`

Same as stat, but internally uses the OS's lstat() function, which does *not*
follow symlinks.

## lstat_time
* `lstat_time(str $path, int $code --> num)`

Same as stat_time, but internally uses the OS's lstat() function, which does
*not* follow symlinks.

## mkdir
* `mkdir(str $name, int $mode --> int)`

Create a directory of the given name. Use posix-style mode
on non-windows platforms. Returns 0, or throws an exception.

## nextfiledir
* `nextfiledir(handle $iterator)`

Given the result of an opendir, return the next path from that directory.
When no more items are available, return a null string. (check with `null_s`)

## opendir
* `opendir(str $path --> Mu)`

Return a directory handle on the given directory path. Throw an exception
if `$path` is not a directory.

## readlink
* `readlink(str $path -> str)`

Given a path that is a link, return the target path.
Throw an exception if the argument does not resolve to a link.

## rename
* `rename(str $from, str $to --> int)`

Rename file `$from` to file `$to`. Return 0 on success, throw an exception
on failure.

## rmdir
* `rmdir(str $path --> int)`

Delete the given directory $path. Returns 0 on success, -2 if the
directory didn't exist. May throw an exception.

## stat
* `stat(str $path, int $code --> int)`

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
* `stat_time(str $path, int $code --> num)`

Given a path and one of the `STAT_*TIME` codes, return that time attribute as
a num, using the OS's stat() function.

## symlink
* `symlink(str $before, str $after)`

Create a symbolic link from `$after` to `$before`

## unlink
* `unlink(str $path --> int)`

Delete the given file $path. Returns 0 on success, -2 if the file
didn't exist. May throw an exception.

# <a id="hash"></a> Hash

## atkey
* `atkey(%hash, str $key --> Mu)`
* `atkey_i(%hash, str $key --> int)`
* `atkey_n(%hash, str $key --> num)`
* `atkey_s(%hash, str $key --> str)`
* `atkey_u(%hash, str $key --> uint)` `moar`

Return the value of %hash at key $key.

_Note, there's no bindkey_u yet since at the moment atkey_u is only used for getting values from the lexpad_

## bindkey
* `bindkey(%hash, str $key, Mu $v --> $v)`
* `bindkey_i(%hash, str $key, int $v --> $v)`
* `bindkey_n(%hash, str $key, num $v --> $v)`
* `bindkey_s(%hash, str $key, str $v --> $v)`
* `bindkey_o(%hash, str $key, obj $v --> $v)` `moar`

Bind key $key of %hash to $v and return $v.

## deletekey
* `deletekey(%hash, str $key --> %hash)`

Delete the given key from %hash.

## existskey
* `existskey(%hash, str $key --> int)`

Return 1 if %hash has key $key bound to something, otherwise 0.

## hash
* `hash(... --> Mu)`

Return a hash. The first argument is a key, the second its value, and so on.
Be sure to pass an even number of arguments, a VM specific error may occur
otherwise.

## iterator
* `iterator(hash)`

Returns an iterator object to iterate over a hash's items.  For example:
```raku
my $iter := nqp::iterator(%hash);
while $iter {
    my $pair := nqp::shift($iter);
    say(nqp::iterkey_s($pair), ' => ', nqp::iterval($pair));
}
```

You can also use `nqp::iterator()` to iterate over a list, which is
functionally equivalent to cloning the list and not having to know
which form of `shift` to have to use.
```raku
my $list := nqp::list('a', 'b', 'c');
my $iter := nqp::iterator($list);

while $iter {
    say(nqp::shift($iter));
}
```
Using `iterator` this way proved to be not very well optimizable,
so this form will probably be deprecated in the future.  Depending
on circumstances one could use `clone` instead, or use an index
variable:
```raku
my $list := nqp::list('a', 'b', 'c');
my int $i = -1;

while ++$i < nqp::elems($list) {
    say(nqp::atpos($list,$i));
}
```

## iterkey
* `iterkey_s($pair --> str)`

Returns the key associated with the given key-value pair.
For example:

```raku
for %hash {
    say(nqp::iterkey_s($_), ' => ', nqp::iterval($_));
}
```
Or alternately:
```raku
my $iter := nqp::iterator(%hash);
while $iter {
    my $pair := nqp::shift($iter);
    say(nqp::iterkey_s($pair), ' => ', nqp::iterval($pair));
}
```

## iterval
* `iterval($pair --> Mu)`

Returns the value associated with the given key-value pair.

# <a id="hll-specific"></a> HLL-Specific

## bindhllsym / bindcurhllsym
* `bindhllsym(str $hllname, str $symname, $value)`
* `bindcurhllsym(str $symname, $value)`

Store a value in a specified HLL's symbol hash at a given key; the `cur`
variant uses the hll the code that has the op in it was compiled for.

## gethllsym / getcurhllsym
* `gethllsym(str $hllname, str $symname --> Mu)`
* `getcurhllsym(str $symname --> Mu)`

Retrieve a value from a specified HLL's symbol hash at a given key; The `cur`
variant uses the hll the code that has the op in it was compiled for.

## hllbool
* `hllbool(int -> obj)`

If passed 0, return a HLL specific Boolean false value,
otherwise, a true one. For Raku, this maps to ```Bool::False```
and ```Bool::True```, respectively.

## hllboxtype
* `hllboxtype_i(Mu)`
* `hllboxtype_n(Mu)`
* `hllboxtype_s(Mu)`

Ignores any args passed and returns the HLL specific type
objects for each basic type. For Raku, this maps to ```Int```,
```Num```, and ```Str```.

## hllhash `moar` `jvm`
* `hllhash(Mu)`

Returns HLL specific type object for a hash.
Ignores optional argument.

## hlllist `moar` `jvm`
* `hlllist(Mu)`

Returns HLL specific type object for a list.
Ignores optional argument.

## usecompilerhll / usecompileehll
* `usecompilerhllconfig`
* `usecompileehllconfig`

Increases or decreases the "compilee depth" value. When the compilee depth is
greater than one, every hll access will hit the "compilee's HLL config",
otherwise every access will hit the "compiler's HLL config".

This serves, for example, to seperate a running NQP compiler from an NQP
compiler it's compiling, when compile-time evaluation happens.

# <a id="io"></a> Input/Output

## closefh
* `closefh(Handle $fh)`

Close the filehandle.

## eoffh
* `eoffh(Handle $fh --> int)`

Return 1 if this filehandle is at the end of the file, otherwise 0.

## filenofh
* `filenofh(Handle $fh --> int)`
Returns the filehandle number. Not usable on the JVM (always returns -1).

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

    * `0` - from beginning of file
    * `1` - from current position
    * `2` - from end of file

## tellfh
* `tellfh(Handle $fh --> int)`

Return current access position for an open filehandle.

## writefh
* `writefh(Handle $fh, Mu $str --> int)`

Output the given object to the filehandle. Returns the number of bytes written.

# <a id="logic"></a> Relational / Logic

## cmp
* `cmp_i(int $l, int $r --> int)`
* `cmp_n(num $l, num $r --> int)`
* `cmp_s(str $l, str $r --> int)`
* `cmp_I(Int $l, Int $r --> int)`

Compare two values, returns -1 if $l is greater than $r, 0 if they are equal,
and 1 if $r is greater than $l.

## eqat
* `eqat(str $haystack, str $needle, int $pos --> int)`

Return 1 if the string `$haystack` has the string `$needle` at position `$pos`,
otherwise return 0.

## eqatic
* `eqatic(str haystack, str $needle, int $pos --> int)`
Case-insensitive `eqat`

## eqaticim `moar` `js`
* `eqaticim(str haystack, str $needle, int $pos --> int)`
Case-insensitive and ignore-mark `eqat`

## eqatim `moar` `js`
* `eqatim(str haystack, str $needle, int $pos --> int)`
Ignore-mark `eqat`, NFD decomposes and matches the base codepoint

Example: `eqat("á", "a", 0) → 1`

## falsey
* `falsey($a --> int)`

Return 0 if the parameter has a truthy value, 1 otherwise.

## iseq
* `iseq_i(int $l, int $r --> int)`
* `iseq_n(num $l, num $r --> int)`
* `iseq_s(str $l, str $r --> int)`
* `iseq_I(Int $l, Int $r --> int)`
* `iseq_snfg(str $l, str $r --> int)` `js`

Return 1 if the two parameters are equal, 0 otherwise.

`iseq_snfg` is a JS specific opcode that first normalizes string arguments to NFC.

## isge
* `isge_i(int $l, int $r --> int)`
* `isge_n(num $l, num $r --> int)`
* `isge_s(str $l, str $r --> int)`
* `isge_I(Int $l, Int $r --> int)`

Return 1 if $l is greater than or equal to $r, otherwise 0.

## isgt
* `isgt_i(int $l, int $r --> int)`
* `isgt_n(num $l, num $r --> int)`
* `isgt_s(str $l, str $r --> int)`
* `isgt_I(Int $l, Int $r --> int)`

Return 1 if the two parameters are equal if $l is greater than $r, otherwise 0.

## isle
* `isle_i(int $l, int $r --> int)`
* `isle_n(num $l, num $r --> int)`
* `isle_s(str $l, str $r --> int)`
* `isle_I(Int $l, Int $r --> int)`

Return 1 if $l is less than or equal to $r, otherwise 0.

## islt
* `islt_i(int $l, int $r --> int)`
* `islt_n(num $l, num $r --> int)`
* `islt_s(str $l, str $r --> int)`
* `islt_I(Int $l, Int $r --> int)`

Return 1 if $l is less than $r, otherwise 0.

## isne
* `isne_i(int $l, int $r --> int)`
* `isne_n(num $l, num $r --> int)`
* `isne_s(str $l, str $r --> int)`
* `isne_I(Int $l, Int $r --> int)`
* `isne_snfg(str $l, str $r --> int)` `js`

Return 1 if the two parameters are not equal, otherwise 0.

`isne_snfg` is a JS specific opcode that first normalizes string arguments to NFC.

## not
* `not_i(int $val --> int)`

Return 1 if `$val` is 0, 0 otherwise.

# <a id="nativecall"></a> NativeCall

## buildnativecall
* `buildnativecall(obj &routine, str $lib, $symbol, str $conv, obj $arg_info, obj $ret_info -> int jit)`

This opcode connects an nqp routine to a native function.  The routine must have an attribute with
NativeCall REPR as a box target.

Arguments are the routine itself, the name of the native library, the name of the
symbol representing the native function, the calling convention, argument information and a hash with
type information for the return type. It returns 1 if the call can be JITed and 0 otherwise.
The call convention will usually be an empty string. arg_info is an array containing a hash for each
parameter. The hashes contain the typeobj, rw, type (type code) and optionally a free_str flag for Str
parameters and a similar structure in callback_args for callback parameters for Callable parameters
The ret_info hash has similar keys with typeobj, type and free_str.

ret-info also has some additional fields not strictly related to return type: entry_point, resolve_lib_name and resolve_lib_name_arg.

resolve_lib_name is optional and contains a code object. This gets called with resolve_lib_name_arg to
resolve this name to the actual name or path of the library to be loaded. This is used for relocatability
of repositories and native libraries they contain (it keeps the absolute paths out of precomp files)

## nativecall
* `nativecall(obj $return-type, obj $routine, @args -> obj)`

Invoke native code. It takes a
return type, the HLL sub itself and an array containing the arguments and returns the result.

## nativecallcast
* `nativecallcast(obj $type, obj $cthing -> obj)`

Given a C-based object, cast it to the given type, and return the new object.

## nativecallglobal
* `nativecallglobal(str $lib, str $symbol, obj $type -> obj)`

Given a C-library filename, a symbol name, and an object type, return an object that
wraps the C variable.

## nativecallinvoke
* `nativecallinvoke(obj $return-type, obj $routine, @args -> obj)` `moar`

Low level version of nativecall(). Decontainerized values are required
in the arguments array.

## nativecallrefresh
* `nativecallrefresh(obj $cthing)`

Refresh the C-based data backing the Raku object. This op should only be used if changes have been made to the C-data, and these changes are not being reflected in the Raku object.

## nativecallsizeof
* `nativecallsizeof(obj $cthing -> int)`

Return the size in bytes of the given C-based object. Works for both
simple values like different sized integers, but also structs.
# <a id="numeric"></a> Numeric

## base
* `base_I(Int $i, int $radix --> str)`

Returns a string representing the integer `$i` in base `$radix`

## ceil
* `ceil_n(num $n --> num)`

Return the ceiling of a number.

## exp
* `exp_n(num $exponent --> num)`

Return the value of `e` raised to $exponent.

## expmod
* `expmod_I(Int $base, Int $exponent, Int $modulus, Mu:T $type --> Int)`

Return a bigint that is `$base` raised to `$exponent` modulus `$modulus`.
`_I` variant returns an object of the given type.

## floor
* `floor_n(num $n --> num)`

Return the floor of a number.

## inf
* `inf(--> num)`

Return infinity.

## log_n
* `log_n(num $n --> num)`

Return the natural logarithm (base 𝑒) of a number.

## nan
* `nan(--> num)`

Return NaN.

## neginf
* `neginf(--> num)`

Return negative infinity.

## pow
* `pow_i(int $base, int $exponent --> int)`
* `pow_n(num $base, num $exponent --> num)`
* `pow_I(Int $base, Int $exponent, Mu:T $type_num, Mu:T $type_bigint --> Int)`

Return the value of $base raised to $exponent;
`_I` variant returns an object of `$type_num` for negative exponents,
and of type `$type_bigint` for positive exponents.

## rand
* `rand_n(num $n --> num)`
* `rand_i(int $i, Mu:T $type --> int)` `moar`
* `rand_I(Int $i, Mu:T $type --> Int)`

Returns a psuedo-random bigint up to the value of the
given number.
`_I` variant returns an object of the given type.

## sqrt
* `sqrt_n(num $n--> num)`

Return the square root of the given num.

## srand
* `srand(int $n)`

Sets and returns seed number for `nqp::rand_*` variants. Decimal numbers will be silently
truncated, `nqp::srand(1)` and `nqp::srand(1.1)` are the same so always pass `nqp::srand`
an integer.

# <a id="objects"></a> Objects

## attrinited
* `attrinited(Mu $obj. Mu:T $type, str $attributename --> int)`

Test if the attribute of name `$attributename` of object `$obj`
has been bound, see `bindattr`. Note that any access to the atribute
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
* `bindcomp(str $base-class, Mu $compiler --> Mu)`

Registers `$compiler` as the compiler for the language named `$base-class`, as in:

    my $lang = My::Lang::Compiler.new();
    nqp::bindcomp('My::Lang', $lang);

In general, though, `$lang` will inherit from `HLL::Compiler`, and the above
will be achieved via:

    $lang.language('My::Lang');

## call
* `call()`

This method is not documented yet.

Example:

    nqp::call(nqp::getlexcaller('&say'), 'foo')


## callmethod
* `callmethod(Mu $obj, str $methodname, *@pos, *%named --> Mu)`

Uses `findmethod` to locate method `$methodname` on object `$obj`, and `call`
to invoke the method with positional arguments `*@pos` and named arguments
`*%named`.

Example:

    class A { method x($a, $b, :$c) { say("$a $b $c") } }

    nqp::callmethod(A, 'x', '4', '2', c => 'foo');
    # same as: A.x(4, 2, c => 'foo')

## can
* `can(Mu $obj, str $method --> int)`

If the object has a method of the given name, return 1. Otherwise, return 0.

Returns 1 if ``$obj`` object has FALLBACK method.

## clone
* `clone(Mu $obj --> Mu)`
* `clone_nd(Mu $obj --> Mu)`

Return a clone of the passed in object.

The `_nd` variant does not decontainerize the object.

## create
* `create(Mu:T $type --> Mu)`

Returns a newly allocated instance of type `$type`.

## eqaddr
* `eqaddr(Mu $l, Mu $r --> int)`

Returns 1 if the objects are the same object in the underlying VM,
0 otherwise.

## findmethod
* `findmethod(Mu $obj, str $method --> Mu)`

If the object has a method of the given name, return it. Otherwise,
throw an exception.

## getattr
* `getattr(Mu $obj, Mu:T $type, str $attributename --> Mu)`
* `getattr_i(Mu $obj, Mu:T $type, str $attributename --> int)`
* `getattr_n(Mu $obj, Mu:T $type, str $attributename --> num)`
* `getattr_s(Mu $obj, Mu:T $type, str $attributename --> str)`

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
* `getcomp(str $base-class --> Mu)`

Returns the compiler class registered for that `$base-class`.
See `bindcomp` for more information.

## how
* `how(Mu $obj --> Mu)`
* `how_nd(Mu $obj --> Mu)`

NQP equivalent for Raku's `$obj.HOW`.

The `_nd` variant does not decontainerize the object.

## rebless
* `rebless(Mu $obj, Mu:T $type --> Mu)`

Convert `$obj` to be an object of the new `$type`.

## reprname
* `reprname(Mu $obj --> str)`

Return the name of the REPR for the given object.

## setwho
* `setwho(Mu $obj, Mu $who --> Mu)`

Replace `$obj`'s WHO. Return `$obj`.

## tryfindmethod
* `tryfindmethod(Mu $obj, str $method --> Mu)`

If the object has a method of the given name, return it. Otherwise,
return Mu.

## what
* `what(Mu $obj --> Mu)`
* `what_nd(Mu $obj --> Mu)`

NQP equivalent for Raku's `$obj.WHAT`.

The `_nd` variant does not decontainerize the object.

## where
* `where(Mu $obj --> int)`

Return the memory address for this `$obj`.  Please note that this is **NOT**
a constant value for a given object.  Please use `objectid` for that.

## who
* `who(Mu $obj --> Mu)`

NQP equivalent for Raku's `$obj.WHO`.

# <a id="parametric-type-extensions"></a> SixModel Parametric Extensions

## setparameterizer
* `setparameterizer(type, parameterizer)`

Makes a type as being parametric, and configures the code needed to
parameterize it.

## setparameterizetype
* `parameterizetype(type, parameter_array)`

Takes a parameterizable type and an array of parameters. Looks up and returns
any existing matching parameterization. If it does not exist, invokes the
parameterization producer for the parametric type, installs that in the lookup,
and returns it. Note that the array is snapshotted, for the benefits of the
type specializer.

## typeparameterat
* `typeparameterat(type, idx)`

Equivalent to nqp::atpos(nqp::typeparameters(type), idx), except much easieri
for type specialization to understand and deal with and avoids an array
construction.

## typeparameterized
* `typeparameterized(type)`

If the type specified is a parameterization of some other type, then returns
that type. Otherwise, returns null.

## typeparameters
* `typeparameters(type)`

Gets the type parameters used to parameterize the type. Throws an exception
if the type is not parametric.

# <a id="serialization-context"></a> Serialization context

## createsc
* `createsc($handle-string)`

Creates a serialization context and returns it.

## deserialize
* `deserialize()`

## forceouterctx
* `forceouterctx($code-object, $context)`

Sets the code object's outer to the context's frame and also the code object's
static frame's outer to the context's static frame.

Used to embed a separately compiled code object in a given context, e.g. to
give an EVALed code a surrounding lexical scope.

## freshcoderef
* `freshcoderef($code-object)`

Creates a clone of the given code object and a clone of its static frame and
connects the two. Returns the clone of the code object. Used for creating a
fresh copy of a statically compiled piece of code so each of some high level
code object can gets its own low level executable.

## getobjsc
* `getobjsc($obj)`

## markcodestatic
* `markcodestatic($code-object)`

Marks the code as "static" meaning it's not a closure and thus no closure will
be serialized.

## neverrepossess
* `neverrepossess($obj)`

Prevents the object from ever getting repossessed. Repossession means that an
object from a different serialization context, i.e. something we got from
loading a module, gets added to our own serialization context as well. This is
done to keep modifications to the object. Of course if different versions of
the same object are loaded from different serialization contexts, there's a
conflict that requires resolution -> resolve_reposession_conflicts. In the
common case of the object being a Stash, we can just merge the different
versions unless the keys overlap. For some objects we do not want repossession
even if they were modified, i.e. they were only needed for compilation and/or
there wouldn't be a way to resolve conflicts.

## popcompsc
* `popcompsc($sc)`

## pushcompsc
* `pushcompsc($sc)`

## scgetdesc
* `scgetdesc($sc)`

Get the descriptor set by `scsetdec`

## scgethandle
* `scgethandle($sc)`

Get the handle string used by `createsc` to create the SC `$sc`

## scgetobjidx
* `scgetobjidx()`

## scobjcount
* `scobjcount()`

## scsetcode
* `scsetcode($sc, $index, $code-object)`

Adds $code-object to the serialization context at block index $index

## scsetdesc
* `scsetdesc($sc, $descriptor-string)`

Set a descriptor for `$sc` created by `createsc()`

## scsetobjc
* `scsetobj($sc, $idx, $obj)`

## serialize
* `serialize()`

## setobjsc
* `setobjsc($obj, $sc)`

# <a id="stream-decoding"></a> Stream Decoding

## decoderaddbytes
* `decoderaddbytes(Decoder $dec, VMArray $blob)`

Adds bytes to the decoder's internal buffer. Must have VMArray REPR, and
must have elements of type `int8` or `uint8`.

## decoderbytesavailable
* `decoderbytesavailable(Decoder $dec --> int)`

Returns the number of undecoded bytes available inside of the decoder. This is
useful in the case that chunks of the input should also be pulled out as bytes,
and may be useful for doing tuning or pre-fetching in various other cases. Note
that the result does not include bytes that were decoded but have not yet been
taken as characters, or that were decoded to code points that are still in the
normalization buffer. Thus the result is only accurate before reading any chars
or after `decodertakechars` or after `decodertakeline` with `$incomplete-ok`
passed a non-zero value.

## decoderconfigure
* `decoderconfigure(Decoder $dec, str $encoding, VMHash $config)`

Configures the decoder with an encoding. The `$config` hash parameter is
currently unused, and an empty hash or an `nqp::null` should be passed.

## decoderempty
* `decoderempty(Decoder $dec --> int)`

Returns 1 if the decoder is empty (this means that there are no undecoded
bytes, no decoded but untaken chars, and nothing in the normalization buffer).
Otherwise returns 0.

## decodersetlineseps
* `decodersetlineseps(Decoder $dec, VMArray $separators)`

Sets the line separators to be used for line-based reading. It should be
a string array (`nqp::list_s(...)`).

## decodertakeallchars
* `decodertakeallchars(Decoder $dec --> str)`

Decodes all remaining undecoded bytes, and flushes the normalization buffer.
Returns an NFG string consisting of the decoded characters. This is suitable
to use when the end of a stream of bytes to decode has been reached (for
example, EOF when reading a file).

## decodertakeavailablechars
* `decodertakeavailablechars(Decoder $dec -->int)`

Decodes all remaining undecoded bytes. Returns an NFG string consisting of the
decoded characters. Does not flush the normalization buffer. This is suitable
when performing streaming decoding, and a later byte buffer may provide a
combining character.

## decodertakebytes
* `decodertakebytes(Decoder $dec, VMArray $blob_type, int $bytes)`

Takes up to `$bytes` bytes from the decode stream's undecoded buffer, makes an
instance of the `$blob_type`, and places the bytes in it. The same set of
caveats about decoded-but-untaken bytes in `decoderbytesavailable` apply.

## decodertakechars
* `decodertakechars(Decoder $dec, int $num-chars --> str)`

Returns an NFG string consisting of `$num-chars` graphemes, provided that
many are available after decoding. If less than `$num-chars` characters
can be decoded, then `nqp::null_s` will be returned. Note that a
decoded codepoint at the end of a byte buffer may not be available as a
character if the encoding allows the next character to be a combining
character.

## decodertakeline
* `decodertakeline(Decoder $dec, int $chomp, int $incomplete-ok --> str)`

Decodes bytes until a line separator is reached, or all bytes have been
decoded. If `$incomplete-ok` is zero and the separator was not found, then
`nqp::null_s` will be returned. (Thus, `$incomplete-ok` is appropriate only
when knowing that the end of the stream has been reached.) If `$chomp` is
non-zero, then the separator--if present--will not be included in the
resulting string.

# <a id="string"></a> String

## chars
* `chars(str $str --> int)`
* `charsnfg(str $str --> int)` `js`

Return the number of characters in the string.

## chr
* `chr(int $codepoint --> str)`

Given a unicode codepoint, return a str containing its character. Will
throw an exception on invalid codepoints.

## codepointfromname
* `codepointfromname(str $name --> int)`

Returns the codepoint for the given unicode character name, or -1 if no
match was found.

## codes
* `codes(str $str --> int)`

Return the number of codepoints in the string.

## concat
* `concat(str $l, str $r --> str)`

Return a string that is the concatenation of the two passed in strings.

## decode
* `decode($buffer, str $encoding --> str)`

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
* `escape(str $str --> str)`

Given a string, return an escaped version that replaces the following
characters with their escaped equivalents: "\\", "\b", "\n", "\r",
"\t", "\f", "\"", "\a", and "\e".

## fc
* `fc(str $str --> str)`

Returns a Unicode "fold case" operation copy of string, suitable for doing
caseless string comparisons.

## findcclass
* `findcclass(int $class, str $str, int $i, int $count --> int)`

Search the string starting at the `$i`th character, for `$count` characters.
Return the position of the first character that is of the specified class
(`nqp::const::CCLASS_*`). If no characters match, return the position of the
first character after the given range, or the length of the string, whichever
is smaller.

## findnotcclass
* `findnotcclass(int $class, str $str, int $i, int $count --> int)`

Search the string starting at the `$i`th character, for `$count` characters.
Return the position of the first character that is not of the specified class
(`nqp::const::CCLASS_*`). If no characters match, return the position of the
first character after the given range, or the length of the string, whichever
is smaller.

## flip
* `flip(str $str --> str)`

Return a string with the characters of `$string` in reverse order.

## index
* `index(str $haystack, str $needle --> int)`
* `index(str $haystack, str $needle, int $pos --> int)`

Return the position in `$haystack` at which `$needle` appears, or -1
if `$needle` does not appear. Begin searching at position `$pos` if specified,
or at 0, otherwise.

* `indexfrom(str $haystack, str $needle, int $pos)` `moar` `jvm` _Internal_

`index` is converted to this internal opcode by the compiler.

## indexic `moar`
* `indexic(str $haystack, str $needle, int $pos --> int)`

This op has the same arguments and functionality as nqp::index,
except it is case-insensitive. For now we only have it under MoarVM,
but the plan is to support it on other platforms as well.

On MoarVM uses proper Unicode foldcase type comparison.

## indexicim `moar`
* `indexicim(str $haystack, str $needle, int $pos)`

Ignorecase and ignoremark `index`

## indexim `moar`
* `indexim(str $haystack, str $needle, int $pos --> int)`

Like index but decomposes and matches against the base character.

Example: `indexim("bcá", "a", 0) → 2`

## iscclass
* `iscclass(int $class, str $str, int $i --> int)`
* `iscclassnfg(int $class, str $str, int $i --> int)` `js`

Return 1 if the `$i`th character of $str is of the specified class,
(`nqp::const::CCLASS_*`), 0 otherwise.

## join
* `join(str $delim, @arr --> str)`

Joins the separate strings of `@arr` into a single string with
fields separated by the value of EXPR, and returns that new string.

## lc
* `lc(str $str --> str)`

Return lowercase copy of string.

## normalizecodes
* `normalizecodes($codes-in, int $normalization, $codes-out)`

Takes the codepoints in $codes-in, applies the specified normalization, and
places the result into the $codes-out array. Both arrays of codepoints must
be 32-bit integer arrays.

## numify

```raku
use nqp; say nqp::numify(nqp::unbox_s("42e0"));
```

Converts a string to one of the numeric types. Only used in HLL space, as in pure
nqp `+"42e0"` performs the same numification. The op can be used, for example, to parse a Num
out of a string.

## ord
* `ord(str $str --> int)`
* `ord(str $str, int $i --> int)`

Return the unicode codepoint of the first character in `$str`, or
at the `$i`th character, if it's specified.

* `ordat(str $str, int $i --> int)` _Internal_
* `ordfirst(str $str --> int)` `moar` `jvm` _Internal_

`ord` is converted to these internal opcodes by the compiler.

## ordbaseat
* `ordbaseat(str $str, int $pos --> int)`

Returns the Unicode codepoint which is the base (non extend/prepend character
at that position). If it is a degenerate, and contains no base character,
it then returns the first codepoint in that grapheme.

## radix
* `radix(int $radix, str $str, int $pos, int $flags --> Mu)`
* `radix_I(int $radix, str $str, int $pos, int $flags, Mu:T $type --> Mu)`

Convert string $str into a number starting at offset $pos and using radix $radix.
The result of the conversion returns an array with

    out[0] = converted value
    out[1] = $radix ** $number-of-digits-converted
    out[2] = offset after consuming digits, -1 if no digits consumed

The opcode skips single underscores between pairs of digits, per the Raku
specification.

The $flags is a bitmask that modifies the parse and/or result:

    0x01: negate the result (useful if you've already parsed a minus)
    0x02: parse a leading +/- and negate the result on -
    0x04: parse trailing zeroes but do not include in result
          (for parsing values after a decimal point)

## replace
* `replace(str $str, int $offset, int $count, str $replacement --> str)`

Return a copy of `$str` where the characters starting at `$offset` for `$count`
characters have been replaced with the `$replacement` string.

## rindex
* `rindex(str $haystack, str $needle --> int)`
* `rindex(str $haystack, str $needle, int $pos --> int)`

Searching backwards through the `$haystack`, return the position at which
`$needle` appears, or -1 if it does not. Begin searching at `$pos` if
specified, otherwise start from the last position.

* `rindexfrom(str $haystack, str $needle, int $pos)` `moar` `jvm` _Internal_
* `rindexfromend(str $haystack, str $needle)` `jvm` _Internal_

`rindex` is converted to this internal opcode by the compiler.

## split
* `split(str $delimiter, str $string --> Mu)`

Splits the string `$string` into an array of elements; these elements are
the substrings between delimiters in the original string.

If the original string begins or ends with the delimiter, the resulting
array will begin or end with an empty element.

## sprintf
* `sprintf(str $pattern, @values --> str)`

Returns a string formatted by the printf conventions similar to Perl 5 / C.
Machine sized numeric types, their limits and therefore overflows are not
implemented though.

## sprintfaddargumenthandler
* `sprintfaddargumenthandler(Mu $handler)`

Lets you register a handler-instance that supports the sprintf op when it
has to numify custom types. This handler has to provide two methods, `mine`
and `int`. `mine` gets the the value in question and returns true if this
handler is in charge for this type, false otherwise.
The method `int` does the conversion for patterns like %d.

```raku
my class MyHandler {
    method mine($x) { $x ~~ MyType }
    method int($x) { $x.Int }
}
```

## sprintfdirectives
* `sprintfdirectives(str $pattern)`

This takes the same pattern as `sprintf` does, and computes the needed
value-count that `sprintf` would have to provide.

## strfromcodes
* `strfromcodes($codes --> str)`

Returns an (NFG) string built from the specified codepoints, which must be
provided as a 32-bit integer array.

## strfromname
* `strfromname(str $name --> str)`

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

## strtocodes
* `strtocodes(str $str, int $normalization, $codes)`

Takes an NFG string, and places the codepoints from it into the codes array,
which must be a 32-bit integer array. Applies the specified normalization,
specified as one of the nqp::const::NORMALIZE_* values; NORMALIZE_NONE is
not allowed.

## substr
* `substr(str $str, int $position --> str)`
* `substr(str $str, int $position, int $length --> str)`
* `substr_s(str $str, int $position --> str)` `moar`
* `substr_s(str $str, int $position, int $length --> str)` `moar`
* `substr2(str $str, int $position)` `jvm` _Internal_
* `substr3(str $str, int $position, int $length)` `jvm` _Internal_
* `substrnfg(str $str, int $position --> str)` `js`
* `substrnfg(str $str, int $position, int $length --> str)` `js`

Return the portion of the string starting at the given position.
If `$length` is specified, only return that many characters. The
numbered variants required the args specified - the unnumbered
version may use either signature.

## tc
* `tc(str $str --> str)`

Return titlecase copy of string.

## tclc
* `tclc(str $str --> str)`

Return copy of string with first character titlecased, and remaining
characters lowercased.

## uc
* `uc(str $str --> str)`

Return uppercase copy of string.

## unicmp_s `moar` `js`
* `unicmp_s(str $str1, str Str2, int $mode, int $iso639, int $iso3166 --> int)`

Compares strings using the [Unicode Collation Algorithm][UCA] (UCA).
#### Parameters:
```
$str1, $str2  # strings to compare
$mode         # collation mode (bitmask)
$iso639       # ISO 639 Language code
$iso3166      # ISO 3166 Country code
```

The collation mode defines whether we use Primary, Secondary, Tertiary and/or
Quaternary sorting.

Compares two strings, using the Unicode Collation Algorithm
Return values:
    0   The strings are identical for the collation levels requested
 -1/1   String a is less than string b/String a is greater than string b

`collation_mode` acts like a bitfield. Each of primary, secondary and tertiary
collation levels can be either: disabled, enabled, reversed.
In the table below, where + designates sorting normal direction and
- indicates reversed sorting for that collation level.
```
 Collation level | bitfield value
        Primary+ |   1
        Primary- |   2
      Secondary+ |   4
      Secondary- |   8
       Tertiary+ |  16
       Tertiary- |  32
     Quaternary+ |  64
     Quaternary- | 128
```

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
* `x(str $str, int $count --> str)`

Return a new string containing `$count` copies of `$str`.

# <a id="threads"></a> Threads

## currentthread `moar` `jvm`
* `currentthread()`

Returns the vm_thread object for the current thread.

## newthread `moar` `jvm`
* `newthread(block, app_lifetime --> vm_thread)`

Takes a block to execute in a thread, and a 1 to indicate that the thread
will be killed if the main thread finishes, or 0 to keep the thread running
even after the main thread has finished.  Returns a vm_thread object that
can be passed to the other thread related opcodes.

## threadid `moar` `jvm`
* `threadid(vm_thread --> int)`

Returns the numeric thread ID of the given vm_thread object.

## threadjoin `moar` `jvm`
* `threadjoin(vm_thread)`

Wait for the thread, indicated by the vm_thread object, to be finished.

## threadlockcount `moar` `jvm`
* `threadlockcount(vm_thread)`

Returns the number of locks held by the given thread.

## threadrun `moar` `jvm`
* `threadrun(vm_thread)`

Actually start running the code specified in the creation of the vm_thread
object.

## threadyield `moar` `jvm`
* `threadyield()`

Tell the scheduler to prefer another thread then the thread this is being
executed in, for now.

# <a id="trig"></a> Trigonometric

## acos
* `acos_n(num $n --> num)`

Arccosine.

## asec
* `asec_n(num $n --> num)`

Arcsecant.

## asin
* `asin_n(num $n --> num)`

Arcsine.

## atan
* `atan_n(num $n --> num)`

Arctangent.

## atan2
* `atan2_n(num $l, num $r --> num))`

2-argument Arctangent.

## cos
* `cos_n(num $n --> num))`

Cosine.

## cosh
* `cosh_n(num $n --> num))`

Hyperbolic cosine.

## sec
* `sec_n(num $n --> num))`

Secant.

## sech
* `sech_n(num $n --> num))`

Hyperbolic secant.

## sin
* `sin_n(num $n --> num))`

Sine.

## sinh
* `sinh_n(num $n --> num))`

Hyperbolic sine.

## tan
* `tan_n(num $n --> num))`

Tangent.

## tanh
* `tanh_n(num $n --> num))`

Hyperbolic tangent.

# <a id="type"></a> Type / Conversion

## bool
* `bool_I(Int $val)`

Returns 0 if `$val` is 0, otherwise 1.

## bootarray `moar` `jvm`
* `bootarray()`

Returns a VM specific type object for a native array.

## boothash `moar` `jvm`
* `boothash()`

Returns a VM specific type object for a native hash.

## bootint `moar` `jvm`
* `bootint()`

Returns a VM specific type object that can box a native int.

## bootintarray `moar` `jvm`
* `bootintarray()`

Returns a VM specific type object for a native array of int.

## bootnum `moar` `jvm`
* `bootnum()`

Returns a VM specific type object that can box a native num.

## bootnumarray `moar` `jvm`
* `bootnumarray()`

Returns a VM specific type object for a native array of num.

## bootstr `moar` `jvm`
* `bootstr()`

Returns a VM specific type object that can box a native str.

## bootstrarray `moar` `jvm`
* `bootstrarray()`

Returns a VM specific type object for a native array of str.

## box
* `box_i(int $val, Mu:T $type)`
* `box_n(num $val, Mu:T $type)`
* `box_s(str $val, Mu:T $type)`
* `box_u(int $val, Mu:T $type)` `moar`

Given a native value, return a Raku object of the given type
with the same value.

## decont

* `decont(Mu $val --> Mu)`
* `decont_i(Int $val --> Mu)`
* `decont_n(Num $val --> Mu)`
* `decont_s(Str $val --> Mu)`

Extract, or **de**-**cont**ainerize, a value from a `Scalar` container.
If the argument is not a container, the argument is returned unchanged:

    use nqp;
    my $a = (1, 2, 3);
    .say for $a;              # OUTPUT: «(1, 2, 3)␤»
    .say for nqp::decont($a); # OUTPUT: «1␤2␤3␤»

The `decont_i` decontainerizes to a native `int` value, `decont_n` to a
native `num` value, and `decont_s` to a native `str` value.

## defined
* `defined(Mu $obj --> int)`

Returns 1 if the object is not null and is not a Type object, 0 otherwise.

## fromI_I
* `fromI_I(Int $val --> Int)`

Rebox Big Integer value, removing any potential mixins.

## fromnum
* `fromnum_I(num $val, Mu:T $type --> Int)`

Convert float value to a Big Integer of the given type,
discarding any decimal portion.

## fromstr
* `fromstr_I(str $val, Mu:T $type --> Int)`

Convert string value to a Big Integer of the given type.

## isbig
* `isbig_I(Int $obj --> int)`

Returns a 1 if the object's numerical representation requires a big int, 0 otherwise.

## iscoderef `moar`
* `iscoderef($obj --> int)`

Returns a 1 if the object contains a code reference, 0 otherwise.

## isconcrete
* `isconcrete(Mu $obj --> int)`
* `isconcrete_nd(Mu $obj --> int)`

Returns a 1 if the object is not a type object, 0 otherwise.

The `_nd` variant does not decontainerize the object.

## iscont
* `iscont(Mu $obj --> int)`
* `iscont_i(int $int --> int)`
* `iscont_n(num $int --> int)`
* `iscont_s(str $int --> int)`

Returns a 1 if the object is a container type, 0 otherwise.

## isfalse
* `isfalse(Mu $obj --> int)`

Returns a 0 if the object has a truthy value, 1 otherwise.

## ishash
* `ishash(Mu $obj --> int)`

Returns a 1 if the object is a Hash, 0 otherwise.

## isint
* `isint(Mu $obj --> int)`

Returns a 1 if the object is an int type, 0 otherwise.

## isinvokable
* `isinvokable(Mu $obj --> int)`

Returns a 1 if the object represents something executable, 0 otherwise.

## islist
* `islist(Mu $obj)`

Returns a 1 if the object is an Array, 0 otherwise.

## isnanorinf
* `isnanorinf(num $n --> int)`

Return truth value indicating if this number represents any of the special
values, positive infinity, negative infinity, or NaN.

## isnull
* `isnull(Mu $obj --> int)`
* `isnull_s(str $obj --> int)`

Returns a 1 if the object is a null, 0 otherwise.

## isnum
* `isnum(Mu $obj --> int)`

Returns a 1 if the object is a float type, 0 otherwise.

## isprime
* `isprime_I(Int $obj --> int)`

Returns a 1 if the integer value of the object is prime, 0 otherwise.

## isrwcont
* `isrwcont(Mu $obj --> int)`

Returns a 1 if the object is a container type and can be written to, 0
otherwise.

## isstr
* `isstr(Mu $obj --> int)`

Returns a 1 if the object is a str type, 0 otherwise.

## istrue
* `istrue(Mu $obj --> int)`

Returns a 1 if the object has a truthy value, 0 otherwise.

## isttyfh
* `isttyfh(Mu $obj --> int)`

Returns a 1 if the object is an IO::Handle object that is a tty, 0 otherwise.

## istype
* `istype(Mu $obj, Mu:T $obj --> int)`
* `istype_nd(Mu $obj, Mu:T $obj --> int)`

Returns a 1 if the object is of the given type, 0 otherwise.

The `_nd` variant does not decontainerize the object.

## null
* `null(--> Mu)`
* `null_s(--> str)`

Generate a null value.

`null_s` returns a null string value that can be stored in a native str.

The value returned by `null_s` is VM dependant. Notably, it may stringify
differently depending on the backend.

## tonum
* `tonum_I(Int $val --> num)`

Convert Big Integer value to a native number.

## tostr
* `tostr_I(Int $val --> str)`

Convert Big Integer value to a native string.

## unbox
* `unbox_i(Mu $val --> int)`
* `unbox_n(Mu $val --> num)`
* `unbox_s(Mu $val --> str)`
* `unbox_u(Mu $val --> str)` `moar`

Given a Raku object, return a native with the same value,
of the type indicated by the opcode suffix.

# <a id="unicode"></a> Unicode Properties

## getuniname
* `getuniname(int $codepoint --> str)`

Translate a codepoint to its Unicode name.

## getuniprop_bool `moar`
* `getuniprop_bool(int $codepoint, int $propcode --> int)`

Same thing, but fetches a boolean property value.

## getuniprop_int `moar`
* `getuniprop_int(int $codepoint, int $propcode --> int)`

Uses the table found by unipropcode to look up an integer property value
for a given codepoint.  Note that many properties that are officially
numeric are really stored as strings, and if you try to use this op
on such a property, you'll get a meaningless position in an enum table
instead of the value you want.

## getuniprop_str
* `getuniprop_str(int $codepoint, int $propcode --> str)`

Same thing, but fetches a string property value.

## hasuniprop `moar`
* `hasuniprop(str $string, int offset, int propcode, int pvalcode --> int)`

Checks if the string has a specific property value at a specific offset.
Requires both the propcode and the pvalcode to work.

## matchuniprop `moar`
* `matchuniprop(int $codepoint, int $propcode, int $pvalcode --> int)`

Looks up a codepoint property and return 1 if it matches the pval, 0
otherwise.  The propcode and pvalcode may be looked up with the opcodes
above.  (Note that you can use the property value name (e.g. Nd) for both
lookups.)

## unipropcode
* `unipropcode(str $propname --> int)`

Translates a property name to the backend's property code. This is not distinct
across backends and is expected to change over time. For the most part only
useful for calling getuniprop_int, get_uniprop_str or get_uniprop_bool or
comparing whether two unicode property names resolve to the same propcode, for
example 'Alpha', 'alpha', 'alphabetic' and 'Alphabetic' should return the same
property code.

## unipvalcode `moar`
* `unipvalcode(int $propcode, str $propname --> int)`

Looks up a property name in its property category, and returns which
table within that category to use.

# <a id="variable"></a> Variable

## bind
* `bind(Mu $variable, Mu $value)`

Binds `$value` to the `$variable`. Dies if `$variable` isn't actually a
variable. Same as the `:=` operator in NQP.

# <a id="misc"></a> Miscellaneous

## backendconfig
* `backendconfig(--> Mu)`

Returns a hash containing backend-specific information, like backend-version,
configure and build flags.

## const
* `const()`

Not actually an opcode, but a collection of several constants. Each of the
constants below can be used in nqp as (e.g.) `nqp::const::CCLASS_ANY`.

    * CCLASS_ANY
    * CCLASS_UPPERCASE Lu
    * CCLASS_LOWERCASE Ll
    * CCLASS_ALPHABETIC Lo | Ll | Lu | Lt | Lm
    * CCLASS_NUMERIC Nd
    * CCLASS_HEXADECIMAL
    * CCLASS_WHITESPACE (9..13,32,133,160,5760,8192..8202,8232,8233,8239,8287,12228)
    * CCLASS_PRINTING !(0..31, 127..159)
    * CCLASS_BLANK Zs
    * CCLASS_CONTROL (0..31, 127..159)
    * CCLASS_PUNCTUATION
    * CCLASS_ALPHANUMERIC Lo | Ll | Lu | Lt | Lm | Nd
    * CCLASS_NEWLINE Zl Zp
    * CCLASS_WORD Lo | Ll | Lu | Lt | Lm | Nd + "_"

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

    * BINARY_SIZE_8_BIT
    * BINARY_SIZE_32_BIT
    * BINARY_SIZE_16_BIT
    * BINARY_SIZE_64_BIT
    * BINARY_ENDIAN_LITTLE
    * BINARY_ENDIAN_BIG
    * BINARY_ENDIAN_NATIVE

    * RUSAGE_UTIME_SEC
    * RUSAGE_UTIME_MSEC
    * RUSAGE_STIME_SEC
    * RUSAGE_STIME_MSEC

    * UNAME_SYSNAME
    * UNAME_RELEASE
    * UNAME_VERSION
    * UNAME_MACHINE

    * TYPE_CHECK_CACHE_DEFINITIVE
    * TYPE_CHECK_CACHE_THEN_METHOD
    * TYPE_CHECK_NEEDS_ACCEPTS

## cpucores
* `cpucores()`

Returns a native integer for the number of CPU cores that are reported to be
available.

## debugnoop `jvm`
* `debugnoop(Mu $a)`

Returns `$a`. Does nothing, exists only to provide a breakpoint location
for debugging.

## decodelocaltime
* `decodelocaltime(int $epoch --> int @tm)`

Returns an integer array with localtime information, formatted like the
`C struct tm`: $sec,$min,$hour,$mday,$mon,$year,$weekday,$yearday,$isdst.
Note that contrary to C's localtime() function, the $year contains the
actual year (A.D), and the $month has been normalized to 1..12.

## exit
* `exit(int $status)`

Exit nqp, using the given status as the compiler's exit value.

## force_gc `moar` `jvm`
* `force_gc()`

Force the garbage collector to run.

## freemem
* `freemem()`

Returns amount of free memory available in the system (not the NQP VM itself) (in bytes).

## getcodename
* `getcodename($obj --> str)`

Returns the name of the given concrete code object.
Throws an exception if an object of the wrong type is passed.

## getenvhash
* `getenvhash(--> Mu)`

Returns a hash containing the environment variables.
Changing the hash doesn't affect the environment variables

## getpid
* `getpid(--> int)`

Return the current process id, an int.

## getppid `moar`
* `getppid(--> int)`

Return the process id of the parent process, an int.

## getrusage
* `getrusage(int @rusage)`

Accepts an integer array and fills it with usage data, of which the following
elements are currently defined:

* `RUSAGE_UTIME_SEC`   Userland CPU usage (seconds part)
* `RUSAGE_UTIME_MSEC`  Userland CPU usage (micro-seconds part)
* `RUSAGE_STIME_SEC`   System CPU usage (seconds part)
* `RUSAGE_STIME_MSEC`  System CPU usage (micro-seconds part)
* `RUSAGE_MAXRSS`      Maximum resident set size (in bytes/Kbytes)
* `RUSAGE_IXRSS`       Integral shared text memory size (in bytes/Kbytes)
* `RUSAGE_IDRSS`       Integral unshared data size (in bytes/Kbytes)
* `RUSAGE_ISRSS`       Integral unshared stack size (in bytes/Kbytes)
* `RUSAGE_MINFLT`      Number of page reclaims (lower part)
* `RUSAGE_MAJFLT`      Number of page reclaims (upper part)
* `RUSAGE_NSWAP`       Number of swaps
* `RUSAGE_INBLOCK`     Number of block input operations
* `RUSAGE_OUBLOCK`     Number of block output operations
* `RUSAGE_MSGSND`      Number of messages sen
* `RUSAGE_MSGRCVA`     Number of messages received
* `RUSAGE_NSIGNALS`    Number of signals received
* `RUSAGE_NVCSW`       Number of voluntary context switches
* `RUSAGE_NIVCSW`      Number of involuntary context switches

Currently, the elements ending in `RSS` appear to return values in **bytes**
rather than **Kbytes** on MacOS.

Elements may be 0 if it is impossible to determine that value in the current
system.

## getsignals
* `getsignals(--> Mu)`

Returns a list containing signal names interleaved with the associated signum
integer on the host platform (MacOSX, Linux, BSD, etc).

If the current backend does not support the registering of a signal handler for
a given signal, the hash value will be a negative integer. For instance, the JVM
only supports signal handlers for SIGINT and SIGKILL, so all the values will be
negative except 2 (SIGINT) and 9 (SIGKILL). If a signal is not available on the
host system, the hash value will be set to 0.

The complete list of signal entries is as follows:

    * SIGHUP
    * SIGINT
    * SIGQUIT
    * SIGILL
    * SIGTRAP
    * SIGABRT
    * SIGEMT
    * SIGFPE
    * SIGKILL
    * SIGBUS
    * SIGSEGV
    * SIGSYS
    * SIGPIPE
    * SIGALRM
    * SIGTERM
    * SIGURG
    * SIGSTOP
    * SIGTSTP
    * SIGCONT
    * SIGCHLD
    * SIGTTIN
    * SIGTTOU
    * SIGIO
    * SIGXCPU
    * SIGXFSZ
    * SIGVTALRM
    * SIGPROF
    * SIGWINCH
    * SIGINFO
    * SIGUSR1
    * SIGUSR2
    * SIGTHR
    * SIGSTKFLT
    * SIGPWR
    * SIGBREAK

## indexingoptimized
* `indexingoptimized(str --> str)`

If the input string is made up of strands, then returns a flattened string
that is otherwise identical. If not, returns the input string.

Intended for strings that will be indexed into often, for example, when evaluating regexes.

## js `moar` `js`
* `js(str)`

Execute the string of JavaScript code passed in.

While this opcode exists in moar, it throws an exception declaring it is not implemented.

## jvmclasspaths `jvm`
* `jvmclasspaths(--> Mu)`

Converts the JVM property `java.class.path` into a list of paths, returns it.

## jvmgetproperties `jvm`
* `jvmgetproperties(--> Hash)`

Map the JVM's System.getProperties into a Hash usable in NQP. Normalizes some OS names
(key: 'os.name'), returns all other data as is.

## locallifetime
* `QAST::Op.new(:op<locallifetime>, :node($/), QAST::Stmt.new(...))`

Defines when local variables can be considered dead. E.g. the temporary setting
of `$_` on the right side of `~~` uses that.

## mvmendprofile `moar`
* `mvmendprofile(--> Object)`

Turns off the profiler and returns data gathered.

* `heap`

  currently doesn't return anything. it does, however, cause one heap snapshot to be taken immediately.

* `instrumented`

The first element is an array of arrays with information about the types
that have been allocated.  At the moment of writing, this array appears to
have information about objects that were created, but for which there is no
allocation information.  It has the following structure:

    0                                  - array with type information
    ├ 0 = 140415871842064               - unique ID for this type
    └ 1                                 - hash with additional information
      ├ repr => P6opaque                  - name of the REPR of this type
      ├ type => Block                     - type object of type (aka, the .WHAT)
      ├ managed_size => 72                - size in bytes of instance
      └ has_unmanaged_data => 1           - is there additional data on heap?

The second element of the list returned by nqp::mvmendprofile, is a list of
hashes, one for each thread on which data has been collected.  It has the
following structure (times are in microseconds, sizes are in bytes):

    0                                 - hash with info of thread
    ├ thread => 1                       - OS thread ID
    ├ parent => 0                       - OS thread ID of parent thread
    ├ spesh_time => 0                   - amount of time spent in spesh
    ├ start_time => 0                   - when thread was started
    ├ total_time => 21004               - total time spent in thread
    ├ call_graph                        - hash with first Callee info
    │ ├ id => 140328666076608             - unique ID of this Callee
    │ ├ first_entry_time => 0             - when Callee was first called
    │ ├ inclusive_time => 2               - time spent here + all sub-Callees
    │ ├ exclusive_time => 2               - time spent in this Callee
    │ ├ entries => 97897                  - number of times Callee was called
    │ ├ inlined_entries => 56757          - times called when inlined
    │ ├ jit_entries => 6566               - times called when jitted
    │ ├ osr => 1                          - times Callee was OSR'd
    │ ├ name => foo                       - name of Callee (if available)
    │ ├ file => gen/moar/BOOTSTRAP.nqp    - filename of Callee
    │ ├ line => 2070                      - line of Callee in file
    │ ├ allocations => (2)                - array with Allocations
    │ │ ├ 0                                 - hash with Allocation info
    │ │ │ ├ count => 100                      - number of allocations
    │ │ │ ├ replaced => 1                     - scalar replacements stopping alloc
    │ │ │ └ id => 140329083232016             - type ID
    │ └ callees => (2)                    - array with Callees called here
    └ gcs                               - array with Garbage Collections
      └ 0                                 - hash with GC info
        ├ sequence => 0                     - ordinal number of GC
        ├ start_time => 1964                - when GC was started
        ├ time => 7222                      - time spent doing GC
        ├ full => 0                         - whether or not a full GC
        ├ responsible => 1                  - thread ID that triggered this GC
        ├ promoted_bytes => 212960          - bytes promoted from the nuresery
        ├ promoted_bytes_unmanaged => 54781 - additional bytes promoted
        ├ retained_bytes => 76576           - bytes *not* promoted
        ├ cleared_bytes => 3228716          - bytes cleared from the nursery
        ├ gen2 => 18402                     -
        ├ gen2_roots => 18402               - gen2 allocs rooted in nursery
        ├ deallocs                          - array with Deallocations
          ├ 0                                 - hash with deallocation info
            ├ id => 140329080607960             - type ID being deallocated
            ├ nursery_seen => 10                - seen before in a GC
            └ nursery_fresh => 6                - *not* seen before in a GC

## mvmstartprofile `moar`
* `mvmstartprofile(hash $config)`

Turns on one of MoarVM's profilers. The configuration must have a `kind` key that specifies which profiler will be turned on:

* `instrumented`

  takes no further configuration options. records call graph, garbage collection, and object allocation information.

* `heap`

  takes a path / filename in the `path` key. writes a snapshot of the heap's structure (objects and their connections) to the file every time the GC runs.

If a profiler is already active, an exception will be thrown; only one profiler can run at a time.

## objectid
* `objectid($obj --> int)`

Returns a numeric object ID unique for the given object.

## setcodename
* `setcodename($obj, str)`

Sets the name of the given code object.
Throws an exception if an object of the wrong type is passed.

## sha1
* `sha1(str $str -> str)`

Given a UTF-8 string, return the SHA-1 digest for that string. This op is built
for the specific purpose of hashing source code for dependency management
purposes, and isn't intended to be used more widely.

## sleep
* `sleep(num $seconds --> num)`

Sleep for the given number of seconds (no guarantee is made how exact the
time sleeping is spent.) Returns the passed in number.

## takeclosure
* `takeclosure(Block $innerblock)`

Creates a lexical closure from the block's outer scope.

## time
* `time_i(--> int)`
* `time_n(--> num)`

Return the time in seconds since January 1, 1970 UTC. `_i` variant returns
an integral number of seconds, `_n` returns a fractional amount.

## totalmem
* `totalmem(--> int)`

Returns the number of bytes of memory in use by the VM.

## uname `moar` `js`
* `uname(--> Mu)`

Returns a string array and fills it with uname data, of which the following
elements are currently defined:

* `UNAME_SYSNAME`  Name of the operating system implementation
* `UNAME_RELEASE`  Release level of the operating system
* `UNAME_VERSION`  Version level of the operating system
* `UNAME_MACHINE`  Machine hardware platform

