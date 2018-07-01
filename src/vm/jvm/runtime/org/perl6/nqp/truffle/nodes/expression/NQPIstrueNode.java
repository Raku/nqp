package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNodeWithBoolification;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "istrue")
public final class NQPIstrueNode extends NQPNodeWithBoolification {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPIstrueNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return toBoolean(argNode.execute(frame)) ? 1 : 0;
    }
}
