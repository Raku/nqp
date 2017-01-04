plan(12);

class Foo {
    has int $!int;
    has str $!str;
    has num $!num;
    method set_int($value) {
        $!int := $value;
    }
    method get_int() {
        $!int;
    }
    method set_num($value) {
        $!num := $value;
    }
    method get_num() {
        $!num;
    }
    method set_str($value) {
        $!str := $value;
    }
    method get_str() {
        $!str;
    }
}

sub make_ref_type($name, $kind, :$ref_kind = 'lexical') {
    my $class := nqp::newtype(NQPMu, 'NativeRef');
    my $info  := nqp::hash();
    $info<nativeref> := nqp::hash();
    $info<nativeref><type> := $kind;
    $info<nativeref><refkind> := $ref_kind;
    nqp::composetype($class, $info);
    nqp::setcontspec($class, 'native_ref', nqp::null());
    return $class;
}

my %hllconfig;
%hllconfig<int_attr_ref> := make_ref_type('StubIntAttrRef', int, :ref_kind<attribute>);
%hllconfig<num_attr_ref> := make_ref_type('StubNumAttrRef', num, :ref_kind<attribute>);
%hllconfig<str_attr_ref> := make_ref_type('StubStrAttrRef', str, :ref_kind<attribute>);

%hllconfig<int_pos_ref> := make_ref_type('StubIntPosRef', int, :ref_kind<positional>);
%hllconfig<num_pos_ref> := make_ref_type('StubNumPosRef', num, :ref_kind<positional>);
%hllconfig<str_pos_ref> := make_ref_type('StubStrPosRef', str, :ref_kind<positional>);

nqp::sethllconfig('nqp', %hllconfig);

my $foo := Foo.new;
$foo.set_int(100);
$foo.set_str('hi');
$foo.set_num(3.14);

my $int_ref := nqp::getattrref_i($foo, Foo, '$!int');
is(nqp::decont_i($int_ref), 100, 'nqp::decont_i on result of nqp::getattrref_i works');
nqp::assign_i($int_ref, 200);
is($foo.get_int, 200, 'nqp::assign_i on result of nqp::getattrref_i works');

my $num_ref := nqp::getattrref_n($foo, Foo, '$!num');
is(nqp::decont_n($num_ref), 3.14, 'nqp::decont_n on result of nqp::getattrref_n works');
nqp::assign_n($num_ref, 0.123);
is($foo.get_num, 0.123, 'nqp::assign_n on result of nqp::getattrref_n works');

my $str_ref := nqp::getattrref_s($foo, Foo, '$!str');
is(nqp::decont_s($str_ref), 'hi', 'nqp::decont_s on result of nqp::getattrref_s works');
nqp::assign_s($str_ref, 'hello');
is($foo.get_str, 'hello', 'nqp::assign_s on result of nqp::getattrref_s works');

my $array_i := nqp::list_i();
nqp::bindpos_i($array_i, 2, 100);
my $pos_ref_i := nqp::atposref_i($array_i, 2);
is(nqp::decont_i($pos_ref_i), 100, 'nqp::decont_i on result of nqp::atposref_i works');
nqp::assign_i($pos_ref_i, 200);
is(nqp::atpos_i($array_i, 2), 200, 'nqp::assign_i on result of nqp::atposref_i works');

my $array_n := nqp::list_n();
nqp::bindpos_n($array_n, 2, 3.14);
my $pos_ref_n := nqp::atposref_n($array_n, 2);
is(nqp::decont_n($pos_ref_n), 3.14, 'nqp::decont_n on result of nqp::atposref_n works');
nqp::assign_n($pos_ref_n, 1.234);
is(nqp::atpos_n($array_n, 2), 1.234, 'nqp::assign_n on result of nqp::atposref_n works');

my $array_s := nqp::list_s();
nqp::bindpos_s($array_s, 2, "fancy value");
my $pos_ref_s := nqp::atposref_s($array_s, 2);
is(nqp::decont_s($pos_ref_s), "fancy value", 'nqp::decont_s on result of nqp::atposref_s works');
nqp::assign_s($pos_ref_s, "fancier value");
is(nqp::atpos_s($array_s, 2), "fancier value", 'nqp::assign_s on result of nqp::atposref_s works');
