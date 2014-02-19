#! nqp

class ABC {
    method () is parrot_vtable('get_number') { 123.0 }
    method () is parrot_vtable('get_string') { 'abc' }
}

plan(9);

my $abc := ABC.new;
ok($abc == 123,   "get_number vtable works");
ok($abc eq 'abc', "get_string vtable works");

class DEF is ABC {
    method () is parrot_vtable('get_string') { 'def' }
}

my $def := DEF.new;
ok($def == 123,   "get_number vtable from parent works");
ok($def eq 'def', "get_string vtable as override works");

class Hashy {
    has %!h;
    method init() { %!h := nqp::hash() }
    method ($k)     is parrot_vtable('get_pmc_keyed_str') { %!h{$k}}
    method ($k, $v) is parrot_vtable('set_pmc_keyed_str') { %!h{$k} := $v }
    method ($k)     is parrot_vtable('exists_keyed_str')  { nqp::existskey(%!h, $k)      }
    method ($k)     is parrot_vtable('delete_keyed_str')  { nqp::deletekey(%!h, $k)      }
}

my $h := Hashy.new; $h.init();

$h<foo> := 'bar';
ok($h<foo> eq 'bar', '{set,get}_pmc_keyed_str');
ok(nqp::existskey($h, 'foo'), 'exists');
nqp::deletekey($h, 'foo');
ok(!nqp::existskey($h, 'foo'), 'delete');

class Arrayy {
    has @!a;
    method init() { @!a := nqp::list() }
    method ($k)     is parrot_vtable('get_pmc_keyed_int') { @!a{$k}}
    method ($k, $v) is parrot_vtable('set_pmc_keyed_int') { @!a{$k} := $v }
    method ($k)     is parrot_vtable('exists_keyed_int')  { nqp::existspos(@!a, $k)      }
}

my $a := Arrayy.new; $a.init();

$a[0] := 'bar';
ok($a[0] eq 'bar', '{set,get}_pmc_keyed_int');
ok(nqp::existspos($a, 0), 'exists');
