package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "mod_n")
public final class NQPModNumNode extends NQPNumNode {
    @Child private NQPNode dividendNode;
    @Child private NQPNode divisorNode;

    @Deserializer
    public NQPModNumNode(NQPNode divdendNode, NQPNode divisorNode) {
        this.dividendNode = divdendNode;
        this.divisorNode = divisorNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        double dividend = dividendNode.executeNum(frame);
        double divisor = divisorNode.executeNum(frame);

        return dividend - Math.floor(dividend / divisor) * divisor;
    }
}
