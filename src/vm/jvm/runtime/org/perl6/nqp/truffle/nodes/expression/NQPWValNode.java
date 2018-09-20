package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

@NodeInfo(shortName = "wval")
public final class NQPWValNode extends NQPObjNode {
    private final String handle;
    private final int index;

    public HashMap<String, SerializationContext> scs;

    public NQPWValNode(HashMap<String, SerializationContext> scs, String handle, int index) {
        this.scs = scs;
        this.handle = handle;
        this.index = index;
    }

    @Deserializer("wval")
    public static NQPWValNode deserialize(NQPScope scope, String handle, long index) {
        return new NQPWValNode(scope.getGlobalContext().scs, handle, (int) index);
    }

    /* TODO - do the lookup only once*/
    @Override
    public Object execute(VirtualFrame frame) {
        if (scs.get(handle) == null) {
          System.out.println("no sc:" + handle);
        }
        return scs.get(handle).getObject(index);
    }
}
