package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;

import org.perl6.nqp.truffle.sixmodel.SerializationContext;

import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.dsl.Global;

@NodeInfo(shortName = "createsc")
public final class NQPCreatescNode extends NQPObjNode {
    private final HashMap<String, SerializationContext> scs;
    @Child private NQPNode handleNode;

    @Deserializer
    public NQPCreatescNode(@Global HashMap<String, SerializationContext> scs, NQPNode handleNode) {
        this.scs = scs;
        this.handleNode = handleNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String handle = handleNode.executeStr(frame);
        SerializationContext sc = new SerializationContext(handle);
        scs.put(handle, sc);
        return sc;
    }
}
