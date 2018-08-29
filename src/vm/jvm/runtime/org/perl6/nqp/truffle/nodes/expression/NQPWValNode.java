package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPNull;

@NodeInfo(shortName = "wval")
public final class NQPWValNode extends NQPObjNode {
    private final String handle;
    private final long idx;

    @Deserializer
    public NQPWValNode(String handle, long idx) {
        this.handle = handle;
        this.idx = idx;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return NQPNull.SINGLETON;
    }
}
