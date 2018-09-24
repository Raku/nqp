package org.perl6.nqp.truffle.nodes.control;

import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.nodes.NQPNode;
import com.oracle.truffle.api.frame.VirtualFrame;

public class NQPForcedOuterBlockNode extends NQPNode {
    private final NQPCodeRef code;

    public NQPForcedOuterBlockNode(NQPCodeRef code) {
        this.code = code;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return code;
    }

    @Override
    public void executeVoid(VirtualFrame frame) {
        execute(frame);
    }
}
