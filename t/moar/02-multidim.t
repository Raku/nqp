#! nqp

plan(57);

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
sub dies-ok($code, $description) {
    my $fail := 0;
    try { $code(); CATCH { $fail := 1; } }
    ok($fail, $description);
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
