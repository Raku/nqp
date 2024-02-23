plan(31);

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

role R {
    has $!r;
    method TWEAK() {
        nqp::push(@*TWEAKS,"R");
        $!r := 42;
    }
    method r() { $!r }
}

class D does R {
    has $!d;
    method TWEAK() {
        nqp::push(@*TWEAKS,"D");
        $!d := 666;
    }
    method d() { $!d }
}

my @*TWEAKS;
my $d := D.new;
is(nqp::join("",@*TWEAKS), "DR", 'Instantiating class D works');
is($d.d, 666, 'was D class attribute set');
is($d.r,  42, 'was R role attribute set');

role S {
    has $!s;
    method TWEAK() {
        nqp::push(@*TWEAKS,"S");
        $!s := 137;
    }
    method s() { $!s }
}

role T {
    has $!t;
    method TWEAK() {
        nqp::push(@*TWEAKS,"T");
        $!t := 384;
    }
    method t() { $!t }
}

class E does R does S does T {
    has $!e;
    method TWEAK() {
        nqp::push(@*TWEAKS,"E");
        $!e := 314;
    }
    method e() { $!e }
}

@*TWEAKS := ();
my $e := E.new;
is(nqp::join("",@*TWEAKS), "ERST", 'Instantiating class E works');
is($e.e, 314, 'was E class attribute set');
is($e.r,  42, 'was R role attribute set');
is($e.s, 137, 'was S role attribute set');
is($e.t, 384, 'was T role attribute set');

role  ST does S does T { }

class F does R does ST {
    has $!f;
    method TWEAK() {
        nqp::push(@*TWEAKS,"F");
        $!f := 274;
    }
    method f() { $!f }
}

@*TWEAKS := ();
my $f := F.new;
is(nqp::join("",@*TWEAKS), "FRST", 'Instantiating class F works');
is($f.f, 274, 'was F class attribute set');
is($f.r,  42, 'was R role attribute set');
is($f.s, 137, 'was S role attribute set');
is($f.t, 384, 'was T role attribute set');

role RST does R does S does T { }

class G does RST {
    has $!g;
    method TWEAK() {
        nqp::push(@*TWEAKS,"G");
        $!g := 251;
    }
    method g() { $!g }
}

@*TWEAKS := ();
my $g := G.new;
is(nqp::join("",@*TWEAKS), "GRST", 'Instantiating class G works');
is($g.g, 251, 'was G class attribute set');
is($g.r,  42, 'was R role attribute set');
is($g.s, 137, 'was S role attribute set');
is($g.t, 384, 'was T role attribute set');

class H does T does S does R {
    has $!h;
    method TWEAK() {
        nqp::push(@*TWEAKS,"H");
        $!h := 777;
    }
    method h() { $!h }
}

@*TWEAKS := ();
my $h := H.new;
is(nqp::join("",@*TWEAKS), "HTSR", 'Instantiating class H works');
is($h.h, 777, 'was H class attribute set');
is($h.r,  42, 'was R role attribute set');
is($h.s, 137, 'was S role attribute set');
is($h.t, 384, 'was T role attribute set');
