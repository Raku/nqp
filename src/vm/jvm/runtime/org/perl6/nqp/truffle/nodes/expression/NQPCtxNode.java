package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "ctx")
public final class NQPCtxNode extends NQPObjNode {

    @Deserializer
    public NQPCtxNode() {
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return frame.materialize();
    }
}
