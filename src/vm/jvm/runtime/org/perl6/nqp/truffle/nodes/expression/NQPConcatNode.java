package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "concat")
public final class NQPConcatNode extends NQPNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPConcatNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    public String executeString(VirtualFrame frame) {
        return leftNode.executeString(frame) + rightNode.executeString(frame);
    }
}
