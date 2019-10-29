package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.Shape;
import com.oracle.truffle.api.object.Location;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.dsl.Deserializer;
import com.oracle.truffle.api.dsl.NodeField;


@NodeInfo(shortName = "attribute-get")
@NodeField(name = "name", type = String.class)
@NodeChildren({
  @NodeChild(value="objNode", type=NQPNode.class),
  @NodeChild(value="classHandleNode", type=NQPNode.class),
})

// TODO: take classHandle into account
public abstract class NQPAttributeGetNode extends NQPObjNode {
    @Child private NQPNode classHandleNode;

    protected abstract String getName();

    @Deserializer("attribute-get")
    public static NQPNode deserialize(NQPNode objNode, NQPNode classHandleNode, String name) {
        return NQPAttributeGetNodeGen.create(objNode, classHandleNode, name);
    }

    @Specialization(
         guards = "shape.check(receiver)",
         assumptions = "shape.getValidAssumption()"
    )
    protected Object readCached(DynamicObject receiver,
                    Object classHandle,
                    @Cached("receiver.getShape()") Shape shape,
                    @Cached("shape.getProperty(getName()).getLocation()") Location location
    ) {
        return location.get(receiver, shape);
    }

    @TruffleBoundary
    @Specialization(replaces = {"readCached"})
    protected Object readUncached(DynamicObject receiver, Object classHandle) {
        return receiver.get(getName());
    }
}
