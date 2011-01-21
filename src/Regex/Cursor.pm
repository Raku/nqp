# Copyright (C) 2009, The Perl Foundation.
# $Id$

=begin

=head1 NAME

Regex::Cursor - Regex Cursor nodes

=head1 DESCRIPTION

This file implements the Regex::Cursor class, used for managing regular
expression control flow.  Regex::Cursor is also a base class for grammars.

NOTE: This file is currently growing to contain all the things currently
in the .pir files for Cursor. The reason it's being wrapped in NQP is that
this makes using the new meta-model WAY easier and it will also enable the
various gradual typing optimizations in the nearish future too.

=end

Q:PIR{
    # Include constants.
    .include 'cclass.pasm'
    .include 'src/Regex/constants.pir'
};

# XXX Rename this to Regex::Cursor when it's ready - this is just so
# it can be test-compiled.
class Regex::CursorNQP {
    has $!target;
    has $!from;
    has $!pos;
    has $!match;
    has $!names;
    has $!debug;
    has @!bstack;
    has @!cstack;
    has @!caparray;
    has &!regex;

    # Some constants. (Want something better in the long run, really.)
    my $FALSE      := 0;
    my $TRUE       := 1;
    my $generation := 0;

=begin

=head2 Methods

=over 4

=item new_match()

A method that creates an empty Match object, by default of type
C<Regex::Match>. This method can be overridden for generating HLL-specific
Match objects.

=end

    method new_match() {
        # XXX After Regex::Match is ported, probably we do just
        # pir::repr_instance_of(Regex::Match) - a bit cheaty but
        # faster than calling .new. :-)
        Q:PIR { %r = new ['Regex';'Match'] }
    }

=begin

=item new_array()

A method that creates an empty array object, by default of type
C<ResizablePMCArray>. This method can be overridden for generating HLL-specific
arrays for usage within Match objects.

=end

    method new_array() {
        pir::new('ResizablePMCArray')
    }

=begin

=item MATCH()

Return this cursor's current Match object, generating a new one
for the Cursor if one hasn't been created yet.

=end

    method MATCH() {
        my $match := $!match;
        if pir::isnull__IP($match) || pir::issame__IPP($match, $TRUE) {
            # XXX Some of this must change when Regex::Match becomes a 6model
            # object.
            $!match := $match := self.new_match();
            Q:PIR {
                .local pmc rc_class, self, match
                rc_class = get_global '$?CLASS'
                self = find_lex 'self'
                match = find_lex '$match'

                # First, create a Match object and bind it
                setattribute match, '$!cursor', self
                .local pmc target, from, to
                target = getattribute self, rc_class, '$!target'
                setattribute match, '$!target', target
                from = getattribute self, rc_class, '$!from'
                setattribute match, '$!from', from
                to = getattribute self, rc_class, '$!pos'
                setattribute match, '$!to', to

                # Create any arrayed subcaptures.
                .local pmc caparray, caparray_it, caphash
                caparray = getattribute self, rc_class, '@!caparray'
                if null caparray goto caparray_done
                caparray_it = iter caparray
                caphash = new ['Hash']
              caparray_loop:
                unless caparray_it goto caparray_done
                .local string subname
                .local pmc arr
                .local int keyint
                subname = shift caparray_it
                arr = self.'new_array'()
                caphash[subname] = arr
                keyint = is_cclass .CCLASS_NUMERIC, subname, 0
                if keyint goto caparray_int
                match[subname] = arr
                goto caparray_loop
              caparray_int:
                $I0 = subname
                match[$I0] = arr
                goto caparray_loop
              caparray_done:

                # If it's not a successful match, or if there are
                # no saved subcursors, we're done.
                if to < from goto match_done
                .local pmc cstack, cstack_it
                cstack = getattribute self, rc_class, '@!cstack'
                if null cstack goto cstack_done
                unless cstack goto cstack_done
                cstack_it = iter cstack
              cstack_loop:
                unless cstack_it goto cstack_done
                .local pmc subcur, submatch, names
                subcur = shift cstack_it
                $I0 = type_check subcur, rc_class
                unless $I0 goto cstack_loop
                # If the subcursor isn't bound with a name, skip it
                names = getattribute subcur, rc_class, '$!names'
                if null names goto cstack_loop
                submatch = subcur.'MATCH'()
                # See if we have multiple binds
                .local pmc names_it
                subname = names
                names_it = get_global '$!FALSE'
                $I0 = index subname, '='
                if $I0 < 0 goto cstack_subname
                names_it = split '=', subname
              cstack_subname_loop:
                subname = shift names_it
              cstack_subname:
                keyint = is_cclass .CCLASS_NUMERIC, subname, 0
                if null caparray goto cstack_bind
                $I0 = exists caphash[subname]
                unless $I0 goto cstack_bind
                if keyint goto cstack_array_int
                $P0 = match[subname]
                push $P0, submatch
                goto cstack_bind_done
              cstack_array_int:
                $I0 = subname
                $P0 = match[$I0]
                push $P0, submatch
                goto cstack_bind_done
              cstack_bind:
                if keyint goto cstack_bind_int
                match[subname] = submatch
                goto cstack_bind_done
              cstack_bind_int:
                $I0 = subname
                match[$I0] = submatch
              cstack_bind_done:
                if names_it goto cstack_subname_loop
                goto cstack_loop
              cstack_done:
              match_done:
            };
        }
        $match
    }

=begin

=item parse(target [, 'rule'=>regex])

Parse C<target> in the current grammar starting with C<regex>.
If C<regex> is omitted, then use the C<TOP> rule for the grammar.

=end

    method parse($target, :$rule, :$actions, :$rxtrace, *%options) {
        # Locate rule to parse with.
        if pir::isa($rule, 'String') {
            $rule := pir::find_method__PPs(self, $rule);
        }
        elsif !pir::defined($rule) {
            $rule := pir::find_method__PPs(self, 'TOP');
        }
        
        # Stash actions in a contextual.
        my $*ACTIONS := $actions;

        # Initialize cursor.
        my $cur := self.'!cursor_init'($target, |%options);
        if $rxtrace {
            $cur.DEBUG();
        }

        # Invoke the chosen rule with the new cursor and return the
        # match that it produces.
        $rule($cur).MATCH()
    }

=begin

=item next()

Return the next match from a successful Cursor.

=end

    method next() {
        self.'!cursor_next'().MATCH()
    }

=begin

=item pos()

Return the cursor's current position.

=end

    method pos() {
        $!pos
    }

=begin

=item from()

Return the cursor's from position.

=end

    method from() {
        $!from
    }

=begin

=back

=head2 Private methods

=over 4

=end

    # XXX More to do here
}
