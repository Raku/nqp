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

    # XXX TODO: This one will be tricky...

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

    XXX TODO: Lots to port here!





}
