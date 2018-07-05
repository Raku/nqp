package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "tclc")
public final class NQPTclcNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPTclcNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    static String codepointToTitleCase(int codepoint) {
        if (codepoint == 223) return "Ss";
        return new String(Character.toChars(Character.toTitleCase(codepoint)));
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String in = argNode.executeStr(frame);
        if (in.length() == 0)
            return in;
        int first = in.codePointAt(0);
        return codepointToTitleCase(first)
            + in.substring(Character.charCount(first)).toLowerCase();
    }
}
