package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "scgetdesc")
public final class NQPScgetdescNode extends NQPStrNode {
    @Child private NQPNode scRefNode;

    @Deserializer
    public NQPScgetdescNode(NQPNode scRefNode) {
        this.scRefNode = scRefNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        SerializationContext scRef = (SerializationContext) scRefNode.execute(frame);
        return scRef.description;
    }
}
