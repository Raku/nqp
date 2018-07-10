package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "escape")
public final class NQPEscapeNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPEscapeNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String str = argNode.executeStr(frame);
        int len = str.length();
        StringBuilder sb = new StringBuilder(2 * len);
        for (int i = 0; i < len; i++) {
            char c = str.charAt(i);
            switch (c) {
            case '\\': sb.append("\\\\"); break;
            case 7:    sb.append("\\a");  break;
            case '\b': sb.append("\\b");  break;
            case '\n': sb.append("\\n");  break;
            case '\r': sb.append("\\r");  break;
            case '\t': sb.append("\\t");  break;
            case '\f': sb.append("\\f");  break;
            case '"':  sb.append("\\\""); break;
            case 27:   sb.append("\\e");  break;
            default:
                sb.append(c);
            }
        }
        return sb.toString();
    }
}
