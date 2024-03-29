#- Archetypes ------------------------------------------------------------------
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

    method new(
      :$nominal,
      :$nominalizable,
      :$inheritable,
      :$inheritalizable,
      :$composable,
      :$composalizable,
      :$generic,
      :$parametric
    ) {
        my $arch := nqp::create(self);
        nqp::bindattr($arch ,Archetypes, '$!nominal',
          bool($nominal));
        nqp::bindattr($arch ,Archetypes, '$!nominalizable',
          bool($nominalizable));
        nqp::bindattr($arch ,Archetypes, '$!inheritable',
          bool($inheritable));
        nqp::bindattr($arch ,Archetypes, '$!inheritalizable',
          bool($inheritalizable));
        nqp::bindattr($arch ,Archetypes, '$!composable',
          bool($composable));
        nqp::bindattr($arch ,Archetypes, '$!composalizable',
          bool($composalizable));
        nqp::bindattr($arch ,Archetypes, '$!generic',
          bool($generic));
        nqp::bindattr($arch ,Archetypes, '$!parametric',
          bool($parametric));
        $arch
    }

    method nominal()         { $!nominal         }
    method nominalizable()   { $!nominalizable   }
    method inheritable()     { $!inheritable     }
    method inheritalizable() { $!inheritalizable }
    method composable()      { $!composable      }
    method composalizable()  { $!composalizable  }
    method generic()         { $!generic         }
    method parametric()      { $!parametric      }

    method coercive()    { 0 }
    method definite()    { 0 }
    method augmentable() { 0 }
}
