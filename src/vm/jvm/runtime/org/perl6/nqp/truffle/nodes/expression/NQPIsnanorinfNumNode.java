package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "isnanorinf")
public final class NQPIsnanorinfNumNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer("isnanorinf")
    public NQPIsnanorinfNumNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        double n = argNode.executeNum(frame);
        return Double.isInfinite(n) || Double.isNaN(n) ? 1 : 0;
    }
}
