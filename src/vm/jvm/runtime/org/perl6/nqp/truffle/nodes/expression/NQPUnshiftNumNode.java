package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.truffle.runtime.NQPListNum;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "unshift_n")
public final class NQPUnshiftNumNode extends NQPNumNode {
    @Child private NQPNode listNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPUnshiftNumNode(NQPNode listNode, NQPNode valueNode) {
        this.listNode = listNode;
        this.valueNode = valueNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return ((NQPListNum)listNode.execute(frame)).unshiftNum(valueNode.executeNum(frame));
    }
}
