package org.perl6.nqp.truffle.nodes;

import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.nodes.NQPExpressionNode;
import com.oracle.truffle.api.frame.VirtualFrame;

public class NQPNotClosureNode extends NQPExpressionNode {
    private final NQPCodeRef codeRef;

    public NQPNotClosureNode(NQPCodeRef codeRef) {
      this.codeRef = codeRef;
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        return codeRef;
    }
}
