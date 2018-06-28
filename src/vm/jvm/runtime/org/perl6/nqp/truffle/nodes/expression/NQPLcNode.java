package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;

@NodeInfo(shortName = "lc")
public final class NQPLcNode extends NQPNode {
    @Child private NQPNode aNode;
    public NQPLcNode(NQPNode aNode) {
        this.aNode = aNode;
    }

    public String executeString(VirtualFrame frame) {
        return aNode.executeString(frame).toLowerCase();
    }
}
