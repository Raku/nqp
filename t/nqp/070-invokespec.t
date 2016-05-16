plan(11);
class Foo {
    has $!here_we_keep_the_code_ref;
    has $!other_place_we_could_keep_the_code_ref_in;
    method set_code_ref($code_ref) {
        $!here_we_keep_the_code_ref := $code_ref;
    }
    method set_code_ref_differently($code_ref) {
        $!other_place_we_could_keep_the_code_ref_in := $code_ref;
    }
}
class Bar is Foo {
}
nqp::setinvokespec(Foo,Foo,'$!here_we_keep_the_code_ref',nqp::null());

nqp::setinvokespec(Bar,Foo,'$!other_place_we_could_keep_the_code_ref_in',nqp::null());

my $foo := Foo.new();
$foo.set_code_ref(sub () {123});
$foo.set_code_ref_differently(sub () {456});
ok($foo() == 123,"basic setinvokespec");

my $bar := Bar.new();
$bar.set_code_ref(sub () {1001});
$bar.set_code_ref_differently(sub () {1002});
ok($bar() == 1002,"setinvokespec with a attribute in a subclass");

class Baz {
}

ok(nqp::isinvokable(Foo) == 1, "nqp::isinvokable works on objects that have a set invokespec");
ok(nqp::isinvokable(Baz) == 0, "nqp::isinvokable works on objects that don't have a set invokespec");

class Second {
    has $!attr;
    has $!ret;
    method attr() {$!attr}
    method ret() {$!ret}
}

my $called;
my $called_arg;
my $called_name;

nqp::setinvokespec(Second, nqp::null(), nqp::null_s(), -> $invokee, $arg1, :$named {
    $called := $invokee;
    $called_arg := $arg1;
    $called_name := $named;
    $invokee.ret;
});

my $second := Second.new(attr => "hello", ret => "peculiar");

ok($second("world", :named('brave new')) eq 'peculiar','correct value from invocation');

ok($called.attr eq 'hello', 'got right invokee to invocation handler');
ok($called_arg eq 'world', 'got positional');
ok($called_name eq 'brave new', 'got named');

ok(nqp::isinvokable($second) == 1, "nqp::isinvokable on object with 2nd form of setinvokespec");

my $differently := Second.new(attr => "hello", ret => "not yet again");

my @args := nqp::list("again");
ok($differently(|@args) eq "not yet again", "calling with slurpy args");
ok($called_arg eq 'again', "...and got right arg");
