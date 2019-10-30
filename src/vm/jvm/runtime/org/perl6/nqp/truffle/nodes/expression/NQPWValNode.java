package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.dsl.Global;

@NodeInfo(shortName = "wval")
public final class NQPWValNode extends NQPObjNode {
    private final String handle;
    private final int index;

    public HashMap<String, SerializationContext> scs;

    @Deserializer
    public NQPWValNode(@Global HashMap<String, SerializationContext> scs, String handle, long index) {
        this.scs = scs;
        this.handle = handle;
        this.index = (int) index;
    }

    /* TODO - throw an exception when we can't find the object */
    /* TODO - do the lookup only once*/
    @Override
    public Object execute(VirtualFrame frame) {
        return scs.get(handle).getObject(index);
    }
}
