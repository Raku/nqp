package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import java.text.Normalizer;

@NodeInfo(shortName = "ordbaseat")
public final class NQPOrdbaseatNode extends NQPIntNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPOrdbaseatNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        String str = leftNode.executeStr(frame);
        long offset = rightNode.executeInt(frame);
        if (offset < 0 || offset >= str.length()) {
            return -1;
        } else {
            int code = str.codePointAt((int)offset);
            String letter = new String(new int[]{code}, 0, 1);
            return Normalizer.normalize(letter, Normalizer.Form.NFD).codePointAt(0);
        }
    }
}
