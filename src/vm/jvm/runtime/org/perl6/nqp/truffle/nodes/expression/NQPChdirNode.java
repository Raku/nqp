package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "chdir")
public final class NQPChdirNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPChdirNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        throw new RuntimeException("chdir is not available on JVM");
    }
}
