class QAST::Compiler is HLL::Compiler { 
    our $serno;
    INIT { 
        $serno := 10; 
        Q:PIR {
            $P0 = find_lex '$?CLASS'
            set_root_global ['parrot';'QAST'], 'Compiler', $P0
        };
    }

    method unique($prefix = '') { $prefix ~ $serno++ }
    method escape($str) { 'ucs4:"' ~ pir::escape__Ss($str) ~ '"' }

    proto method as_post(*@args, *%_) { * }
    multi method as_post(QAST::Regex $node) {
        my $ops := self.post_new('Ops');
        my $prefix := self.unique('rx') ~ '_';
        my %*REG;

        # build the list of (unique) registers we need
        my $reglist := nqp::split(' ', 'tgt string pos int off int eos int rep int cur pmc curclass pmc bstack pmc');
        while $reglist {
            my $reg := nqp::shift($reglist);
            my $name := %*REG{$reg} := $prefix ~ $reg;
            $ops.push_pirop('.local ' ~ nqp::shift($reglist), $name);
        }

        # create our labels
        my $startlabel   := self.'post_new'('Label', :result($prefix ~ 'start'));
        my $donelabel    := self.'post_new'('Label', :result($prefix ~ 'done'));
        my $restartlabel := self.'post_new'('Label', :result($prefix ~ 'restart'));
        my $faillabel    := self.'post_new'('Label', :result($prefix ~ 'fail'));
        %*REG<fail>      := $faillabel;

        # common prologue
        my $startreg := '(' ~ nqp::join(', ', [%*REG<cur>, %*REG<tgt>, %*REG<pos>, %*REG<curclass>, %*REG<bstack>]) ~ ')';
        $ops.push_pirop('callmethod', '"!cursor_start"', 'self', :result($startreg));
        $ops.push_pirop('length', %*REG<eos>, %*REG<tgt>);
        $ops.push(self.regex_post($node));
        $ops.push($faillabel);
        $ops.push_pirop('unless', %*REG<bstack>, $donelabel);
        $ops.push_pirop('pop', '$I19', %*REG<bstack>);
        $ops.push_pirop('pop', %*REG<rep>, %*REG<bstack>);
        $ops.push_pirop('pop', %*REG<pos>, %*REG<bstack>);
        $ops.push_pirop('pop', '$I19', %*REG<bstack>);
        $ops.push_pirop('lt', %*REG<pos>, -1, $donelabel);
        $ops.push_pirop('lt', %*REG<pos>, 0, $faillabel);
        $ops.push_pirop('jump', '$I19');
        $ops.push($donelabel);
        $ops.push_pirop('callmethod', '"!cursor_fail"', %*REG<cur>);

        $ops.result(%*REG<cur>);
        $ops;
    }

    method regex_post($node) {
        my $rxtype := $node.rxtype() // 'concat';
        self."$rxtype"($node);
    }

    method post_new($type, *@args, *%options) {
        Q:PIR {
            $P0 = find_lex '$type'
            $S0 = $P0
            $P0 = get_root_global ['parrot';'POST'], $S0
            $P1 = find_lex '@args'
            $P2 = find_lex '%options'
            %r = $P0.'new'($P1 :flat, $P2 :flat :named)
        }
    }

    method altseq($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('alt') ~ '_';
        my $altcount := 0;
        my $iter     := nqp::iterator($node.list);
        my $endlabel := self.post_new('Label', :result($prefix ~ 'end'));
        my $altlabel := self.post_new('Label', :result($prefix ~ $altcount));
        my $apost    := self.regex_post(nqp::shift($iter));
        while $iter {
            $ops.push($altlabel);
            $altcount++;
            $altlabel := self.post_new('Label', :result($prefix ~ $altcount));
            self.regex_mark($ops, $altlabel, %*REG<pos>, 0);
            $ops.push($apost);
            $ops.push_pirop('goto', $endlabel);
            $apost := self.regex_post(nqp::shift($iter));
        }
        $ops.push($altlabel);
        $ops.push($apost);
        $ops.push($endlabel);
        $ops;
    }

    method anchor($node) {
        my $ops       := self.post_new('Ops', :result(%*REG<cur>));
        my $subtype   := $node.subtype;
        my $donelabel := self.post_new('Label', :result(self.unique('rxanchor') ~ '_done'));
        if $subtype eq 'bos' {
            $ops.push_pirop('ne', %*REG<pos>, 0, %*REG<fail>);
        }
        elsif $subtype eq 'eos' {
            $ops.push_pirop('lt', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        }
        elsif $subtype eq 'lwb' {
            $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_WORD', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop('unless', '$I11', %*REG<fail>);
            $ops.push_pirop('sub', '$I11', %*REG<pos>, 1);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_WORD', %*REG<tgt>, '$I11');
            $ops.push_pirop('if', '$I11', %*REG<fail>);
        }
        elsif $subtype eq 'rwb' {
            $ops.push_pirop('le', %*REG<pos>, 0, %*REG<fail>);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_WORD', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop('if', '$I11', %*REG<fail>);
            $ops.push_pirop('sub', '$I11', %*REG<pos>, 1);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_WORD', %*REG<tgt>, '$I11');
            $ops.push_pirop('unless', '$I11', %*REG<fail>);
        }
        elsif $subtype eq 'bol' {
            $ops.push_pirop('eq', %*REG<pos>, 0, $donelabel);
            $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
            $ops.push_pirop('sub', '$I11', %*REG<pos>, 1);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_NEWLINE', %*REG<tgt>, '$I11');
            $ops.push_pirop('unless', '$I11', %*REG<fail>);
            $ops.push($donelabel);
        }
        elsif $subtype eq 'eol' {
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_NEWLINE', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop('if', '$I11', $donelabel);
            $ops.push_pirop('ne', %*REG<pos>, %*REG<eos>, %*REG<fail>);
            $ops.push_pirop('eq', %*REG<pos>, 0, $donelabel);
            $ops.push_pirop('sub', '$I11', %*REG<pos>, 1);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_NEWLINE', %*REG<tgt>, '$I11');
            $ops.push_pirop('if', '$I11', %*REG<fail>);
            $ops.push($donelabel);
        }

        $ops;
    }

    our %cclass_code;
    INIT {
        %cclass_code<.>  := '.CCLASS_ANY';
        %cclass_code<d>  := '.CCLASS_NUMERIC';
        %cclass_code<s>  := '.CCLASS_WHITESPACE';
        %cclass_code<w>  := '.CCLASS_WORD';
        %cclass_code<n>  := '.CCLASS_NEWLINE';
        %cclass_code<nl> := '.CCLASS_NEWLINE';
    }

    method cclass($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $subtype := $node.subtype;
        $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        my $cclass := %cclass_code{nqp::lc($subtype)};
        self.panic("Unrecognized subtype '$subtype' in QAST::Regex cclass")
            unless $cclass;
        if $cclass ne '.CCLASS_ANY' {
            my $testop := $node.negate ?? 'if' !! 'unless';
            $ops.push_pirop('is_cclass', '$I11', $cclass, %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop($testop, '$I11', %*REG<fail>); 
            if $subtype eq 'nl' {
                $ops.push_pirop('substr', '$S10', %*REG<tgt>, %*REG<pos>, 2);
                $ops.push_pirop('iseq', '$I11', '$S10', '"\r\n"');
                $ops.push_pirop('add', %*REG<pos>, '$I11');
            } 
        }
        $ops.push_pirop('add', %*REG<pos>, 1);
        $ops;
    }

    method concat($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        for $node.list { $ops.push(self.regex_post($_)); }
        $ops;
    }

    method conj($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('rxconj') ~ '_';
        my $conjlabel := self.post_new('Label', :result($prefix ~ 'fail'));
        my $firstlabel := self.post_new('Label', :result($prefix ~ 'first'));
        my $iter := nqp::iterator($node.list);
        # make a mark that holds our starting position in the pos slot
        self.regex_mark($ops, $conjlabel, %*REG<pos>, 0);
        $ops.push_pirop('goto', $firstlabel);
        $ops.push($conjlabel);
        $ops.push_pirop('goto', %*REG<fail>);
        # call the first child
        $ops.push($firstlabel);
        $ops.push(self.regex_post(nqp::shift($iter)));
        # use previous mark to make one with pos=start, rep=end
        self.regex_peek($ops, '$I19', $conjlabel);
        $ops.push_pirop('inc', '$I19');
        $ops.push_pirop('set', '$I11', %*REG<bstack>~'[$I19]');
        self.regex_mark($ops, $conjlabel, '$I11', %*REG<pos>);

        while $iter {
            $ops.push_pirop('set', %*REG<pos>, '$I11');
            $ops.push(self.regex_post(nqp::shift($iter)));
            self.regex_peek($ops, '$I19', $conjlabel);
            $ops.push_pirop('inc', '$I19');
            $ops.push_pirop('set', '$I11', %*REG<bstack>~'[$I19]');
            $ops.push_pirop('inc', '$I19');
            $ops.push_pirop('set', '$I12', %*REG<bstack>~'[$I19]');
            $ops.push_pirop('ne', %*REG<pos>, '$I12', %*REG<fail>);
        }
        $ops;
    }

    method enumcharlist($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $charlist := self.escape($node[0]);
        my $testop := $node.negate ?? 'ge' !! 'lt';
        $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        $ops.push_pirop('substr', '$S11', %*REG<tgt>, %*REG<pos>, 1);
        $ops.push_pirop('index', '$I11', $charlist, '$S11');
        $ops.push_pirop($testop, '$I11', 0, %*REG<fail>);
        $ops.push_pirop('inc', %*REG<pos>);
        $ops;
    }

    method literal($node) {
        my $ops := self.post_new('Ops');
        my $litconst := $node[0];
        my $litlen := nqp::chars($litconst);
        my $litpost := self.escape($litconst);
        $ops.push_pirop('add',    '$I11', %*REG<pos>, $litlen);
        $ops.push_pirop('gt',     '$I11', %*REG<eos>, %*REG<fail>);
        $ops.push_pirop('substr', '$S10', %*REG<tgt>, %*REG<pos>, $litlen);
        $ops.push_pirop('ne',     '$S10', $litpost, %*REG<fail>);
        $ops.push_pirop('add',    %*REG<pos>, $litlen);
        $ops;
    }

    method pass($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        $ops.push_pirop('callmethod', '"!cursor_pass"', %*REG<cur>, %*REG<pos>);
        $ops.push_pirop('return', %*REG<cur>);
        $ops;
    }

    method quant($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('rxquant' ~ $node.backtrack);
        my $looplabel := self.post_new('Label', :result($prefix ~ '_loop'));
        my $donelabel := self.post_new('Label', :result($prefix ~ '_done'));
        my $min       := $node.min || 0;
        my $max       := $node.max // -1;
        my $needrep   := $min > 1 || $max > 1;
        my $needmark  := $needrep;

        $ops.push_pirop('inline', :inline('  # rx %0 ** %1..%2'), $prefix, $min, $max);

        if $min == 0 { self.regex_mark($ops, $donelabel, %*REG<pos>, 0); }
        elsif $needmark { self.regex_mark($ops, $donelabel, -1, 0); }
        $ops.push($looplabel);
        $ops.push(self.regex_post($node[0]));
        if $needmark {
            self.regex_peek($ops, '$I19', $donelabel);
            $ops.push_pirop('add', '$I19', 2);
            $ops.push_pirop('set', %*REG<rep>, %*REG<bstack>~'[$I19]');
            $ops.push_pirop('inc', %*REG<rep>);
            $ops.push_pirop('ge', %*REG<rep>, $node.max, $donelabel)
                if $max > 1;
        }
        unless $max == 1 {
            self.regex_mark($ops, $donelabel, %*REG<pos>, %*REG<rep>);
            $ops.push_pirop('goto', $looplabel);
        }
        $ops.push($donelabel);
        $ops.push_pirop('lt', %*REG<rep>, +$node.min, %*REG<fail>)
            if $min > 1;
        $ops;
    }

    method scan($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('rxscan');
        my $looplabel := self.post_new('Label', :result($prefix ~ '_loop'));
        my $scanlabel := self.post_new('Label', :result($prefix ~ '_scan'));
        my $donelabel := self.post_new('Label', :result($prefix ~ '_done'));
        $ops.push_pirop('repr_get_attr_int', '$I11', 'self', %*REG<curclass>, '"$!from"');
        $ops.push_pirop('ne', '$I11', -1, $donelabel);
        $ops.push_pirop('goto', $scanlabel);
        $ops.push($looplabel);
        $ops.push_pirop('inc', %*REG<pos>);
        $ops.push_pirop('gt', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        $ops.push_pirop('repr_bind_attr_int', %*REG<cur>, %*REG<curclass>, '"$!from"', %*REG<pos>);
        $ops.push($scanlabel);
        self.regex_mark($ops, $looplabel, %*REG<pos>, 0);
        $ops.push($donelabel);
    }
 
    method regex_mark($ops, $mark, $pos, $rep) {
        $ops.push_pirop('nqp_rxmark', %*REG<bstack>, $mark, $pos, $rep);
    }

    method regex_peek($ops, $bptr, $mark) {
        $ops.push_pirop('nqp_rxpeek', $bptr, %*REG<bstack>, $mark);
    }
}

