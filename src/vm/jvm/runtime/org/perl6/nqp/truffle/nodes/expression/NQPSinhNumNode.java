package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "sinh_n")
public final class NQPSinhNumNode extends NQPNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPSinhNumNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return Math.sinh(argNode.executeNum(frame));
    }
}
