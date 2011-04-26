# This file contains extensions to PAST for integration with 6model.

.namespace [ 'PAST';'Var' ]

=item type([value])

Accessor method -- sets/returns the type object for the type that this
will evaluate to. Note that this really is the type object itself, not
some PAST that will produce it or a name that it can be looked up by.

=cut

.sub 'type' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('type', value, has_value)
.end
