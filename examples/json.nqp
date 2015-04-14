#! nqp

# A JSON compiler written in NQP.  To use this compiler, first
# precompile the code to PIR, then run that:
#
#   $ nqp --target=pir json.nqp >json.pir
#   $ parrot json.pir
#
# It can then be turned into a .pbc to be available as load_language:
#
#   $ parrot -o json.pbc json.pir
#   $ cp json.pbc <installroot>/lib/<version>/languages
#

use NQPHLL;

grammar JSON::Grammar is HLL::Grammar {
    rule TOP { <value> }

    proto token value { <...> }

    token value:sym<string> { <string> }

    token value:sym<number> {
        '-'?
        [ <[1..9]> <[0..9]>+ | <[0..9]> ]
        [ '.' <[0..9]>+ ]?
        [ <[Ee]> <[+\-]>? <[0..9]>+ ]?
    }

    rule value:sym<array> {
        '[' [ <value>+ %',' ]? ']'
    }

    rule value:sym<object> {
        '{'
        [ [ <string> ':' <value> ]+ %',' ]?
        '}'
    }

    token string {
        <?["]> <quote_EXPR: ':qq'>
    }
}


class JSON::Actions is HLL::Actions {
    method TOP($/) {
        make PAST::Block.new($<value>.ast, :node($/));
    };

    method value:sym<string>($/) { make $<string>.ast; }

    method value:sym<number>($/) { make +$/; }

    method value:sym<array>($/) {
        my $past := PAST::Op.new(:pasttype<list>, :node($/));
        if $<value> {
            for $<value> { $past.push($_.ast); }
        }
        make $past;
    }

    method value:sym<object>($/) {
        my $past := PAST::Stmts.new( :node($/) );
        my $hashname := PAST::Compiler.unique('hash');
        my $hash := PAST::Var.new( :scope<register>, :name($hashname),
                                   :viviself('Hash'), :isdecl );
        my $hashreg := PAST::Var.new( :scope<register>, :name($hashname) );
        $past.'push'($hash);
        # loop through all string/value pairs, add set opcodes for each pair.
        my $n := 0;
        while $n < +$<string> {
            $past.'push'(PAST::Op.new( :pirop<set__vQ~*>, $hashreg,
                                       $<string>[$n].ast, $<value>[$n].ast ) );
            $n++;
        }
        # return the Hash as the result of this node
        $past.'push'($hashreg);
        make $past;
    }

    method string($/) { make $<quote_EXPR>.ast; }
}


class JSON::Compiler is HLL::Compiler {

    method autoprint($value) {
        _dumper($value, 'JSON')
            unless (pir::getinterp__P()).stdhandle(1).tell > $*AUTOPRINTPOS;
    }

}

sub MAIN(*@ARGS) {
    my $json := JSON::Compiler.new;
    $json.language('json');
    $json.parsegrammar(JSON::Grammar);
    $json.parseactions(JSON::Actions);
    $json.command_line(@ARGS);
}
