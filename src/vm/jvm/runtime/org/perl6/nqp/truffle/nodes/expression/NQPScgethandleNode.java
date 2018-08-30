package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "scgethandle")
public final class NQPScgethandleNode extends NQPStrNode {
    @Child private NQPNode scNode;

    @Deserializer
    public NQPScgethandleNode(NQPNode scNode) {
        this.scNode = scNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        SerializationContext sc = (SerializationContext) scNode.execute(frame);
        return sc.handle;
    }
}
