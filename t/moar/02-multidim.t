#! nqp

plan(176);

sub is-dims(@arr, @expected-dims, $description) {
    my $got-dims := nqp::dimensions(@arr);
    ok(nqp::elems($got-dims) == nqp::elems(@expected-dims), "$description - number of dimensions");
    my $ok := 1;
    my $i := 0;
    while $i < nqp::elems($got-dims) {
        $ok := 0 unless nqp::atpos_i($got-dims, $i) == @expected-dims[$i];
        $i++;
    }
    ok($ok, "$description - correct dimensions");
}
sub dies-ok($code, $description, :$message) {
    my $died := 0;
    my $got-message := '';
    try { $code(); CATCH { $died := 1; $got-message := nqp::getmessage($_); } }
    ok($died, $description);
    if $message {
        ok($got-message ~~ /$message/, "Exception message contained '$message'");
    }
}

# Normal dynamic array has a single element, irrespective of type or contents.
ok(nqp::numdimensions([]) == 1, 'numdimensions on normal array (1)');
ok(nqp::numdimensions([[],[]]) == 1, 'numdimensions on normal array (2)');
ok(nqp::numdimensions(nqp::list_i()) == 1, 'numdimensions on normal array (3)');

# Normal dynamic array reports one dimension with current elements.
is-dims([], [0], 'dimensions on normal array (1)');
is-dims([[],[]], [2], 'dimensions on normal array (2)');
is-dims(nqp::list_i(1), [1], 'dimensions on normal array (3)');

# Setting dimensions on a normal dynamic array only works for one dimension,
# and is equivalent to setelems.
{
    my @a;
    dies-ok({ nqp::setdimensions(@a, nqp::list_i()) }, 'cannot set zero dimensions on normal array');
    dies-ok({ nqp::setdimensions(@a, nqp::list_i(3,3)) }, 'cannot set two dimensions on normal array');
    dies-ok({ nqp::setdimensions(@a, nqp::list_i(3,3,3)) }, 'cannot set three dimensions on normal array');
    nqp::setdimensions(@a, nqp::list_i(24));
    ok(nqp::elems(@a) == 24, 'can set single dimension on normal array, and it influences elems');
    nqp::push(@a, 1);
    ok(nqp::elems(@a) == 25, 'normal array stays dynamic even with setdimensions');
}

# Can use n-dimensional access ops with a single dimension on a normal array.
{
    my @normal_a := ('a', 'b');
    ok(nqp::atposnd(@normal_a, nqp::list_i(0)) eq 'a', 'normal object array can be read with multi-dim op (1)');
    ok(nqp::atposnd(@normal_a, nqp::list_i(1)) eq 'b', 'normal object array can be read with multi-dim op (2)');
    my @normal_b := nqp::list_i(41, 42);
    ok(nqp::atposnd_i(@normal_b, nqp::list_i(0)) == 41, 'normal int array can be read with multi-dim op (1)');
    ok(nqp::atposnd_i(@normal_b, nqp::list_i(1)) == 42, 'normal int array can be read with multi-dim op (2)');
    my @normal_c := nqp::list_n(4.1e0, 4.2e0);
    ok(nqp::atposnd_n(@normal_c, nqp::list_i(0)) == 4.1e0, 'normal num array can be read with multi-dim op (1)');
    ok(nqp::atposnd_n(@normal_c, nqp::list_i(1)) == 4.2e0, 'normal num array can be read with multi-dim op (2)');
    my @normal_d := nqp::list_s('omg', 'wat');
    ok(nqp::atposnd_s(@normal_d, nqp::list_i(0)) eq 'omg', 'normal str array can be read with multi-dim op (1)');
    ok(nqp::atposnd_s(@normal_d, nqp::list_i(1)) eq 'wat', 'normal str array can be read with multi-dim op (2)');
    dies-ok({ nqp::atposnd([], nqp::list_i()) }, 'access to normal array with zero-elem indices list dies');
    dies-ok({ nqp::atposnd([[1]], nqp::list_i(0, 0)) }, 'access to normal array with two-elem indices list dies');
}

# Can use n-dimensional bind ops with a single dimension on a normal array.
{
    my @normal_a;
    nqp::bindposnd(@normal_a, nqp::list_i(0), 'a');
    nqp::bindposnd(@normal_a, nqp::list_i(1), 'b');
    ok(@normal_a[0] eq 'a', 'normal object array can be bound with multi-dim op (1)');
    ok(@normal_a[1] eq 'b', 'normal object array can be bound with multi-dim op (2)');
    my @normal_b := nqp::list_i();
    nqp::bindposnd_i(@normal_b, nqp::list_i(0), 41);
    nqp::bindposnd_i(@normal_b, nqp::list_i(1), 42);
    ok(nqp::atpos_i(@normal_b, 0) == 41, 'normal int array can be bound with multi-dim op (1)');
    ok(nqp::atpos_i(@normal_b, 1) == 42, 'normal int array can be bound with multi-dim op (2)');
    my @normal_c := nqp::list_n();
    nqp::bindposnd_n(@normal_c, nqp::list_i(0), 4.1e0);
    nqp::bindposnd_n(@normal_c, nqp::list_i(1), 4.2e0);
    ok(nqp::atpos_n(@normal_c, 0) == 4.1e0, 'normal num array can be bound with multi-dim op (1)');
    ok(nqp::atpos_n(@normal_c, 1) == 4.2e0, 'normal num array can be bound with multi-dim op (2)');
    my @normal_d := nqp::list_s();
    nqp::bindposnd_s(@normal_d, nqp::list_i(0), 'omg');
    nqp::bindposnd_s(@normal_d, nqp::list_i(1), 'wat');
    ok(nqp::atpos_s(@normal_d, 0) eq 'omg', 'normal str array can be bound with multi-dim op (1)');
    ok(nqp::atpos_s(@normal_d, 1) eq 'wat', 'normal str array can be bound with multi-dim op (2)');
    dies-ok({ nqp::bindposnd([], nqp::list_i(), 0) }, 'bind to normal array with zero-elem indices list dies');
    dies-ok({ nqp::bindposnd([[1]], nqp::list_i(0, 0), 0) }, 'bind to normal array with two-elem indices list dies');
}

# Special 2D and 3D access ops all die on normal arrays.
dies-ok({ nqp::atpos2d(nqp::list(), 0, 0) }, 'normal object array cannot be accessed in 2D');
dies-ok({ nqp::atpos2d_i(nqp::list_i(), 0, 0) }, 'normal int array cannot be accessed in 2D');
dies-ok({ nqp::atpos2d_n(nqp::list_n(), 0, 0) }, 'normal num array cannot be accessed in 2D');
dies-ok({ nqp::atpos2d_s(nqp::list_s(), 0, 0) }, 'normal str array cannot be accessed in 2D');
dies-ok({ nqp::atpos3d(nqp::list(), 0, 0, 0) }, 'normal object array cannot be accessed in 3D');
dies-ok({ nqp::atpos3d_i(nqp::list_i(), 0, 0, 0) }, 'normal int array cannot be accessed in 3D');
dies-ok({ nqp::atpos3d_n(nqp::list_n(), 0, 0, 0) }, 'normal num array cannot be accessed in 3D');
dies-ok({ nqp::atpos3d_s(nqp::list_s(), 0, 0, 0) }, 'normal str array cannot be accessed in 3D');
dies-ok({ nqp::bindpos2d(nqp::list(), 0, 0, NQPMu) }, 'normal object array cannot be accessed in 2D');
dies-ok({ nqp::bindpos2d_i(nqp::list_i(), 0, 0, 42) }, 'normal int array cannot be accessed in 2D');
dies-ok({ nqp::bindpos2d_n(nqp::list_n(), 0, 0, 4.2e0) }, 'normal num array cannot be accessed in 2D');
dies-ok({ nqp::bindpos2d_s(nqp::list_s(), 0, 0, 'omg') }, 'normal str array cannot be accessed in 2D');
dies-ok({ nqp::bindpos3d(nqp::list(), 0, 0, 0, NQPMu) }, 'normal object array cannot be accessed in 3D');
dies-ok({ nqp::bindpos3d_i(nqp::list_i(), 0, 0, 0, 42) }, 'normal int array cannot be accessed in 3D');
dies-ok({ nqp::bindpos3d_n(nqp::list_n(), 0, 0, 0, 4.2e0) }, 'normal num array cannot be accessed in 3D');
dies-ok({ nqp::bindpos3d_s(nqp::list_s(), 0, 0, 0, 'omg') }, 'normal str array cannot be accessed in 3D');

# Trying to create 0-dimensional array type dies.
dies-ok({
    my $type := nqp::newtype(nqp::knowhow(), 'MultiDimArray');
    nqp::composetype($type, nqp::hash('array', nqp::hash('dimensions', 0)));
}, 'Cannot create 0-dimensions MultiDimArray REPR');

# Can create and allocate a 1-dimensional array.
my $array_type_1d := nqp::newtype(nqp::knowhow(), 'MultiDimArray');
nqp::composetype($array_type_1d, nqp::hash('array', nqp::hash('dimensions', 1)));
ok(nqp::isconcrete(nqp::create($array_type_1d)), 'Can create 1-d array');
ok(nqp::numdimensions(nqp::create($array_type_1d)) == 1, '1-d array claims to have 1 dimension');

# Can create and allocate a 2-dimensional array.
my $array_type_2d := nqp::newtype(nqp::knowhow(), 'MultiDimArray');
nqp::composetype($array_type_2d, nqp::hash('array', nqp::hash('dimensions', 2)));
ok(nqp::isconcrete(nqp::create($array_type_2d)), 'Can create 2-d array');
ok(nqp::numdimensions(nqp::create($array_type_2d)) == 2, '2-d array claims to have 2 dimension');

# Can create and allocate a 3-dimensional array.
my $array_type_3d := nqp::newtype(nqp::knowhow(), 'MultiDimArray');
nqp::composetype($array_type_3d, nqp::hash('array', nqp::hash('dimensions', 3)));
ok(nqp::isconcrete(nqp::create($array_type_3d)), 'Can create 3-d array');
ok(nqp::numdimensions(nqp::create($array_type_3d)) == 3, '3-d array claims to have 3 dimension');

# 1D array can have dimensions set as expected.
{
    my $test_1d := nqp::create($array_type_1d);
    nqp::setdimensions($test_1d, nqp::list_i(3));
    my $dims := nqp::dimensions($test_1d);
    ok(nqp::elems($dims) == 1, 'Can introspect set dimensions on 1D array (1)');
    ok(nqp::atpos_i($dims, 0) == 3, 'Can introspect set dimensions on 1D array (2)');
}

# 2D array can have dimensions set as expected.
{
    my $test_2d := nqp::create($array_type_2d);
    nqp::setdimensions($test_2d, nqp::list_i(4, 3));
    my $dims := nqp::dimensions($test_2d);
    ok(nqp::elems($dims) == 2, 'Can introspect set dimensions on 2D array (1)');
    ok(nqp::atpos_i($dims, 0) == 4, 'Can introspect set dimensions on 2D array (2)');
    ok(nqp::atpos_i($dims, 1) == 3, 'Can introspect set dimensions on 2D array (3)');
}

# 3D array can have dimensions set as expected.
{
    my $test_3d := nqp::create($array_type_3d);
    nqp::setdimensions($test_3d, nqp::list_i(24, 60, 60));
    my $dims := nqp::dimensions($test_3d);
    ok(nqp::elems($dims) == 3, 'Can introspect set dimensions on 2D array (1)');
    ok(nqp::atpos_i($dims, 0) == 24, 'Can introspect set dimensions on 2D array (2)');
    ok(nqp::atpos_i($dims, 1) == 60, 'Can introspect set dimensions on 2D array (3)');
    ok(nqp::atpos_i($dims, 2) == 60, 'Can introspect set dimensions on 2D array (4)');
}

# Cannot set up wrong number of dimensions.
dies-ok({ nqp::setdimensions(nqp::create($array_type_1d), nqp::list_i()) },
    'Cannot set-dimensions a 1D array with 0 dimensions');
dies-ok({ nqp::setdimensions(nqp::create($array_type_1d), nqp::list_i(3, 3)) },
    'Cannot set-dimensions a 1D array with 2 dimensions');
dies-ok({ nqp::setdimensions(nqp::create($array_type_2d), nqp::list_i()) },
    'Cannot set-dimensions a 2D array with 0 dimensions');
dies-ok({ nqp::setdimensions(nqp::create($array_type_2d), nqp::list_i(3)) },
    'Cannot set-dimensions a 2D array with 1 dimension');
dies-ok({ nqp::setdimensions(nqp::create($array_type_2d), nqp::list_i(3,3,3)) },
    'Cannot set-dimensions a 2D array with 3 dimension');

# Cannot set dimensions more than once.
dies-ok({
    my $arr := nqp::create($array_type_1d);
    nqp::setdimensions($arr, nqp::list_i(3));
    nqp::setdimensions($arr, nqp::list_i(3));
}, 'Cannot set dimensions more than once (1)');
dies-ok({
    my $arr := nqp::create($array_type_2d);
    nqp::setdimensions($arr, nqp::list_i(3, 3));
    nqp::setdimensions($arr, nqp::list_i(4, 4));
}, 'Cannot set dimensions more than once (2)');

# Can access 1D array correctly.
{
    my $test_1d := nqp::create($array_type_1d);
    nqp::setdimensions($test_1d, nqp::list_i(3));
    nqp::bindposnd($test_1d, nqp::list_i(0), 'cwrw');
    nqp::bindposnd($test_1d, nqp::list_i(1), 'pivo');
    nqp::bindposnd($test_1d, nqp::list_i(2), 'biru');
    dies-ok({ nqp::bindposnd($test_1d, nqp::list_i(), 'cola') },
        'Bind to 1D array with 0 indices dies');
    dies-ok({ nqp::bindposnd($test_1d, nqp::list_i(0, 1), 'cola') },
        'Bind to 1D array with 2 indices dies');
    dies-ok({ nqp::bindposnd($test_1d, nqp::list_i(-1), 'cola') },
        'Bind to 1D array with negative index dies');
    dies-ok({ nqp::bindposnd($test_1d, nqp::list_i(3), 'cola') },
        'Bind to 1D array with out-of-range index dies');
    ok(nqp::atposnd($test_1d, nqp::list_i(0)) eq 'cwrw', 'Access to 1D array works (1)');
    ok(nqp::atposnd($test_1d, nqp::list_i(1)) eq 'pivo', 'Access to 1D array works (2)');
    ok(nqp::atposnd($test_1d, nqp::list_i(2)) eq 'biru', 'Access to 1D array works (3)');
    dies-ok({ nqp::atposnd($test_1d, nqp::list_i()) },
        'Access to 1D array with 0 indices dies');
    dies-ok({ nqp::atposnd($test_1d, nqp::list_i(0, 1)) },
        'Access to 1D array with 2 indices dies');
    dies-ok({ nqp::atposnd($test_1d, nqp::list_i(-1)) },
        'Access to 1D array with negative index dies');
    dies-ok({ nqp::atposnd($test_1d, nqp::list_i(3)) },
        'Access to 1D array with out-of-range index dies');
}

# Can access 2D array correctly.
{
    my $test_2d := nqp::create($array_type_2d);
    nqp::setdimensions($test_2d, nqp::list_i(2, 3));
    nqp::bindposnd($test_2d, nqp::list_i(0,0), 101);
    nqp::bindposnd($test_2d, nqp::list_i(0,1), 102);
    nqp::bindposnd($test_2d, nqp::list_i(0,2), 103);
    nqp::bindposnd($test_2d, nqp::list_i(1,0), 201);
    nqp::bindposnd($test_2d, nqp::list_i(1,1), 202);
    nqp::bindposnd($test_2d, nqp::list_i(1,2), 203);
    dies-ok({ nqp::bindposnd($test_2d, nqp::list_i(), 69) },
        'Bind to 2D array with 0 indices dies');
    dies-ok({ nqp::bindposnd($test_2d, nqp::list_i(0), 69) },
        'Bind to 2D array with 1 indices dies');
    dies-ok({ nqp::bindposnd($test_2d, nqp::list_i(0, 0, 0), 69) },
        'Bind to 2D array with 3 indices dies');
    dies-ok({ nqp::bindposnd($test_2d, nqp::list_i(-1, 0), 69) },
        'Bind to 2D array with negative index dies (1)');
    dies-ok({ nqp::bindposnd($test_2d, nqp::list_i(0, -1), 69) },
        'Bind to 2D array with negative index dies (2)');
    dies-ok({ nqp::bindposnd($test_2d, nqp::list_i(2, 0), 69) },
        'Bind to 2D array with out-of-range index dies (1)');
    dies-ok({ nqp::bindposnd($test_2d, nqp::list_i(0, 3), 69) },
        'Bind to 2D array with out-of-range index dies (2)');
    ok(nqp::atposnd($test_2d, nqp::list_i(0, 0)) == 101, 'Access to 2D array works (1)');
    ok(nqp::atposnd($test_2d, nqp::list_i(0, 1)) == 102, 'Access to 2D array works (2)');
    ok(nqp::atposnd($test_2d, nqp::list_i(0, 2)) == 103, 'Access to 2D array works (3)');
    ok(nqp::atposnd($test_2d, nqp::list_i(1, 0)) == 201, 'Access to 2D array works (4)');
    ok(nqp::atposnd($test_2d, nqp::list_i(1, 1)) == 202, 'Access to 2D array works (5)');
    ok(nqp::atposnd($test_2d, nqp::list_i(1, 2)) == 203, 'Access to 2D array works (6)');
    dies-ok({ nqp::atposnd($test_2d, nqp::list_i()) },
        'Access to 2D array with 0 indices dies');
    dies-ok({ nqp::atposnd($test_2d, nqp::list_i(0)) },
        'Access to 2D array with 1 indices dies');
    dies-ok({ nqp::atposnd($test_2d, nqp::list_i(0, 0, 0)) },
        'Access to 2D array with 3 indices dies');
    dies-ok({ nqp::atposnd($test_2d, nqp::list_i(-1, 0)) },
        'Access to 2D array with negative index dies (1)');
    dies-ok({ nqp::atposnd($test_2d, nqp::list_i(0, -1)) },
        'Access to 2D array with negative index dies (2)');
    dies-ok({ nqp::atposnd($test_2d, nqp::list_i(2, 0)) },
        'Access to 2D array with out-of-range index dies (1)');
    dies-ok({ nqp::atposnd($test_2d, nqp::list_i(0, 3)) },
        'Access to 2D array with out-of-range index dies (2)');
}

# Can have 3D list of native int.
{
    my $int_array_type_3d := nqp::newtype(nqp::knowhow(), 'MultiDimArray');
    nqp::composetype($int_array_type_3d, nqp::hash('array',
        nqp::hash('type', int, 'dimensions', 3)));
    my $int_array_3d := nqp::create($int_array_type_3d);
    nqp::setdimensions($int_array_3d, nqp::list_i(2,2,2));
    nqp::bindposnd_i($int_array_3d, nqp::list_i(0, 0, 0), 100);
    nqp::bindposnd_i($int_array_3d, nqp::list_i(0, 0, 1), 101);
    nqp::bindposnd_i($int_array_3d, nqp::list_i(0, 1, 0), 110);
    nqp::bindposnd_i($int_array_3d, nqp::list_i(0, 1, 1), 111);
    nqp::bindposnd_i($int_array_3d, nqp::list_i(1, 0, 0), 200);
    nqp::bindposnd_i($int_array_3d, nqp::list_i(1, 0, 1), 201);
    nqp::bindposnd_i($int_array_3d, nqp::list_i(1, 1, 0), 210);
    nqp::bindposnd_i($int_array_3d, nqp::list_i(1, 1, 1), 211);
    ok(nqp::atposnd_i($int_array_3d, nqp::list_i(0, 0, 0)) == 100, 'Value stored in 3D native int array (1)');
    ok(nqp::atposnd_i($int_array_3d, nqp::list_i(0, 0, 1)) == 101, 'Value stored in 3D native int array (2)');
    ok(nqp::atposnd_i($int_array_3d, nqp::list_i(0, 1, 0)) == 110, 'Value stored in 3D native int array (3)');
    ok(nqp::atposnd_i($int_array_3d, nqp::list_i(0, 1, 1)) == 111, 'Value stored in 3D native int array (4)');
    ok(nqp::atposnd_i($int_array_3d, nqp::list_i(1, 0, 0)) == 200, 'Value stored in 3D native int array (5)');
    ok(nqp::atposnd_i($int_array_3d, nqp::list_i(1, 0, 1)) == 201, 'Value stored in 3D native int array (6)');
    ok(nqp::atposnd_i($int_array_3d, nqp::list_i(1, 1, 0)) == 210, 'Value stored in 3D native int array (7)');
    ok(nqp::atposnd_i($int_array_3d, nqp::list_i(1, 1, 1)) == 211, 'Value stored in 3D native int array (8)');
    dies-ok({ nqp::atposnd_n($int_array_3d, nqp::list_i(1, 1, 1)) }, 'Wrong type access to native int array dies (1)');
    dies-ok({ nqp::atposnd_s($int_array_3d, nqp::list_i(1, 1, 1)) }, 'Wrong type access to native int array dies (2)');
    dies-ok({ nqp::atposnd($int_array_3d, nqp::list_i(1, 1, 1)) }, 'Wrong type access to native int array dies (3)');
}

# push/pop/shift/unshift/splice dies appropriately
{
    my $test_1d := nqp::create($array_type_1d);
    nqp::setdimensions($test_1d, nqp::list_i(3));
    dies-ok({ nqp::pop($test_1d) }, :message('pop'), 'popping dies');
    dies-ok({ nqp::push($test_1d, 1) }, :message('push'), 'pushing dies');
    dies-ok({ nqp::shift($test_1d) }, :message('shift'), 'shifting dies');
    dies-ok({ nqp::unshift($test_1d, 1) }, :message('unshift'), 'unshifting dies');
    dies-ok({ nqp::splice($test_1d, [], 0, 3) }, :message('splice'), 'splicing dies');
}

# can use normal array access ops on a 1D multi-dimensioned array (this makes
# it convenient to use these for fixed side 1D arrays)
{
    my $test_1d := nqp::create($array_type_1d);
    nqp::setdimensions($test_1d, nqp::list_i(3));
    nqp::bindpos($test_1d, 0, 'cwrw');
    nqp::bindpos($test_1d, 1, 'pivo');
    nqp::bindpos($test_1d, 2, 'biru');
    dies-ok({ nqp::bindpos($test_1d, -1, 'cola') },
        'Using bindpos on 1D array with negative index dies');
    dies-ok({ nqp::bindpos($test_1d, 3, 'cola') },
        'Using bindpos on 1D array with out-of-range index dies');
    ok(nqp::atpos($test_1d, 0) eq 'cwrw', 'Access to 1D array with bindpos/atpos works (1)');
    ok(nqp::atpos($test_1d, 1) eq 'pivo', 'Access to 1D array with bindpos/atpos works (2)');
    ok(nqp::atpos($test_1d, 2) eq 'biru', 'Access to 1D array with bindpos/atpos works (3)');
    dies-ok({ nqp::atpos($test_1d, -1) },
        'Using atpos on 1D array with negative index dies');
    dies-ok({ nqp::atpos($test_1d, 3) },
        'Using atpos on 1D array with out-of-range index dies');
}

# cannot use normal array access ops on higher dimensioned arrays
{
    my $test_2d := nqp::create($array_type_2d);
    nqp::setdimensions($test_2d, nqp::list_i(2, 3));
    dies-ok({ nqp::bindpos($test_2d, 0, []) }, 'cannot use bindpos on 2D array');
    dies-ok({ nqp::atpos($test_2d, 0) }, 'cannot use atpos on 2D array');
}

# can use setelems to configure dimensions for a 1D array
{
    my $test_1d := nqp::create($array_type_1d);
    nqp::setelems($test_1d, 3);
    is-dims($test_1d, [3], 'can use setelems op to set dimension of 1D array');
    dies-ok({ nqp::setelems($test_1d, 3); }, 'can only used setelems once on 1D array');

    my $test_2d := nqp::create($array_type_2d);
    dies-ok({ nqp::setelems($test_2d, 3); }, 'cannot use setelems on a 2D array');
}

# elems returns the first dimension
{
    my $test_1d := nqp::create($array_type_1d);
    nqp::setdimensions($test_1d, nqp::list_i(3));
    ok(nqp::elems($test_1d) == 3, 'elems returns only dimension of a 1D array');

    my $test_2d := nqp::create($array_type_2d);
    nqp::setdimensions($test_2d, nqp::list_i(2, 3));
    ok(nqp::elems($test_2d) == 2, 'elems returns first dimension of a 2D array');
}

# can clone
{
    my $test_2d := nqp::create($array_type_2d);
    nqp::setdimensions($test_2d, nqp::list_i(2, 2));
    nqp::bindposnd($test_2d, nqp::list_i(0, 0), 10);
    nqp::bindposnd($test_2d, nqp::list_i(0, 1), 11);
    nqp::bindposnd($test_2d, nqp::list_i(1, 0), 20);
    nqp::bindposnd($test_2d, nqp::list_i(1, 1), 21);

    my $copied := nqp::clone($test_2d);
    ok(nqp::numdimensions($copied) == 2, 'Cloned MultiDimArray has correct number of dimensions');
    is-dims($test_2d, [2,2], 'Cloned MultiDimArray has correct dimensions');
    ok(nqp::atposnd($copied, nqp::list_i(0, 0)) == 10, 'Clone gets correct values (1)');
    ok(nqp::atposnd($copied, nqp::list_i(0, 1)) == 11, 'Clone gets correct values (2)');
    ok(nqp::atposnd($copied, nqp::list_i(1, 0)) == 20, 'Clone gets correct values (3)');
    ok(nqp::atposnd($copied, nqp::list_i(1, 1)) == 21, 'Clone gets correct values (4)');

    nqp::bindposnd($test_2d, nqp::list_i(0, 0), 42);
    nqp::bindposnd($test_2d, nqp::list_i(0, 1), 43);
    nqp::bindposnd($test_2d, nqp::list_i(1, 0), 44);
    nqp::bindposnd($test_2d, nqp::list_i(1, 1), 45);
    ok(nqp::atposnd($copied, nqp::list_i(0, 0)) == 10, 'Modifying original does not affect clone (1)');
    ok(nqp::atposnd($copied, nqp::list_i(0, 1)) == 11, 'Modifying original does not affect clone (2)');
    ok(nqp::atposnd($copied, nqp::list_i(1, 0)) == 20, 'Modifying original does not affect clone (3)');
    ok(nqp::atposnd($copied, nqp::list_i(1, 1)) == 21, 'Modifying original does not affect clone (4)');
}

# Special-cased 2D access ops work.
{
    my $test_2d := nqp::create($array_type_2d);
    nqp::setdimensions($test_2d, nqp::list_i(2, 3));
    nqp::bindpos2d($test_2d, 0, 0, 101);
    nqp::bindpos2d($test_2d, 0, 1, 102);
    nqp::bindpos2d($test_2d, 0, 2, 103);
    nqp::bindpos2d($test_2d, 1, 0, 201);
    nqp::bindpos2d($test_2d, 1, 1, 202);
    nqp::bindpos2d($test_2d, 1, 2, 203);
    dies-ok({ nqp::bindpos2d($test_2d, -1, 0, 69) },
        'Bind with special 2D ops to 2D array with negative index dies (1)');
    dies-ok({ nqp::bindpos2d($test_2d, 0, -1, 69) },
        'Bind with special 2D ops to 2D array with negative index dies (2)');
    dies-ok({ nqp::bindpos2d($test_2d, 2, 0, 69) },
        'Bind with special 2D ops to 2D array with out-of-range index dies (1)');
    dies-ok({ nqp::bindpos2d($test_2d, 0, 3, 69) },
        'Bind with special 2D ops to 2D array with out-of-range index dies (2)');
    ok(nqp::atpos2d($test_2d, 0, 0) == 101, 'Access to 2D array works with special 2D ops (1)');
    ok(nqp::atpos2d($test_2d, 0, 1) == 102, 'Access to 2D array works with special 2D ops (2)');
    ok(nqp::atpos2d($test_2d, 0, 2) == 103, 'Access to 2D array works with special 2D ops (3)');
    ok(nqp::atpos2d($test_2d, 1, 0) == 201, 'Access to 2D array works with special 2D ops (4)');
    ok(nqp::atpos2d($test_2d, 1, 1) == 202, 'Access to 2D array works with special 2D ops (5)');
    ok(nqp::atpos2d($test_2d, 1, 2) == 203, 'Access to 2D array works with special 2D ops (6)');
    dies-ok({ nqp::atpos2d($test_2d, -1, 0) },
        'Access with special 2D ops to 2D array with negative index dies (1)');
    dies-ok({ nqp::atpos2d($test_2d, 0, -1) },
        'Access with special 2D ops to 2D array with negative index dies (2)');
    dies-ok({ nqp::atpos2d($test_2d, 2, 0) },
        'Access with special 2D ops to 2D array with out-of-range index dies (1)');
    dies-ok({ nqp::atpos2d($test_2d, 0, 3) },
        'Access with special 2D ops to 2D array with out-of-range index dies (2)');
}

# Special-cased 3D access ops work.
{
    my $int_array_type_3d := nqp::newtype(nqp::knowhow(), 'MultiDimArray');
    nqp::composetype($int_array_type_3d, nqp::hash('array',
        nqp::hash('type', int, 'dimensions', 3)));
    my $int_array_3d := nqp::create($int_array_type_3d);
    nqp::setdimensions($int_array_3d, nqp::list_i(2,2,2));
    nqp::bindpos3d_i($int_array_3d, 0, 0, 0, 100);
    nqp::bindpos3d_i($int_array_3d, 0, 0, 1, 101);
    nqp::bindpos3d_i($int_array_3d, 0, 1, 0, 110);
    nqp::bindpos3d_i($int_array_3d, 0, 1, 1, 111);
    nqp::bindpos3d_i($int_array_3d, 1, 0, 0, 200);
    nqp::bindpos3d_i($int_array_3d, 1, 0, 1, 201);
    nqp::bindpos3d_i($int_array_3d, 1, 1, 0, 210);
    nqp::bindpos3d_i($int_array_3d, 1, 1, 1, 211);
    ok(nqp::atpos3d_i($int_array_3d, 0, 0, 0) == 100, 'Can use special case 3D ops with 3D native int array (1)');
    ok(nqp::atpos3d_i($int_array_3d, 0, 0, 1) == 101, 'Can use special case 3D ops with 3D native int array (2)');
    ok(nqp::atpos3d_i($int_array_3d, 0, 1, 0) == 110, 'Can use special case 3D ops with 3D native int array (3)');
    ok(nqp::atpos3d_i($int_array_3d, 0, 1, 1) == 111, 'Can use special case 3D ops with 3D native int array (4)');
    ok(nqp::atpos3d_i($int_array_3d, 1, 0, 0) == 200, 'Can use special case 3D ops with 3D native int array (5)');
    ok(nqp::atpos3d_i($int_array_3d, 1, 0, 1) == 201, 'Can use special case 3D ops with 3D native int array (6)');
    ok(nqp::atpos3d_i($int_array_3d, 1, 1, 0) == 210, 'Can use special case 3D ops with 3D native int array (7)');
    ok(nqp::atpos3d_i($int_array_3d, 1, 1, 1) == 211, 'Can use special case 3D ops with 3D native int array (8)');
    dies-ok({ nqp::atpos3d_n($int_array_3d, 1, 1, 1) }, 'Wrong type access to native int array with special 3D ops dies (1)');
    dies-ok({ nqp::atpos3d_s($int_array_3d, 1, 1, 1) }, 'Wrong type access to native int array with special 3D ops dies (2)');
    dies-ok({ nqp::atpos3d($int_array_3d, 1, 1, 1) }, 'Wrong type access to native int array with special 3D ops dies (3)');
}
