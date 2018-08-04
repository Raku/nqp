package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "pow_n")
public final class NQPPowNumNode extends NQPNumNode {
    @Child private NQPNode baseNode;
    @Child private NQPNode exponentNode;

    @Deserializer
    public NQPPowNumNode(NQPNode baseNode, NQPNode exponentNode) {
        this.baseNode = baseNode;
        this.exponentNode = exponentNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        double base = baseNode.executeNum(frame);
        double exponent = exponentNode.executeNum(frame);

        if (base == 1) {
            return 1.0;
        }
        return Math.pow(base, exponent);
    }
}
