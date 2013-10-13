#! nqp

# nqp::buildnativecall($target, $libname, $symbol, $convention, $arguments, $returns)
#
# Build a call descriptor into $target (which must be NativeCall REPRd or have
# a box target that is), for the function $symbol from $libname with the
# $convention calling convention.
#
# $arguments is a list of hashes, one hash per argument to the function. The
# hash can contain the following keys:
# - type: A string describing the type of the argument. One of:
#   - void
#   - char
#   - short
#   - int
#   - long
#   - longlong
#   - float
#   - double
#   - asciistr
#   - utf8str
#   - utf16str
#   - cstruct
#   - cpointer
#   - carray
#   - callback
# - free_str: Should the cstring created for the call be freed afterwards?
# - callback_args: A list of hashes describing the arguments to a callback
# - typeobj: The type object of the Perl 6 type we want to pass
# $returns is a hash of the same kind used in $arguments
#
# nqp::nativecall($returns, $call, $arguments)
# 
# Actually calls the foreign function. $returns is the type object for the
# return type (or null, for void functions), $call is the descriptor build
# with nqp::buildnativecall, and $arguments the arguments passed.

plan(3);

my $arg_hash;
my $return_hash;

BEGIN {
    nqp::initnativecall();
}

class Call     is repr('NativeCall') { }
class CPointer is repr('CPointer')   { }

#my $printf := nqp::create(Call);
my $printf := Call.new;
$arg_hash := nqp::hash();
$arg_hash<type> := 'utf8str';
$arg_hash<free_str> := 1;
$return_hash := nqp::hash();
$return_hash<type> := 'void';

nqp::buildnativecall($printf, '', 'printf', '', [$arg_hash], $return_hash);
nqp::nativecall(nqp::null(), $printf, ["ok - printf\n"]);

my $strdup := nqp::create(Call);
$arg_hash := nqp::hash();
$arg_hash<type> := 'utf8str';
$arg_hash<free_str> := 1;
$return_hash := nqp::hash();
$return_hash<type> := 'cpointer';

try {
    nqp::buildnativecall($strdup, '', 'strdup', '', [$arg_hash], $return_hash);
    CATCH {
        nqp::buildnativecall($strdup, '', '_strdup', '', [$arg_hash], $return_hash);
    }
}
my $dupped := nqp::nativecall(CPointer, $strdup, ["ok - passing cpointer\n"]);
say("ok - function returning cpointer"); # want un-numbered

my $ptrprint := nqp::create(Call);
$arg_hash := nqp::hash();
$arg_hash<type> := 'cpointer';
$return_hash := nqp::hash();
$return_hash<type> := 'void';

nqp::buildnativecall($printf, '', 'printf', '', [$arg_hash], $return_hash);
nqp::nativecall(nqp::null(), $printf, [$dupped]);

# vim: ft=perl6
