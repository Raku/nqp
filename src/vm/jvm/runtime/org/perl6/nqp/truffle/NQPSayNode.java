package org.perl6.nqp.truffle;

import org.perl6.nqp.truffle.NQPExpressionNode;
import com.oracle.truffle.api.frame.VirtualFrame;

public class NQPSayNode extends NQPExpressionNode {
    @Override
    public void executeVoid(VirtualFrame frame) {
        System.out.println("Hello Truffle World");
    }
}
