package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "coerce an int to str")
public final class NQPCoerceIntToStrNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-int-to-str")
    public NQPCoerceIntToStrNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        return Long.toString(argNode.executeInt(frame));
    }
}
