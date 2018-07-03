package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "asin_n")
public final class NQPAsinNumNode extends NQPNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPAsinNumNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return Math.asin(argNode.executeNum(frame));
    }
}
