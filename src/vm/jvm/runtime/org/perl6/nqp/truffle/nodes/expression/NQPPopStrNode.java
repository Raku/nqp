package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.truffle.runtime.NQPListStr;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "pop_s")
public final class NQPPopStrNode extends NQPStrNode {
    @Child private NQPNode listNode;

    @Deserializer
    public NQPPopStrNode(NQPNode listNode) {
        this.listNode = listNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        return ((NQPListStr)listNode.execute(frame)).popStr();
    }
}
