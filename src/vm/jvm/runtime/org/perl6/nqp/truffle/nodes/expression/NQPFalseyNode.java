package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNodeWithBoolification;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "falsey")
public final class NQPFalseyNode extends NQPNodeWithBoolification {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPFalseyNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return toBoolean(argNode.execute(frame)) ? 0 : 1;
    }

    @Override
    public void executeVoid(VirtualFrame frame) {
        argNode.executeVoid(frame);
    }
}
