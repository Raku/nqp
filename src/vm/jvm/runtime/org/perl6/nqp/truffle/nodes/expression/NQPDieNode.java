package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "die")
public final class NQPDieNode extends NQPNode {
    @Child private NQPNode msgNode;

    @Deserializer
    public NQPDieNode(NQPNode msgNode) {
        this.msgNode = msgNode;
    }

    @Override
    public void executeVoid(VirtualFrame frame) {
        throw new RuntimeException("die: " + msgNode.executeStr(frame));
    }
}
