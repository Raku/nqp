package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.truffle.runtime.NQPListIterator;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "iterator")
public final class NQPIteratorNode extends NQPObjNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPIteratorNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        NQPList list = (NQPList) argNode.execute(frame);
        return new NQPListIterator(list);
    }
}
