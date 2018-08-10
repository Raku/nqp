package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "null_s")
public final class NQPNullStrNode extends NQPStrNode {

    @Deserializer
    public NQPNullStrNode() {
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        return null;
    }
}
