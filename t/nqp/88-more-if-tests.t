plan(10);
my $foo := 0;
1 if $foo++;
ok($foo == 1, "the if condition is evaluated once");

if "value001" -> $value {
    ok($value eq "value001", "if statement with an arrow");
} else {
}

if 0 -> $value {
} elsif 0 -> $value {
} elsif "value002" -> $value {
    ok($value eq "value002", "elsif statement with an arrow");
}

if nqp::list() {
} else -> $list {
    ok(nqp::islist($list), "else with an arrow");
}

unless nqp::list() -> $list {
    ok(nqp::islist($list), "unless with an arrow");
}

my $count := 0;

sub side-effect() {
    $count := $count + 10;
    "value003";
}

if side-effect() -> $value {
    ok($value eq "value003", "we get the correct value without reinvoking sideffect");
}

ok($count == 10, "side effect happens once");

my $log := '';
sub log($msg, $value) {
    $log := $log ~ $msg;
    $value;
}

ok(nqp::ifnull(log('a', nqp::null()), log('b', 'value1')) eq 'value1', 'ifnull with null');
ok(nqp::ifnull(log('c', 'value2'), log('d', 'value3')) eq 'value2', 'ifnull without null');
ok($log eq 'abc', 'only the right things are evaled');
