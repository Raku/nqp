package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.ArrayList;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "popcompsc")
public final class NQPPopcompscNode extends NQPObjNode {
    private final ArrayList<SerializationContext> compilingSCs;

    public NQPPopcompscNode(ArrayList<SerializationContext> compilingSCs) {
        this.compilingSCs = compilingSCs;    
    }

    @Deserializer
    public static NQPPopcompscNode deserialize(NQPScope scope) {
        return new NQPPopcompscNode(scope.getGlobalContext().compilingSCs);
    }

    @Override
    public Object execute(VirtualFrame frame) {
        int idx = compilingSCs.size() - 1;
        SerializationContext result = compilingSCs.get(idx);
        compilingSCs.remove(idx);
        return result;
    }
}
