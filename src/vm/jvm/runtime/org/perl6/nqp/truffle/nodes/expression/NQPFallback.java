package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "fallback")
public final class NQPFallback extends NQPObjNode {
    @Child private NQPNode varNode;
    @Child private NQPNode fallbackNode;

    @Deserializer
    public NQPFallback(NQPNode varNode, NQPNode fallbackNode) {
        this.varNode = varNode;
        this.fallbackNode = fallbackNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object value = varNode.execute(frame);
        return value == NQPNull.SINGLETON ? fallbackNode.execute(frame) : value;
    }
}
