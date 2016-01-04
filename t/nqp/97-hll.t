plan(10);

ok(nqp::bindhllsym("blabla", "key1", "value1") eq 'value1', 'nqp::bindhllsym');
nqp::bindhllsym("blabla", "key2", "value2");
nqp::bindhllsym("blabla2", "key2", "value3");

ok(nqp::gethllsym("blabla", "key1") eq 'value1', 'nqp::gethllsym');
ok(nqp::gethllsym("blabla", "key2") eq 'value2', 'different keys are separate');
ok(nqp::gethllsym("blabla2", "key2") eq 'value3', 'different languages are separate');

ok(nqp::isnull(nqp::gethllsym("no_such_lang", "bla")), "nqp::gethllsym with unknown language");
ok(nqp::isnull(nqp::gethllsym("blabla", "no_such_key")), "nqp::gethllsym with unknown key");

ok(nqp::bindcurhllsym("key3", "value4"), 'nqp::bindcurhllsym');
ok(nqp::getcurhllsym("key3") eq "value4", 'nqp::getcurhllsym');

ok(nqp::gethllsym("nqp", "key3") eq "value4", 'nqp::bindcurhllsym/nqp::gethllsym combo');

nqp::bindhllsym("nqp", "key4", "value5");

ok(nqp::getcurhllsym("key4") eq "value5", 'nqp::bindhllsym/nqp::getcurhllsym combo');
