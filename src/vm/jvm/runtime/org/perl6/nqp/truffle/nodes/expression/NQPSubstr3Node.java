package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "substr3")
public final class NQPSubstr3Node extends NQPStrNode {
    @Child private NQPNode valNode;
    @Child private NQPNode offsetNode;
    @Child private NQPNode lengthNode;

    @Deserializer
    public NQPSubstr3Node(NQPNode valNode, NQPNode offsetNode, NQPNode lengthNode) {
        this.valNode = valNode;
        this.offsetNode = offsetNode;
        this.lengthNode = lengthNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String val = valNode.executeStr(frame);
        long offset = offsetNode.executeInt(frame);
        long length = lengthNode.executeInt(frame);

        if (offset >= val.length())
            return "";
        int end = (int)(offset + length);
        if (end > val.length())
            end = val.length();
        return val.substring((int)offset, end);
    }
}
