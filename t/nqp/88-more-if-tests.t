plan(7);
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

