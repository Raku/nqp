package org.perl6.nqp.truffle.nodes.io;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.NodeChild;
import org.perl6.nqp.truffle.nodes.NQPNode;

@NodeChildren({@NodeChild("arg")})
public class NQPPrintNode extends NQPNode {
    @Child private NQPNode arg;

    public NQPPrintNode(NQPNode arg) {
      this.arg = arg;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String value = this.arg.executeString(frame);
        doPrint(value);
        return value;
    }

    @TruffleBoundary
    private void doPrint(String value) {
        System.out.print(value);
    }
}
