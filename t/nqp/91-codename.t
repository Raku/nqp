plan(2);
sub foo() {
}
ok(nqp::getcodename(&foo) eq 'foo');
nqp::setcodename(&foo, 'bar');
say(nqp::getcodename(&foo));
ok(nqp::getcodename(&foo) eq 'bar');
