package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "abs_i")
public final class NQPAbsIntNode extends NQPNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPAbsIntNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return Math.abs(argNode.executeInt(frame));
    }
}
