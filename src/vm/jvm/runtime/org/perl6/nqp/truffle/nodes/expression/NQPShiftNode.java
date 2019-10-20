package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.truffle.sixmodel.reprs.VMIterInstance;
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
        if (value instanceof VMIterInstance) {
            VMIterInstance iterator = (VMIterInstance) value;
            return iterator.shift();
        } else if (value instanceof VMArrayInstance) {
            VMArrayInstance list = (VMArrayInstance) value;
            return list.shift();
        } else {
            throw new RuntimeException("TODO: wrong thing in shift");
        }
    }
}
