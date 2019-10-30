package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNodeWithExecuteStrOnly;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.Shape;
import com.oracle.truffle.api.object.Location;
import com.oracle.truffle.api.object.IncompatibleLocationException;
import com.oracle.truffle.api.object.FinalLocationException;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindattr")
@NodeChildren({
  @NodeChild(value="objNode", type=NQPNode.class),
  @NodeChild(value="classHandleNode", type=NQPNode.class),
  @NodeChild(value="nameNode", type=NQPNodeWithExecuteStrOnly.class),
  @NodeChild(value="valueHandleNode", type=NQPNode.class),
})
public class NQPBindattrNode extends NQPObjNode {
    @Deserializer("bindattr")
    public static NQPNode deserialize(NQPNode objNode, NQPNode classHandleNode, NQPNode nameNode, NQPNode valueNode) {
        return NQPBindattrNodeGen.create(objNode, classHandleNode, new NQPNodeWithExecuteStrOnly(nameNode), valueNode);
    }

    /* TODO check name */
    @Specialization(
         guards = {"shape.check(obj)", "cachedName.equals(name)"},
         assumptions = "shape.getValidAssumption()"
    )
    protected Object writeCached(DynamicObject obj,
                    Object classHandle,
                    String name,
                    Object value,
                    @Cached("obj.getShape()") Shape shape,
                    @Cached("shape.getProperty(name).getLocation()") Location location,
                    @Cached("name") String cachedName
    ) {
        try {
            location.set(obj, value);
        } catch (IncompatibleLocationException e) {
            throw new RuntimeException(e);
        } catch (FinalLocationException e) {
            throw new RuntimeException(e);
        }
        return value;
    }

    @TruffleBoundary
    @Specialization(replaces = {"writeCached"})
    protected Object writeUncached(DynamicObject obj,
        Object classHandle,
        String name,
        Object value
    ) {
        if (!(obj.set(name, value))) {
            throw new RuntimeException("Can't set attribute");
        }
        return value;
    }
}
