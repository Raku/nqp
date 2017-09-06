plan(39);

sub one_arg_sub($arg) {
}

dies-ok({ one_arg_sub('first arg', 'second arg')}, 'sub with too many arguments dies');

dies-ok({ one_arg_sub()}, 'sub with not enough arguments dies');

my sub int_arg(int $arg) {
  $arg;
}
my sub num_arg(num $arg) {
  $arg;
}
my sub str_arg(str $arg) {
  $arg;
}

dies-ok({int_arg('foo')}, "can't pass str to an int arg");
dies-ok({int_arg(123.3)}, "can't pass num to an int arg");
dies-ok({int_arg(nqp::list())}, "can't pass obj to an int arg");
is(int_arg(123), '123', "can pass int to an int arg");

dies-ok({num_arg('foo')}, "can't pass str to an num arg");
dies-ok({num_arg(123)}, "can't pass int to an int arg");
dies-ok({num_arg(nqp::list())}, "can't pass obj to an num arg");
is(num_arg(123.1), '123.1', "can pass num to an num arg");

dies-ok({str_arg(123)}, "can't pass int to an str arg");
dies-ok({str_arg(123.3)}, "can't pass num to an str arg");
dies-ok({str_arg(nqp::list())}, "can't pass obj to an str arg");
is(str_arg('foo'), 'foo', "can pass str to an str arg");

my class BoxedInt is repr('P6int') {
}
my class BoxedStr is repr('P6str') {
}
my class BoxedNum is repr('P6num') {
}

my $boxed_int := nqp::box_i(4, BoxedInt);
my $boxed_num := nqp::box_n(123.1, BoxedNum);
my $boxed_str := nqp::box_s('foo', BoxedStr);

dies-ok({int_arg($boxed_str)}, "can't pass a boxed str to an int arg");
dies-ok({int_arg($boxed_num)}, "can't pass a boxed num to an int arg");
is(int_arg($boxed_int), '4', "can pass a boxed int to an int arg");

dies-ok({num_arg($boxed_str)}, "can't pass a boxed str to an num arg");
dies-ok({num_arg($boxed_int)}, "can't pass a boxed int to an int arg");
is(num_arg($boxed_num), '123.1', "can pass a boxed num to an num arg");

dies-ok({str_arg($boxed_int)}, "can't pass a boxed int to an str arg");
dies-ok({str_arg($boxed_num)}, "can't pass a boxed num to an str arg");
is(str_arg($boxed_str), 'foo', "can pass a boxed str to an str arg");


my sub int_named_arg(int :$arg) {
  $arg;
}
my sub num_named_arg(num :$arg) {
  $arg;
}
my sub str_named_arg(str :$arg) {
  $arg;
}

dies-ok({int_named_arg(:arg('foo'))}, "can't pass str to an int named arg");
dies-ok({int_named_arg(:arg(123.3))}, "can't pass num to an int named arg");
dies-ok({int_named_arg(:arg(nqp::list()))}, "can't pass obj to an int named arg");
is(int_named_arg(:arg(123)), '123', "can pass int to an int named arg");

dies-ok({num_named_arg(:arg('foo'))}, "can't pass str to an num named arg");
dies-ok({num_named_arg(:arg(123))}, "can't pass int to an int named arg");
dies-ok({num_named_arg(:arg(nqp::list()))}, "can't pass obj to an num named arg");
is(num_named_arg(:arg(123.1)), '123.1', "can pass num to an num named arg");

dies-ok({str_named_arg(:arg(123))}, "can't pass int to an str named arg");
dies-ok({str_named_arg(:arg(123.3))}, "can't pass num to an str named arg");
dies-ok({str_named_arg(:arg(nqp::list()))}, "can't pass obj to an str named arg");
is(str_named_arg(:arg('foo')), 'foo', "can pass str to an str named arg");

sub foo(int $defaulted = 77) {
  nqp::add_i($defaulted, 700);
}
is(foo(), 777, 'a default value for a positional int argument works');

sub bar(int :$defaulted = 77) {
  nqp::add_i($defaulted, 700);
}

is(bar(), 777, 'a default value for a named int argument works');

is(bar(:defaulted(66)), 766, 'passing a native int argument (default not used)');

my %hash;
sub is_arg_null($arg) {
  nqp::isnull($arg);
}
ok(!is_arg_null(%hash<foo>), "%hash<foo> isn't null when used as an argument to a call");
