package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.dsl.Deserializer;

public final class NQPCoerceVoidToObjNode extends NQPObjNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-void-to-obj")
    public NQPCoerceVoidToObjNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        argNode.executeVoid(frame);
        return NQPNull.SINGLETON;
    }
}
