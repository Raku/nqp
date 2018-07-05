package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.frame.VirtualFrame;

public abstract class NQPNumNode extends NQPNode {
    public void executeVoid(VirtualFrame frame) {
        executeNum(frame);
    }
}
