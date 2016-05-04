#! nqp

# class inheritance

plan(9);

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

class Parent {
    has $!attr;
    method get_parent() {
        $!attr;
    }
    method set_parent($value) {
        $!attr := $value;
    }
    method foo() {
        100;
    }
    method use_class() {
        $?CLASS.foo;
    }
}

class Child is Parent {
    has $!attr;
    method get_child() {
        $!attr;
    }
    method set_child($value) {
        $!attr := $value;
    }
    method foo() {
        200;
    }
}

my $instance := Child.new();
$instance.set_parent(123);
$instance.set_child(456);

ok($instance.get_parent == 123, "we can get the attr from the parent class");
ok($instance.get_child == 456, "...and the child one");
ok($instance.use_class == 100, "you can call methods using \$?CLASS");
