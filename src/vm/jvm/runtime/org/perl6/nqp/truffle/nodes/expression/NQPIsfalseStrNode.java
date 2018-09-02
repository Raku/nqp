package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "isfalse_s")
public final class NQPIsfalseStrNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPIsfalseStrNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        String str = argNode.executeStr(frame);
        return str == null || str.equals("") ? 1 : 0;
    }
}
