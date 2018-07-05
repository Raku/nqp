package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "lc")
public final class NQPLcNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPLcNode(NQPNode aNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        return argNode.executeStr(frame).toLowerCase();
    }
}
