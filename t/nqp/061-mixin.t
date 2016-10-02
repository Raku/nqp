plan(8);

role TheRole {
    has $!a;
    method role_meth() { "called role method" }
    method get_attr() { $!a }
    method set_attr($v) { $!a := $v }
    method override_me() { "role method" }
}

class Example {
    method override_me() { "class method" }
}

my $obj := Example.new();
my $obj_m := Example.new();

is($obj.override_me(), "class method", "sanity (1)");
is($obj_m.override_me(), "class method", "sanity (2)");

$obj_m.HOW.mixin($obj_m, TheRole);

ok(nqp::istype($obj_m, Example),"after mixing in a role the object is still the old type");
ok(nqp::istype($obj_m, TheRole),"after mixing in a role nqp::istype sees the role");

is($obj_m.role_meth(), "called role method", "role method mixed in");

$obj_m.set_attr("stout");
is($obj_m.get_attr(), "stout", "attributes from role work properly");

is($obj_m.override_me(), "role method", "mixed in method overrides original one");
is($obj.override_me(), "class method", "mixing in is per object");
