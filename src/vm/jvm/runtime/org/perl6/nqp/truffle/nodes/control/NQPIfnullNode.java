package org.perl6.nqp.truffle.nodes.control;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.runtime.NQPNull;

@NodeInfo(shortName = "ifnull")
public final class NQPIfnullNode extends NQPObjNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPIfnullNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object value = leftNode.execute(frame);
        if (value == NQPNull.SINGLETON) {
            return rightNode.execute(frame);
        } else {
            return value; 
        }
    }
}
