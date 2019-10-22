package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "coerce an str to int")
public final class NQPCoerceStrToIntNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-str-to-int")
    public NQPCoerceStrToIntNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        String value = argNode.executeStr(frame);
        try {
            return Long.parseLong(value);
        }
        catch (NumberFormatException e) {
            return 0;
        }
    }
}
