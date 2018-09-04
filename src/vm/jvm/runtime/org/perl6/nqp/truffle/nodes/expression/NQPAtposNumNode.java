package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.truffle.runtime.NQPListNum;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "atpos_n")
public final class NQPAtposNumNode extends NQPNumNode {
    @Child private NQPNode listNode;
    @Child private NQPNode indexNode;

    @Deserializer
    public NQPAtposNumNode(NQPNode listNode, NQPNode indexNode) {
        this.listNode = listNode;
        this.indexNode = indexNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return ((NQPListNum)listNode.execute(frame)).atposNum(indexNode.executeInt(frame));
    }
}
