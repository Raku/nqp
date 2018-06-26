package org.perl6.nqp.truffle.nodes.io;

import com.oracle.truffle.api.frame.VirtualFrame;
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
    public Object executeGeneric(VirtualFrame frame) {
        String value = this.arg.executeString(frame);
        System.out.print(value);
        return value;
    }
}
