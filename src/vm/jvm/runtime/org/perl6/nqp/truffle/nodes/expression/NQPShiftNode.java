package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPListIterator;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "shift")
public final class NQPShiftNode extends NQPObjNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPShiftNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object value = argNode.execute(frame);
        if (value instanceof NQPListIterator) {
            NQPListIterator iterator = (NQPListIterator) value;
            return iterator.shift();
        } else if (value instanceof NQPList) {
            NQPList list = (NQPList) value;
            return list.shift();
        } else {
            throw new RuntimeException("TODO: wrong thing in shift");
        }
    }
}
