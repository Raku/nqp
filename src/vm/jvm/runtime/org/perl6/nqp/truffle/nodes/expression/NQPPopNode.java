package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "pop")
public final class NQPPopNode extends NQPObjNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPPopNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return ((NQPList) argNode.execute(frame)).pop();
    }
}
