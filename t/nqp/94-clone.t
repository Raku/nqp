plan(5);
sub foo() {
    'hello there';
}
my $a := &foo;
my $b := nqp::clone($a);

nqp::setcodeobj($a, "obj");
ok(nqp::getcodename($a) eq 'foo', 'sanity check');
ok(nqp::getcodename($b) eq 'foo', 'cloned sub has correct name');
ok($b() eq 'hello there', 'you can call a cloned sub');
nqp::setcodename($b, 'bumblebee');
ok(nqp::getcodename($a) eq 'foo', "changing the name on the cloned sub doesn't affect orginal");
ok(nqp::getcodename($b) eq 'bumblebee', "you can change the name on the cloned sub");
