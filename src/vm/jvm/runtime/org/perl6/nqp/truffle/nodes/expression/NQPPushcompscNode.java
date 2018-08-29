package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import java.util.ArrayList;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.dsl.Deserializer;


@NodeInfo(shortName = "pushcompsc")
public final class NQPPushcompscNode extends NQPObjNode {
    private final ArrayList<SerializationContext> compilingSCs;
    @Child private NQPNode scNode;

    public NQPPushcompscNode(ArrayList<SerializationContext> compilingSCs, NQPNode scNode) {
        this.compilingSCs = compilingSCs;
        this.scNode = scNode;
    }

    @Deserializer
    public static NQPPushcompscNode deserialize(NQPScope scope, NQPNode scNode) {
        return new NQPPushcompscNode(scope.getGlobalContext().compilingSCs, scNode);
    }

    @Override
    public Object execute(VirtualFrame frame) {
        SerializationContext sc = (SerializationContext) scNode.execute(frame);
        compilingSCs.add(sc);
        return sc;
    }
}
