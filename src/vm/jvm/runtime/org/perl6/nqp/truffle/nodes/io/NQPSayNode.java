package org.perl6.nqp.truffle.nodes.io;

import org.perl6.nqp.truffle.nodes.NQPExpressionNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.NodeChild;

@NodeChildren({@NodeChild("arg")})
public class NQPSayNode extends NQPExpressionNode {
    @Child private NQPExpressionNode arg;

    public NQPSayNode(NQPExpressionNode arg) {
      this.arg = arg;
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        String value = this.arg.executeString(frame);
        System.out.println(value);
        return value;
    }
}
