package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "ctxlexpad")
public final class NQPCtxlexpadNode extends NQPObjNode {
    @Child private NQPNode ctxNode;

    @Deserializer
    public NQPCtxlexpadNode(NQPNode ctxNode) {
        this.ctxNode = ctxNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object ctx = ctxNode.execute(frame);
        System.out.println("ctx: " + ctx);
        return ctx;
    }
}
