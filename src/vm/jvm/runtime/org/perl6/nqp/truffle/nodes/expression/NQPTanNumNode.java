package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "tan_n")
public final class NQPTanNumNode extends NQPNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPTanNumNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return Math.tan(argNode.executeNum(frame));
    }
}
