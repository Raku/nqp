package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.NQPListInt;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindpos_i")
public final class NQPBindposIntNode extends NQPIntNode {
    @Child private NQPNode listNode;
    @Child private NQPNode indexNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPBindposIntNode(NQPNode listNode, NQPNode indexNode, NQPNode valueNode) {
        this.listNode = listNode;
        this.indexNode = indexNode;
        this.valueNode = valueNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return ((NQPListInt)listNode.execute(frame)).bindposInt(indexNode.executeInt(frame), valueNode.executeInt(frame));
    }
}
