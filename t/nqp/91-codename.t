plan(2);
sub foo() {
}
ok(nqp::getcodename(&foo) eq 'foo');
nqp::setcodename(&foo, 'bar');
ok(nqp::getcodename(&foo) eq 'bar');
