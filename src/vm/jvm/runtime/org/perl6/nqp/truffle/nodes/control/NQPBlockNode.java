package org.perl6.nqp.truffle.nodes.control;

import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.nodes.NQPNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.RootNode;

public class NQPBlockNode extends NQPNode {
    private RootNode rootNode;

    public NQPBlockNode(RootNode rootNode) {
        this.rootNode = rootNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return new NQPCodeRef(rootNode, frame.materialize());
    }
}
