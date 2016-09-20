plan(3);
sub foo() {
}
ok(nqp::getcodename(&foo) eq 'foo');
ok(nqp::eqaddr(nqp::setcodename(&foo, 'bar'), &foo));
ok(nqp::getcodename(&foo) eq 'bar');
