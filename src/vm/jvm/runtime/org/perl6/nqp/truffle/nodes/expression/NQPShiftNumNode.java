package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.truffle.runtime.NQPListNum;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "shift_n")
public final class NQPShiftNumNode extends NQPNumNode {
    @Child private NQPNode listNode;

    @Deserializer
    public NQPShiftNumNode(NQPNode listNode) {
        this.listNode = listNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return ((NQPListNum)listNode.execute(frame)).shiftNum();
    }
}
