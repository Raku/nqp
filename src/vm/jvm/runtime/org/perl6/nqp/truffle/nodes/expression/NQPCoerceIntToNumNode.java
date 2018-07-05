package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "coerce an int to num")
public final class NQPCoerceIntToNumNode extends NQPNumNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-int-to-num")
    public NQPCoerceIntToNumNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return argNode.executeInt(frame);
    }
}
