class DataFlowOptimizer {
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
        "Op {self.str($node.op)} {self.children($node)}";
    }
    multi method pack(QAST::Var $node) {
        "(Var {self.str($node.name)} {self.str($node.scope)} {self.str($node.decl)} {self.int($node.slurpy)})";
    }
    multi method pack(QAST::IVal $node) {
        "(IVal {$node.value})";
    }

    multi method pack(QAST::SVal $node) {
        # TODO haskell string quoting rules
        "(SVal {self.str($node.value)})";
    }

    multi method pack($node) {
        say("Can't pack {$node.HOW.name($node)}");
        "Unknown";
    }

    method optimize($ast) {
        my $packed := self.pack($ast);
        say("PACKED<$packed>\n");
        print(self.run($packed));
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
}
