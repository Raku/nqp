package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.sixmodel.TypeObject;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "who")
@NodeChildren({@NodeChild(value="valueNode", type=NQPNode.class)})
public class NQPWhoNode extends NQPObjNode {
    @Specialization
    public Object doTypeObject(TypeObject typeObject) {
        return typeObject.stable.who;
    }

    @Deserializer("who")
    public static NQPWhoNode deserialize(NQPNode valueNode) {
        return NQPWhoNodeGen.create(valueNode);
    }
}
