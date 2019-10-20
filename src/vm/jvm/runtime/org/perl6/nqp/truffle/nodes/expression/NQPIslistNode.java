package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.truffle.runtime.NQPListInt;
import org.perl6.nqp.truffle.runtime.NQPListNum;
import org.perl6.nqp.truffle.runtime.NQPListStr;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "islist")
public final class NQPIslistNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPIslistNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        Object arg = argNode.execute(frame);
        return (arg instanceof VMArrayInstance || arg instanceof NQPListInt || arg instanceof NQPListNum || arg instanceof NQPListStr) ? 1 : 0;
    }
}
