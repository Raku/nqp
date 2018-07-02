package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "nan")
public final class NQPNanNode extends NQPNode {

    @Deserializer
    public NQPNanNode() {
    }

    public double executeNum() {
        return Double.NaN;
    }
}
