package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "isnull_s")
public final class NQPIsnullStrNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPIsnullStrNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return argNode.executeStr(frame) == null ? 1 : 0;
    }
}
