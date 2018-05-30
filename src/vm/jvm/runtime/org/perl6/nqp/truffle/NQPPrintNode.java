package org.perl6.nqp.truffle;

import org.perl6.nqp.truffle.NQPExpressionNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.NodeChild;

@NodeChildren({@NodeChild("arg")})
public class NQPPrintNode extends NQPExpressionNode {
    @Child private NQPExpressionNode arg;

    NQPPrintNode(NQPExpressionNode arg) {
      this.arg = arg;
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        String value = (String) this.arg.executeGeneric(frame);
        System.out.print(value);
        return value;
    }
}
