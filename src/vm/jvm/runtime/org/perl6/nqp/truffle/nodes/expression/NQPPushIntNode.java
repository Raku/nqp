package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.NQPListInt;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "push_i")
public final class NQPPushIntNode extends NQPIntNode {
    @Child private NQPNode listNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPPushIntNode(NQPNode listNode, NQPNode valueNode) {
        this.listNode = listNode;
        this.valueNode = valueNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return ((NQPListInt)listNode.execute(frame)).pushInt(valueNode.executeInt(frame));
    }
}
