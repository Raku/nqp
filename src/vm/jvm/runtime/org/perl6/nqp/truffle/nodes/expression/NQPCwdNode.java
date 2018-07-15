package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "cwd")
public final class NQPCwdNode extends NQPStrNode {

    @Deserializer
    public NQPCwdNode() {
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        return System.getProperty("user.dir");
    }
}
