package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "knowhow")
public final class NQPKnowhowNode extends NQPObjNode {
    private final Object knowhow;

    public NQPKnowhowNode(Object knowhow) {
        this.knowhow = knowhow;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return this.knowhow;
    }

    @Deserializer("knowhow")
    public static NQPKnowhowNode deserialize(NQPScope scope) {
        return new NQPKnowhowNode(scope.getGlobalContext().knowhow);
    }
}
