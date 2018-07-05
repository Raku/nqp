package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "old-int-value")
public final class NQPOldIntValueNode extends NQPNode {
    @Child private NQPNode oldValueNode;
    @Child private NQPNode bindNewValueNode;

    @Deserializer("old-int-value")
    public NQPOldIntValueNode(NQPNode oldValueNode, NQPNode bindNewValueNode) {
        this.oldValueNode = oldValueNode;
        this.bindNewValueNode = bindNewValueNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        long oldValue = this.oldValueNode.executeInt(frame);
        this.bindNewValueNode.execute(frame);
        return oldValue;
    }

    public void executeVoid(VirtualFrame frame) {
        this.bindNewValueNode.executeVoid(frame);
    }
}
