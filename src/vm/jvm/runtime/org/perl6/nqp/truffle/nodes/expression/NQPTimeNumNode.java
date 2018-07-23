package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "time_n")
public final class NQPTimeNumNode extends NQPNumNode {

    @Deserializer
    public NQPTimeNumNode() {
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return System.currentTimeMillis() / 1000.0;
    }
}
