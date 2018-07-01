package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "coerce an str to num")
public final class NQPCoerceStrToNumNode extends NQPNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-str-to-num")
    public NQPCoerceStrToNumNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        String in = argNode.executeStr(frame);
        try {
            // remove valid underscores
            in = in.replaceAll("(?<=\\d)_+(?=\\d)", "");
            // replace unicode minus U+2212 with ascii version
            in = in.replaceAll("\u2212", "-");
            return Double.parseDouble(in);
        }
        catch (NumberFormatException e) {
            if (in.equals("Inf"))
                return Double.POSITIVE_INFINITY;
            if (in.equals("+Inf"))
                return Double.POSITIVE_INFINITY;
            if (in.equals("-Inf"))
                return Double.NEGATIVE_INFINITY;
            if (in.equals("NaN"))
                return Double.NaN;
            return 0.0;
        }
    }
}
