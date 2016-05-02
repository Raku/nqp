#! nqp

# class inheritance

plan(6);

class ABC {
    method foo() {
        'ok 1';
    }

    method bar() {
        'ok 3';
    }
}

class XYZ is ABC {
    method foo() {
        'ok 2';
    }
}


my $abc := ABC.new();
my $xyz := XYZ.new();

ok($abc.foo() eq 'ok 1');
ok($xyz.foo() eq 'ok 2');
ok($xyz.bar() eq 'ok 3');
my $xyzhow := $xyz.HOW;
ok($xyzhow.isa($xyz, ABC));
ok($xyzhow.isa($xyz, XYZ));
ok(!$abc.HOW.isa($abc, XYZ));

