package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(description = "coerce an int to str")
public final class NQPCoerceNumToStrNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-num-to-str")
    public NQPCoerceNumToStrNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        double in = argNode.executeNum(frame);
        if (in == (long)in) {
            if (in == 0 && Double.toString(in).equals("-0.0")) {
                return "-0";
            }
            return Long.toString((long)in);
        }
        else {
            if (in == Double.POSITIVE_INFINITY)
                return "Inf";
            if (in == Double.NEGATIVE_INFINITY)
                return "-Inf";
            if (in != in)
                return "NaN";
            return Double.toString(in);
        }
    }
}
