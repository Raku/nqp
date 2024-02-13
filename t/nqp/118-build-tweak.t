plan(8);

my $buildA := 0;
my $tweakA := 0;

class A {
    method BUILD() { ++$buildA }
    method TWEAK() { ++$tweakA }
}

A.new;
is($buildA, 1, 'did A call BUILD A');
is($tweakA, 1, 'did A call TWEAK A');

class B is A { }
B.new;
is($buildA, 2, 'did B call BUILD A');
is($tweakA, 2, 'did B call TWEAK A');

my $buildC := 0;
my $tweakC := 0;

class C is A {
    method BUILD() { ++$buildC }
    method TWEAK() { ++$tweakC }
}

C.new;
is($buildA, 3, 'did C call BUILD A');
is($tweakA, 3, 'did C call TWEAK A');
is($buildC, 1, 'did C call BUILD C');
is($tweakC, 1, 'did C call TWEAK C');
