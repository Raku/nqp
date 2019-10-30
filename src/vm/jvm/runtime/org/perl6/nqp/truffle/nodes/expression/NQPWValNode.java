package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.NodeField;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.dsl.Global;

@NodeField(name = "scs", type = Object.class)
@NodeField(name = "handle", type = String.class)
@NodeField(name = "index", type = int.class)
public abstract class NQPWValNode extends NQPObjNode {
    protected abstract Object getScs();
    protected abstract String getHandle();
    protected abstract int getIndex();

    @Deserializer
    public static NQPWValNode deserialize(@Global HashMap<String, SerializationContext> scs, String handle, long index) {
        return NQPWValNodeGen.create(scs, handle, (int) index);
    }

    /* TODO - throw an exception when we can't find the object */
    Object getObject() {
        return ((HashMap<String, SerializationContext>) getScs()).get(getHandle()).getObject(getIndex());
    }

    @Specialization
    public Object resolveValue(@Cached("getObject()") Object value) {
        return value;
    }
}
