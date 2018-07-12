package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import java.text.Normalizer;

@NodeInfo(shortName = "codes")
public final class NQPCodesNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPCodesNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return Normalizer.normalize(argNode.executeStr(frame), Normalizer.Form.NFC).codePoints().count();
    }
}
