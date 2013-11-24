class QRegex::Optimizer {
    has @!outer;

    method optimize($node, $outer, *%adverbs) {
        my @!outer := [$outer];
        my $type := $node.rxtype;
        if $type eq 'concat' {
            return self.visit_concat($node);
        } elsif $type eq 'subrule' {
            return self.simplify_assertion($node);
        } else {
            self.visit_children($node);
        }
        $node
    }

    method all_subtypes($node, $type) {
        my $res := 0;
        for $node {
            if $node.rxtype eq $type {
                $res++
            } else {
                return -1;
            }
        }
        return $res;
    }

    method first_non_concat_child($node) {
        while +@($node) >= 1 {
            if nqp::istype($node, QAST::Regex) {
                if $node.rxtype eq 'concat' {
                    $node := $node[0];
                } else {
                    last;
                }
            } else {
                last;
            }
        }
        $node;
    }

    method visit_concat($node) {
        # a single-child concat can become the child itself
        self.visit_children($node);
        if +@($node) == 1 {
            return $node[0];
        } elsif nqp::istype($node[0], QAST::Regex) && +@($node) >= 2 {
            # we may have a scan followed by a begin-of-string assertion.
            # in that case we just shouldn't scan.
            if $node[0].rxtype eq 'scan'
                && nqp::istype((my $after_scan := self.first_non_concat_child($node[1])), QAST::Regex)
                && $after_scan.rxtype eq 'anchor' && $after_scan.subtype eq 'bos' {
                $node.shift();
            }
        }
        $node;
    }

    method stub_out_block($block) {
        # remove both the stmts and the contents.
        $block.shift();
        $block.shift();
        # put in an explosive die statement.
        $block[0] := QAST::Op.new( :op('die_s'),
            QAST::SVal.new( :value('INTERNAL ERROR: Execution of block eliminated by optimizer') ) );
        # rescue the block into the first stmts of our current outer block
        @!outer[+@!outer - 1][0].push($block);
    }

    method simplify_assertion($qast) {
        if $qast.subtype eq 'zerowidth'
                && nqp::istype($qast[0], QAST::Node) && nqp::istype($qast[0][0], QAST::SVal)
                && $qast[0][0].value eq 'before' {
            if nqp::istype($qast[0], QAST::Node) && nqp::istype($qast[0][1], QAST::Block)
                    && nqp::istype((my $regex := $qast[0][1][2]), QAST::Regex)
                    && $regex.rxtype eq 'concat' && $regex[0].rxtype eq 'scan' && $regex[2].rxtype eq 'pass' {
                self.visit_children($regex);
                my $simple := $regex[1];
                my $result := 0;
                if $simple.rxtype eq 'literal' && $simple.rxtype ne 'ignorecase' && !$qast.negate {
                    $result := QAST::Regex.new(:rxtype<literal>, :subtype<zerowidth>, :node($simple.node),
                        :negate($simple.negate),
                        $simple[0]);
                } elsif $simple.rxtype eq 'enumcharlist' && $simple.rxtype ne 'ignorecase' {
                    $result := QAST::Regex.new(:rxtype<enumcharlist>, :subtype<zerowidth>, :node($simple.node),
                        :negate(nqp::bitxor_i($qast.negate, $simple.negate)),
                        $simple[0]);
                } elsif $simple.rxtype eq 'charrange' && $simple.rxtype ne 'ignorecase' {
                    $result := QAST::Regex.new(:rxtype<charrange>, :subtype<zerowidth>, :node($simple.node),
                        :negate(nqp::bitxor_i($qast.negate, $simple.negate)),
                        $simple[0],
                        $simple[1],
                        $simple[2]);
                } elsif $simple.rxtype eq 'cclass' && $simple.rxtype ne 'ignorecase' {
                    $result := QAST::Regex.new(:rxtype<cclass>, :subtype<zerowidth>, :node($simple.node),
                        :negate(nqp::bitxor_i($qast.negate, $simple.negate)), :name($simple.name));
                }
                if $result {
                    self.stub_out_block($qast[0][1]);
                    $qast := $result;
                }
            }
        }
        $qast;
    }

    method visit_children($node) {
        my int $i := 0;
        unless nqp::isstr($node) {
            while $i < +@($node) {
                my $visit := $node[$i];
                my $type;
                if nqp::istype($visit, QAST::Regex) {
                    $type := $visit.rxtype;
                } elsif nqp::istype($visit, QAST::Block) {
                    $type := "block";
                    @!outer.push($visit);
                }
                if $type eq 'scan' {
                } elsif $type eq 'literal' {
                } elsif $type eq 'quant' {
                    self.visit_children($visit);
                } elsif $type eq 'subrule' {
                    $node[$i] := self.simplify_assertion($visit);
                } elsif $type eq 'anchor' {
                } elsif $type eq 'subcapture' {
                } elsif $type eq 'enumcharlist' {
                } elsif $type eq 'cclass' {
                } elsif $type eq 'charrange' {
                } elsif $type eq 'concat' {
                    $node[$i] := self.visit_concat($visit);
                } elsif $type eq 'pass' || $type eq 'fail' {
                } else {
                    # alt, altseq, conjseq, conj, quant
                    self.visit_children($visit);
                }
                $i := $i + 1;
                if $type eq 'block' {
                    @!outer.pop();
                }
            }
        }
    }
}

