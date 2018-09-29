package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.truffle.sixmodel.TypeObject;
import org.perl6.nqp.dsl.Deserializer;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;

@NodeInfo(shortName = "create")

@NodeChildren({@NodeChild(value="argNode", type=NQPNode.class)})
public class NQPCreateNode extends NQPObjNode {
    public NQPCreateNode() {
    }

    @Specialization
    Object doTypeObject(TypeObject typeObject) {
        return typeObject.stable.repr.allocate();
    }

    @Deserializer("create")
    public static NQPCreateNode deserialize(NQPNode valueNode) {
        return NQPCreateNodeGen.create(valueNode);
    }
}
