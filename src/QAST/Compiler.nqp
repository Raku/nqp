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

    method concat($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        for $node.list { $ops.push(self.regex_post($_)); }
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
        self.regex_mark($ops, $donelabel, 0, 0);
        $ops.push($looplabel);
        $ops.push(self.regex_post($node[0]));
        if $node.max != 1 {
            self.regex_peek($ops, '$I19', $donelabel);
            $ops.push_pirop('add', '$I19', 2);
            $ops.push_pirop('set', %*REG<rep>, %*REG<bstack>~'[$I19]');
            $ops.push_pirop('inc', %*REG<rep>);
            $ops.push_pirop('ge', %*REG<rep>, $node.max, $donelabel)
                if $node.max > 1;
            self.regex_mark($ops, $donelabel, %*REG<pos>, %*REG<rep>);
            $ops.push_pirop('goto', $looplabel);
        }
        $ops.push($donelabel);
        $ops.push_pirop('lt', %*REG<rep>, $node.min, %*REG<fail>);
        $ops;
    }

    method regex_mark($ops, $mark, $pos, $rep) {
        $ops.push_pirop('nqp_rxmark', %*REG<bstack>, $mark, $pos, $rep);
    }

    method regex_peek($ops, $bptr, $mark) {
        $ops.push_pirop('nqp_rxpeek', $bptr, %*REG<bstack>, $mark);
    }
}

