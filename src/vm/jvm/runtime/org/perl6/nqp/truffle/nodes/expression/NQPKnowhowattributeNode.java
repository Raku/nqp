package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "knowhowattribute")
public final class NQPKnowhowattributeNode extends NQPObjNode {
    private final Object knowhowAttribute;

    public NQPKnowhowattributeNode(Object knowhowAttribute) {
        this.knowhowAttribute = knowhowAttribute;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return knowhowAttribute;
    }

    @Deserializer("knowhowattribute")
    public static NQPKnowhowattributeNode deserialize(NQPScope scope) {
        return new NQPKnowhowattributeNode(scope.getGlobalContext().knowhowAttribute);
    }
}
