package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.truffle.sixmodel.reprs.VMIterInstance;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "iterator")
public final class NQPIteratorNode extends NQPObjNode {
    @Child private NQPNode argNode;
    private final HLL hll;

    @Deserializer
    public NQPIteratorNode(HLL hll, NQPNode argNode) {
        this.hll = hll;
        this.argNode = argNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        VMIterInstance iter = (VMIterInstance) hll.arrayIteratorType.stable.repr.allocate();
        iter.setArray(argNode.execute(frame));
        return iter;
    }
}
