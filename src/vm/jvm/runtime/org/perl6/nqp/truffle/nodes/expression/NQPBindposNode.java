package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindpos")
public final class NQPBindposNode extends NQPObjNode {
    @Child private NQPNode listNode;
    @Child private NQPNode indexNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPBindposNode(NQPNode listNode, NQPNode indexNode, NQPNode valueNode) {
        this.listNode = listNode;
        this.indexNode = indexNode;
        this.valueNode = valueNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return ((NQPList) listNode.execute(frame)).bindpos(indexNode.executeInt(frame), valueNode.execute(frame));
    }
}
