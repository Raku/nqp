package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "uc")
public final class NQPUcNode extends NQPNode {
    @Child private NQPNode aNode;

    @Deserializer
    public NQPUcNode(NQPNode aNode) {
        this.aNode = aNode;
    }

    public String executeString(VirtualFrame frame) {
        return aNode.executeString(frame).toUpperCase();
    }
}
