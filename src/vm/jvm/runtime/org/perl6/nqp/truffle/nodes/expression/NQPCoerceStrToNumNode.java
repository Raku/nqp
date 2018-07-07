package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.runtime.Coercions;

@NodeInfo(shortName = "coerce an str to num")
public final class NQPCoerceStrToNumNode extends NQPNumNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-str-to-num")
    public NQPCoerceStrToNumNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return Coercions.strToNum(argNode.executeStr(frame));
    }
}
