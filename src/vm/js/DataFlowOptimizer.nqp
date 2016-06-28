class DataFlowOptimizer {
    proto method pack($node) {
        {*}
    }

    multi method pack(QAST::CompUnit $node) {
        "CompUnit []";
    }

    method optimize($ast) {
        my $packed := self.pack($ast);
        say("PACKED<$packed>");
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
