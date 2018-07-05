package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.frame.VirtualFrame;

public abstract class NQPObjNode extends NQPNode {
    public void executeVoid(VirtualFrame frame) {
        execute(frame);
    }
}
