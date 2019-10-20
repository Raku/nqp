package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "push")
public final class NQPPushNode extends NQPObjNode {
    @Child private NQPNode listNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPPushNode(NQPNode listNode, NQPNode valueNode) {
        this.listNode = listNode;
        this.valueNode = valueNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return ((VMArrayInstance) listNode.execute(frame)).push(valueNode.execute(frame));
    }
}
