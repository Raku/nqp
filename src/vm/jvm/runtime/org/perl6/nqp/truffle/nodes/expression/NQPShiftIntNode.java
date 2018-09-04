package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.NQPListInt;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "shift_i")
public final class NQPShiftIntNode extends NQPIntNode {
    @Child private NQPNode listNode;

    @Deserializer
    public NQPShiftIntNode(NQPNode listNode) {
        this.listNode = listNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return ((NQPListInt)listNode.execute(frame)).shiftInt();
    }
}
