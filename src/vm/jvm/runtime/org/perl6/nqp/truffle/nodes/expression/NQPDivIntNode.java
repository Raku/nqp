package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "div_i")
public final class NQPDivIntNode extends NQPIntNode {
    @Child private NQPNode dividentNode;
    @Child private NQPNode divisorNode;

    @Deserializer
    public NQPDivIntNode(NQPNode dividentNode, NQPNode divisorNode) {
        this.dividentNode = dividentNode;
        this.divisorNode = divisorNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        long divident = dividentNode.executeInt(frame);
        long divisor = divisorNode.executeInt(frame);
        if (divisor == 0) {
            //TODO: throw an exception
            //die_s("Division by zero", tc);
        }
        return (long)Math.floor((double) divident / divisor);
    }
}
