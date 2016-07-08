class DataFlowOptimizer {
    has %!id_to_qast;

    proto method pack($node) {
        {*}
    }

    method children(QAST::Children $node) {
        my @children;
        for $node.list -> $child {
            @children.push(self.pack($child));
        }
        "[" ~ nqp::join(",", @children) ~ "]";
    }

    method str($str) {
        '"' ~ nqp::escape($str) ~ '"';
    }
    method int($int) {
        ~$int;
    }

    method add($node) {
        %!id_to_qast{nqp::objectid($node)} := $node;
        nqp::objectid($node);
    }

    multi method pack(QAST::CompUnit $node) {
        "CompUnit " ~ self.children($node);
    }
    multi method pack(QAST::Block $node) {
        "Block " ~ self.children($node);
    }
    multi method pack(QAST::Stmts $node) {
        "Stmts " ~ self.children($node);
    }
    multi method pack(QAST::Op $node) {
        "Op {self.str($node.op)} {self.children($node)} {self.add($node)}";
    }
    multi method pack(QAST::Var $node) {
        "(Var {self.str($node.name)} {self.str($node.scope)} {self.str($node.decl)} {self.int($node.slurpy)})";
    }
    multi method pack(QAST::IVal $node) {
        "(IVal {$node.value} {self.add($node)})";
    }

    multi method pack(QAST::SVal $node) {
        # TODO haskell string quoting rules
        "(SVal {self.str($node.value)} {self.add($node)})";
    }

    multi method pack($node) {
        say("Can't pack {$node.HOW.name($node)}");
        "Unknown";
    }

    method optimize($ast) {
        my $packed := self.pack($ast);
        say("PACKED<$packed>\n");
        my $got := self.run($packed);
        print($got);
        self.apply_changes($ast, $got);
    }

    method run($data) {
        my $in   := nqp::syncpipe();
        my $out   := nqp::syncpipe();

        my $status := nqp::shell("src/vm/js/dataflow-optimizer/dist/build/dataflow-optimizer/dataflow-optimizer", nqp::cwd(), nqp::getenvhash(),
            $in, $out, nqp::null(), nqp::const::PIPE_CAPTURE_IN + nqp::const::PIPE_CAPTURE_OUT + nqp::const::PIPE_INHERIT_ERR);

        nqp::printfh($in, $data);
        nqp::closefh($in);

        my $got := nqp::readallfh($out);
        nqp::closefh($out);

        $got;
    }

    has %!replacement;
    has %!deleted;

    my grammar Changes {
        proto token change {*}
        token change:sym<ReplacementIVal> { 
            <sym> \s+ (\d+) \s+ (\d+)
        }
        token TOP {
            .*? result \s* "[" <change>* % "," "]"
        }
    }

    method apply_changes($ast, $changes) {
        my $match := Changes.parse($changes, :actions(self));
        self.apply($ast);
    }

    proto method apply($node) {
        {*}
    }

    method children_with_side_effects($node) {
        if nqp::istype($node, QAST::Children) {
            my @children;
            for $node.list -> $child {
                @children.push($child);
            }
            @children;
        }
        else {
            nqp::list();
        }
    }

    multi method apply(QAST::Children $node) {
        my $i := 0;
        for $node.list -> $subnode {
            self.apply($subnode);
        }

        for $node.list -> $subnode {
            my $id := nqp::objectid($subnode);
            if %!replacement{$id} {
                if self.children_with_side_effects($subnode) -> @children {
                    my $stmts := QAST::Stmts.new(|@children);
                    $stmts.push(%!replacement{$id});
                    $node.list[$i] := $stmts;
                }
                else {
                    $node.list[$i] := %!replacement{$id};
                }
            }
            $i := $i + 1;
        }
    }
    multi method apply($node) {
    }

    method change:sym<ReplacementIVal>($/) {
        say("replacing {$/[0]} with IVal {+$/[1]}");
        %!replacement{$/[0]} := QAST::IVal.new(value => +$/[1]);
    }
}
