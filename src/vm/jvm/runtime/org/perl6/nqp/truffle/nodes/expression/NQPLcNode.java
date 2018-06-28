package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "lc")
public final class NQPLcNode extends NQPNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPLcNode(NQPNode aNode) {
        this.argNode = argNode;
    }

    public String executeString(VirtualFrame frame) {
        return argNode.executeString(frame).toLowerCase();
    }
}
