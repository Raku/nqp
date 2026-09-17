plan(64);

class Foo {}
class FooSub is Foo {}
class Bar {}

sub takes-foo(Foo $x) { 'ok' }

is(takes-foo(Foo.new), 'ok', 'an instance of the declared type is accepted');
is(takes-foo(FooSub.new), 'ok', 'an instance of a subclass is accepted');
is(takes-foo(Foo), 'ok', 'the type object of the declared type is accepted');

my $failed := 0;
my $message := '';
try { takes-foo(Bar.new); CATCH { $failed := 1; $message := nqp::getmessage($_) } }
ok($failed, 'an instance of another type is refused');
ok(nqp::index($message, "parameter '\$x'") >= 0, 'the message names the parameter');
ok(nqp::index($message, "'takes-foo'") >= 0, 'the message names the routine');
ok(nqp::index($message, 'expected Foo but got Bar') >= 0, 'the message names the expected and received types');

$failed := 0;
try { takes-foo(42); CATCH { $failed := 1 } }
ok($failed, 'a native integer is refused for an object type');

$failed := 0;
try { takes-foo(NQPMu); CATCH { $failed := 1 } }
ok($failed, 'NQPMu is refused for an object type');

sub takes-defined(Foo:D $x) { 'ok' }
is(takes-defined(Foo.new), 'ok', 'an instance is accepted where a defined value is declared');
$failed := 0;
try { takes-defined(Foo); CATCH { $failed := 1 } }
ok($failed, 'a type object is refused where a defined value is declared');

sub takes-undefined(Foo:U $x) { 'ok' }
is(takes-undefined(Foo), 'ok', 'a type object is accepted where an undefined value is declared');
$failed := 0;
try { takes-undefined(Foo.new); CATCH { $failed := 1 } }
ok($failed, 'an instance is refused where an undefined value is declared');

sub optional-foo(Foo $x?) { $x }
ok(nqp::eqaddr(optional-foo(), Foo), 'an omitted optional holds the type object');
ok(nqp::eqaddr(optional-foo(Foo.new).WHAT, Foo), 'a passed optional holds the argument');

sub named-foo(Foo :$x) { $x }
ok(nqp::eqaddr(named-foo(), Foo), 'an omitted named parameter holds the type object');
$failed := 0;
try { named-foo(:x(Bar.new)); CATCH { $failed := 1 } }
ok($failed, 'a named parameter of another type is refused');

ok(nqp::eqaddr(optional-foo(NQPMu), Foo), 'NQPMu passed for an optional holds the type object');
ok(nqp::eqaddr(named-foo(:x(NQPMu)), Foo), 'NQPMu passed for a named parameter holds the type object');
$failed := 0;
try { takes-defined(NQPMu); CATCH { $failed := 1 } }
ok($failed, 'NQPMu is refused where a defined value is declared');

sub defaulted-foo(Foo $x = FooSub) { $x }
ok(nqp::eqaddr(defaulted-foo(), FooSub), 'an explicit default is kept');

sub untyped($x) { $x }
is(untyped(Bar.new).HOW.name(Bar.new), 'Bar', 'an untyped parameter still takes anything');
ok(nqp::eqaddr(untyped(NQPMu), NQPMu), 'an untyped parameter still takes NQPMu');

sub slurpy-foo(Foo *@xs) { nqp::elems(@xs) }
is(slurpy-foo(Foo.new, Bar.new), 2, 'a typed slurpy is not checked');

# A container is deconted before the check and the body sees the value.
my $cont := nqp::create(Foo);
sub sees-value(Foo $x) { nqp::eqaddr($x, $cont) }
ok(sees-value($cont), 'the body sees the argument');

sub sees-raw(Foo $x is raw) { $x }
ok(nqp::eqaddr(sees-raw($cont), $cont), 'a raw parameter is passed through');

class Holder {
    method check(Foo $x) { 'ok' }
    method inv(Holder:D $self: $x) { $x }
    method inv-type(Holder:U $self: $x) { $x }
}
is(Holder.new.check(Foo.new), 'ok', 'a typed method parameter is accepted');
$failed := 0;
try { Holder.new.check(Bar.new); CATCH { $failed := 1 } }
ok($failed, 'a typed method parameter is refused');
is(Holder.new.inv(1), 1, 'a defined invocant is accepted');
$failed := 0;
try { Holder.inv(1); CATCH { $failed := 1 } }
ok($failed, 'a type object invocant is refused where a defined one is declared');
is(Holder.inv-type(1), 1, 'a type object invocant is accepted where an undefined one is declared');

# The failure hook can be rebound by an HLL.
my $seen := '';
my $orig := nqp::gethllsym('nqp', 'parameter-type-check-failure');
nqp::bindhllsym('nqp', 'parameter-type-check-failure', sub ($value, $type, $name, $code, $definedness?) {
    $seen := $name ~ ' ' ~ $type.HOW.name($type) ~ ' ' ~ nqp::getcodename($code);
    nqp::die('rebound');
});
try { takes-foo(Bar.new) }
nqp::bindhllsym('nqp', 'parameter-type-check-failure', $orig);
is($seen, '$x Foo takes-foo', 'a rebound hook receives the parameter name, type and routine');

# NQPMu counts as an absent value only where the type object stands in for
# the default.
$failed := 0;
try { defaulted-foo(NQPMu); CATCH { $failed := 1 } }
ok($failed, 'NQPMu passed for an optional with an explicit default is refused');
$failed := 0;
try { defaulted-foo(Bar.new); CATCH { $failed := 1 } }
ok($failed, 'an optional with an explicit default refuses another type');
sub defaulted-named(Foo :$x = FooSub) { $x }
ok(nqp::eqaddr(defaulted-named(), FooSub), 'an explicit default on a named parameter is kept');

sub required-named(Foo :$x!) { $x }
ok(nqp::eqaddr(required-named(:x(Foo)), Foo), 'a required named parameter takes the type object');
$failed := 0;
try { required-named(:x(Bar.new)); CATCH { $failed := 1 } }
ok($failed, 'a required named parameter refuses another type');
$failed := 0;
try { required-named(:x(NQPMu)); CATCH { $failed := 1 } }
ok($failed, 'a required named parameter refuses NQPMu');
$failed := 0;
try { required-named(); CATCH { $failed := 1 } }
ok($failed, 'a required named parameter is still required');

# Real containers.
class SimpleCont { has $!content; }
nqp::setcontspec(SimpleCont, 'code_pair', nqp::hash(
    'fetch', sub ($c) { nqp::getattr($c, SimpleCont, '$!content') },
    'store', sub ($c, $value) { nqp::bindattr($c, SimpleCont, '$!content', $value) }
));
sub holding($value) { my $c := nqp::create(SimpleCont); nqp::assign($c, $value); $c }
my $foo := Foo.new;
my $holds-foo  := holding($foo);
my $holds-bar  := holding(Bar.new);
my $holds-type := holding(Foo);

sub value-of(Foo $x) { $x }
ok(nqp::eqaddr(value-of($holds-foo), $foo), 'the body sees the value of a container');
$failed := 0;
try { value-of($holds-bar); CATCH { $failed := 1 } }
ok($failed, 'a container holding another type is refused');
ok(nqp::eqaddr(sees-raw($holds-foo), $holds-foo), 'a raw parameter hands the body the container');
$failed := 0;
try { sees-raw($holds-bar); CATCH { $failed := 1 } }
ok($failed, 'a raw parameter refuses a container holding another type');
sub raw-defined(Foo:D $x is raw) { $x }
ok(nqp::eqaddr(raw-defined($holds-foo), $holds-foo), 'a raw defined parameter takes a container holding an instance');
$failed := 0;
try { raw-defined($holds-type); CATCH { $failed := 1 } }
ok($failed, 'a raw defined parameter refuses a container holding a type object');
$failed := 0;
try { takes-defined($holds-type); CATCH { $failed := 1 } }
ok($failed, 'a defined parameter refuses a container holding a type object');
ok(nqp::eqaddr(untyped($holds-foo), $holds-foo), 'an untyped parameter is not deconted');
is(holding(Holder.new).inv(1), 1, 'a defined invocant in a container is accepted');

# Multi dispatch still picks by the declared types.
proto sub pick($x) {*}
multi sub pick(Foo $x) { 'foo' }
multi sub pick(Bar $x) { 'bar' }
is(pick(Foo.new), 'foo', 'a multi candidate is picked by its parameter type');
is(pick(Bar.new), 'bar', 'the other multi candidate is picked by its parameter type');
is(pick(FooSub.new), 'foo', 'a subclass instance picks the candidate of its parent');
class Picker {
    proto method pick($x) {*}
    multi method pick(Foo $x) { 'foo' }
    multi method pick(Bar $x) { 'bar' }
}
is(Picker.new.pick(Bar.new), 'bar', 'a multi method candidate is picked by its parameter type');

# A closure keeps its outer and checks on every call.
sub make-checker($tag) { sub (Foo $x) { $tag } }
my $checker := make-checker('seen');
is($checker(Foo.new), 'seen', 'a typed parameter of a closure is accepted and the outer is kept');
$failed := 0;
try { $checker(Bar.new); CATCH { $failed := 1 } }
ok($failed, 'a typed parameter of a closure is refused');
my $pointy := -> Foo $x { 'pointy' };
$failed := 0;
try { $pointy(Bar.new); CATCH { $failed := 1 } }
ok($failed, 'a typed parameter of a pointy block is refused');

# The message for values that are not objects of the language.
$message := '';
try { takes-foo(42); CATCH { $message := nqp::getmessage($_) } }
ok(nqp::index($message, 'expected Foo but got ') >= 0 && nqp::index($message, 'got Foo') < 0, 'a native integer is named by its box type');
$message := '';
try { takes-foo('str'); CATCH { $message := nqp::getmessage($_) } }
ok(nqp::index($message, 'expected Foo but got ') >= 0 && nqp::index($message, 'got Foo') < 0, 'a native string is named by its box type');
$message := '';
try { takes-foo(nqp::null()); CATCH { $message := nqp::getmessage($_) } }
ok(nqp::index($message, 'expected Foo but got null') >= 0, 'a null is named as null');

# A definedness constraint shows in the message.
$message := '';
try { takes-defined(Foo); CATCH { $message := nqp::getmessage($_) } }
ok(nqp::index($message, 'expected Foo:D but got Foo') >= 0, 'a refused type object names the :D constraint');
$message := '';
try { takes-undefined(Foo.new); CATCH { $message := nqp::getmessage($_) } }
ok(nqp::index($message, 'expected Foo:U but got Foo') >= 0, 'a refused instance names the :U constraint');

# A type on an array or hash parameter is not checked.
sub typed-array(Foo @xs) { nqp::elems(@xs) }
is(typed-array([Bar.new, Bar.new]), 2, 'a typed array parameter takes a list');
sub typed-hash(Foo %xs) { nqp::elems(%xs) }
is(typed-hash(nqp::hash('a', 1)), 1, 'a typed hash parameter takes a hash');

# A raw optional is left as passed.
sub raw-optional(Foo $x? is raw) { $x }
$failed := 0;
try { raw-optional(NQPMu); CATCH { $failed := 1 } }
ok($failed, 'NQPMu passed for a raw optional is checked as it is');

# A hook that returns does not let the argument through.
my $saved := nqp::gethllsym('nqp', 'parameter-type-check-failure');
nqp::bindhllsym('nqp', 'parameter-type-check-failure', sub ($value, $type, $name, $code, $definedness?) { 1 });
$failed := 0;
try { takes-foo(Bar.new); CATCH { $failed := 1 } }
nqp::bindhllsym('nqp', 'parameter-type-check-failure', $saved);
ok($failed, 'an argument is refused even when the hook returns');
