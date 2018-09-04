package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.truffle.runtime.NQPListNum;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindpos_n")
public final class NQPBindposNumNode extends NQPNumNode {
    @Child private NQPNode listNode;
    @Child private NQPNode indexNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPBindposNumNode(NQPNode listNode, NQPNode indexNode, NQPNode valueNode) {
        this.listNode = listNode;
        this.indexNode = indexNode;
        this.valueNode = valueNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return ((NQPListNum)listNode.execute(frame)).bindposNum(indexNode.executeInt(frame), valueNode.executeNum(frame));
    }
}
