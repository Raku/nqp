package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "time_i")
public final class NQPTimeIntNode extends NQPIntNode {

    @Deserializer
    public NQPTimeIntNode() {
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return (long) (System.currentTimeMillis() / 1000);
    }
}
