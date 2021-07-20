plan(13);

my $cache := nqp::null();

sub reset_cache() {
    $cache := nqp::null();
}

sub add_to_cache($result) {
    sub (*@args) {
        $cache := nqp::multicacheadd($cache, nqp::usecapture(), $result);
    }
}

sub find_in_cache($expected, $desc? = '') {
    sub (*@args) {
        my $found := nqp::multicachefind($cache, nqp::usecapture());
        if nqp::isnull($found) {
            ok(1, ($desc ?? "$desc - " !! "") ~ "cache returned null");
        }
        else {
            is($found, $expected, $desc);
        }
    }
}


class Cont {
    has $!value;
};

nqp::setcontspec(Cont, 'code_pair', nqp::hash(
    'fetch', sub ($cont) {
        nqp::getattr($cont, Cont, '$!value');
    },
    'store', sub ($cont, $value) {
        nqp::bindattr($cont, Cont, '$!value', $value);
    }
));

class Foo {
}

class Bar {
}

add_to_cache(1)(Foo.new);
add_to_cache(2)(Bar.new);

find_in_cache(1, "finding in cache Foo")(Foo.new);

find_in_cache(2, "finding in cache Bar")(Bar.new);


my $cont1 := nqp::create(Cont);
my $cont2 := nqp::create(Cont);

nqp::assign($cont1, Foo.new);
nqp::assign($cont2, Bar.new);

find_in_cache(1, "finding in cache Foo wrapped in cont, after adding it raw")($cont1);
find_in_cache(2, "finding in cache Bar wrapped in cont, after adding it raw")($cont2);

reset_cache();

add_to_cache(1)($cont1);
add_to_cache(2)($cont2);

find_in_cache(1, "finding in cache Foo wrapped in cont, after adding it wrapped")($cont1);
find_in_cache(2, "finding in cache Bar wrapped in cont, after adding it wrapped")($cont2);

find_in_cache(1, "finding in cache Foo raw, after adding it wrapped")($cont1);
find_in_cache(2, "finding in cache Bar raw, after adding it wrapped")($cont2);

reset_cache();

{
  my $instance1 := Foo.new;
  my $instance2 := Foo.new;

  my $cont1 := nqp::create(Cont);
  nqp::assign($cont1, Foo);

  my $cont2 := nqp::create(Cont);
  nqp::assign($cont2, Foo.new);

  add_to_cache(1)(Foo);
  add_to_cache(2)($instance1);

  find_in_cache(1, "type object is cached separately")(Foo);
  find_in_cache(2, "instance is cached seprately from the type object")($instance1);
  find_in_cache(2, "instances share cache")($instance2);
  find_in_cache(1, "a type object wrapped in a container is cached")($cont1);
  find_in_cache(2, "a instance wrapped in a container is cached properly")($cont2);
}
