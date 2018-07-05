package org.perl6.nqp.truffle.nodes.io;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.NodeChild;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeChildren({@NodeChild("arg")})
public class NQPPrintNode extends NQPStrNode {
    @Child private NQPNode arg;

    @Deserializer
    public NQPPrintNode(NQPNode arg) {
      this.arg = arg;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String value = this.arg.executeStr(frame);
        doPrint(value);
        return value;
    }

    @TruffleBoundary
    private void doPrint(String value) {
        System.out.print(value);
    }
}
