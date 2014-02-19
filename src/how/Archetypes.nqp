# Provides various properties of the type of type a given meta-object
# implements. This are used in various ways by the compiler and meta-model
# to do correct code generation or to detect illegal use of types in
# contexts with certain requirements.
my knowhow Archetypes {
    # Can this serve as a nominal type? Implies memoizability
    # amongst other things.
    has $!nominal;
    
    # If it's not nominal, does it know how to provide a nominal
    # type part of itself?
    has $!nominalizable;
    
    # Can this be inherited from?
    has $!inheritable;
    
    # If it's not inheritable, does it know how to produce something
    # that is?
    has $!inheritalizable;
    
    # Can this be composed (either with flattening composition, or used
    # as a mixin)?
    has $!composable;
    
    # If it's not composable, does it know how to produce something
    # that is?
    has $!composalizable;
    
    # Is it generic, in the sense of "we don't know what type this is
    # yet"? Note that a parametric type would not be generic - even if
    # it has missing parts, it defines a type. A type variable is generic,
    # however. This tends to cause various kinds of late (or at least
    # delayed) reification. In some contexts, an unresolved generic is
    # fatal.
    has $!generic;
    
    # Is it a parametric type - that is, it has missing bits that need
    # to be filled out before it can be used? Unlike generic, something
    # that is parametric does define a type - though we may need the gaps
    # filled it before it's useful in some way.
    has $!parametric;
    
    method new(:$nominal, :$inheritable, :$composable, :$parametric) {
        my $arch := nqp::create(self);
        $arch.BUILD(:nominal($nominal), :inheritable($inheritable),
            :composable($composable), :parametric($parametric));
        $arch
    }
    
    method BUILD(:$nominal, :$inheritable, :$composable, :$parametric) {
        $!nominal := $nominal;
        $!inheritable := $inheritable;
        $!composable := $composable;
        $!parametric := $parametric;
    }
    
    method nominal() { nqp::ifnull($!nominal, 0) }
    method nominalizable() { nqp::ifnull($!nominalizable, 0) }
    method inheritable() { nqp::ifnull($!inheritable, 0) }
    method inheritalizable() { nqp::ifnull($!inheritalizable, 0) }
    method composable() { nqp::ifnull($!composable, 0) }
    method composalizable() { nqp::ifnull($!composalizable, 0) }
    method generic() { nqp::ifnull($!generic, 0) }
    method parametric() { nqp::ifnull($!parametric, 0) }
}
