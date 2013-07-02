plan(5);
ok(nqp::istype(&say,NQPRoutine),"checking builtins, &say is a NQPRoutine");
ok(nqp::istype(&ok,NQPRoutine),"checking builtins, &ok is a NQPRoutine");
sub foo() {
}
ok(nqp::istype(&foo,NQPRoutine),"named sub is NQPRoutine");
ok(nqp::istype(sub() {},NQPRoutine),"anoymous sub is NQPRoutine");
my $foo := sub bar() {
};
ok(nqp::istype($foo,NQPRoutine),"binding a named sub to a value results in a NQPRoutine");

