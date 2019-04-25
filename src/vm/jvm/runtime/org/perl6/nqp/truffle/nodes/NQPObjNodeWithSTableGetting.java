package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.frame.VirtualFrame;

public abstract class NQPObjNodeWithSTableGetting extends NQPNodeWithSTableGetting {
    public void executeVoid(VirtualFrame frame) {
        execute(frame);
    }
}
