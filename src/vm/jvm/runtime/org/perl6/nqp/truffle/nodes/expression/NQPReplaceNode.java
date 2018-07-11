package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "replace")
public final class NQPReplaceNode extends NQPStrNode {
    @Child private NQPNode aNode;
    @Child private NQPNode bNode;
    @Child private NQPNode cNode;
    @Child private NQPNode dNode;

    @Deserializer
    public NQPReplaceNode(NQPNode aNode, NQPNode bNode, NQPNode cNode, NQPNode dNode) {
        this.aNode = aNode;
        this.bNode = bNode;
        this.cNode = cNode;
        this.dNode = dNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        long offset = bNode.executeInt(frame);
        return new StringBuffer(aNode.executeStr(frame)).replace((int)offset, (int)(offset + cNode.executeInt(frame)), dNode.executeStr(frame)).toString();
    }
}
