plan(3);
sub foo() {
}
is(nqp::getcodename(&foo), 'foo');
ok(nqp::eqaddr(nqp::setcodename(&foo, 'bar'), &foo));
is(nqp::getcodename(&foo), 'bar');
