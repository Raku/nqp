package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.dsl.Global;

@NodeInfo(shortName = "knowhow")
public final class NQPKnowhowNode extends NQPObjNode {
    private final Object knowhow;

    @Deserializer
    public NQPKnowhowNode(@Global Object knowhow) {
        this.knowhow = knowhow;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return this.knowhow;
    }
}
