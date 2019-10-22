package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.ThreadContext;

@NodeInfo(shortName = "scwbdisable")
public final class NQPScwbdisableNode extends NQPIntNode {
    private final ThreadContext threadContext;

    @Deserializer
    public NQPScwbdisableNode(ThreadContext threadContext) {
        this.threadContext = threadContext;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return ++threadContext.scwbDisableDepth;
    }
}
