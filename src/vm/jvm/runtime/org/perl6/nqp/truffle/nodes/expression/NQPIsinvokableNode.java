package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;

@NodeInfo(shortName = "isinvokable")
public final class NQPIsinvokableNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPIsinvokableNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return argNode.execute(frame) instanceof NQPCodeRef ? 1 : 0;
    }
}
