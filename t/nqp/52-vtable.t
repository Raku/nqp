#! nqp

class ABC {
    method () is parrot_vtable('get_number') { 123.0 }
    method () is parrot_vtable('get_string') { 'abc' }
}

plan(4);

my $abc := ABC.new;
ok($abc == 123,   "get_number vtable works");
ok($abc eq 'abc', "get_string vtable works");

class DEF is ABC {
    method () is parrot_vtable('get_string') { 'def' }
}

my $def := DEF.new;
ok($def == 123,   "get_number vtable from parent works");
ok($def eq 'def', "get_string vtable as override works");
