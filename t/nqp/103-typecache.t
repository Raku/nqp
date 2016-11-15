plan(17);

class IsThisType {
}
class IsntThisType {
}


class TypeCheckTestHOW {
    has int $!type_check_called;
    method new_type() {
        nqp::newtype(self, 'P6opaque');
    }
    method type_check($obj, $type) {
        $!type_check_called := $!type_check_called + 1;
        return 0 if nqp::eqaddr($type, IsntThisType);
        return 1 if nqp::eqaddr($type, IsThisType);
        ok(0, "unexpected argument passed to type_check");
    }


    method type_check_called() {
        $!type_check_called;
    }
}

my $no_cache := TypeCheckTestHOW.new.new_type;
ok(nqp::istype($no_cache, IsThisType), 'nqp::istype with no type check cache (+)');
ok(!nqp::istype($no_cache, IsntThisType), 'nqp::istype with no type check cache (-)');
is($no_cache.HOW.type_check_called, 2, "called type_check twice");

my $default := TypeCheckTestHOW.new.new_type;
nqp::settypecache($default, nqp::list(IsThisType));
ok(nqp::istype($default, IsThisType), 'nqp::istype with cache and default mode (+)');
ok(!nqp::istype($default, IsntThisType), 'nqp::istype with cache and defaullt mode (-)');
is($default.HOW.type_check_called, 0, "didn't call type_check");

my $definitive := TypeCheckTestHOW.new.new_type;
nqp::settypecache($definitive, nqp::list(IsThisType));
nqp::settypecheckmode($definitive, nqp::const::TYPE_CHECK_CACHE_DEFINITIVE);
ok(nqp::istype($definitive, IsThisType), 'TYPE_CHECK_CACHE_DEFINITIVE istype (+)');
ok(!nqp::istype($definitive, IsntThisType), 'TYPE_CHECK_CACHE_DEFINITIVE istype (-)');
ok(!$definitive.HOW.type_check_called, "TYPE_CHECK_CACHE_DEFINITIVE didn't call type_check");

class TypeCheckConstant {
    has $!value;
    method new_type() {
        nqp::newtype(self, 'P6opaque');
    }
    method type_check($obj, $type) {
        $!value;
    }
}

class AcceptingType {
    has int $!accepts_type_called;

    has $!accepts;
    
    method accepts_type_called() {
        $!accepts_type_called;
    }
    method accepts_type($type, $obj) {
        $!accepts_type_called := $!accepts_type_called + 1;
        $!accepts;
    }
    method new_type() {
        nqp::newtype(self, 'P6opaque');
    }
}



my $type_check_false := TypeCheckConstant.new(value => 0).new_type;
my $type_check_true := TypeCheckConstant.new(value => 1).new_type;


my $accepts_true := AcceptingType.new(accepts => 1).new_type;
my $accepts_false := AcceptingType.new(accepts => 0).new_type;
my $accepts_not_called := AcceptingType.new(accepts => 0).new_type;

nqp::settypecheckmode($accepts_true, nqp::const::TYPE_CHECK_NEEDS_ACCEPTS);
nqp::settypecheckmode($accepts_false, nqp::const::TYPE_CHECK_NEEDS_ACCEPTS);
nqp::settypecheckmode($accepts_not_called, nqp::const::TYPE_CHECK_NEEDS_ACCEPTS);

ok(nqp::istype($type_check_false, $accepts_true), 'nqp::const::TYPE_CHECK_NEEDS_ACCEPTS: istype (+)');
ok(!nqp::istype($type_check_false, $accepts_false), 'nqp::const::TYPE_CHECK_NEEDS_ACCEPTS: istype (-)');

my $not_really_accepting_type := AcceptingType.new(accepts => 1).new_type;
nqp::settypecheckmode($not_really_accepting_type, nqp::const::TYPE_CHECK_CACHE_DEFINITIVE);
ok(!nqp::istype($type_check_false, $not_really_accepting_type), "other flags don't count as nqp::const::TYPE_CHECK_NEEDS_ACCEPTS");

ok(nqp::istype($type_check_true, $accepts_not_called), 'nqp::const::TYPE_CHECK_NEEDS_ACCEPTS: istype where type_check is true');
is($accepts_not_called.HOW.accepts_type_called, 0, '...accept_type is not used');

my $type_check_false_with_cache := TypeCheckConstant.new(value => 0).new_type;
nqp::settypecache($type_check_false_with_cache, nqp::list($accepts_not_called));
ok(nqp::istype($type_check_false_with_cache, $accepts_true), 'nqp::const::TYPE_CHECK_NEEDS_ACCEPTS: istype when the type is not in cache but accepts return true');
ok(nqp::istype($type_check_false_with_cache, $accepts_not_called), 'nqp::const::TYPE_CHECK_NEEDS_ACCEPTS: istype when the type is in cache');
is($accepts_not_called.HOW.accepts_type_called, 0, '...accept_type is not called');

