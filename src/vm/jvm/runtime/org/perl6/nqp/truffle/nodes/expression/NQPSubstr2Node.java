package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "substr2")
public final class NQPSubstr2Node extends NQPStrNode {
    @Child private NQPNode valNode;
    @Child private NQPNode offsetNode;

    @Deserializer
    public NQPSubstr2Node(NQPNode valNode, NQPNode offsetNode) {
        this.valNode = valNode;
        this.offsetNode = offsetNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String val = valNode.executeStr(frame);
        long offset = offsetNode.executeInt(frame);

        if (offset >= val.length())
            return "";
        if (offset < 0)
            offset += val.length();
        return val.substring((int)offset);
    }
}
