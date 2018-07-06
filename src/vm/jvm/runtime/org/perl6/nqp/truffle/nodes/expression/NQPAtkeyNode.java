package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.runtime.NQPHash;


@NodeInfo(shortName = "atkey")
public final class NQPAtkeyNode extends NQPObjNode {
    @Child private NQPNode hashNode;
    @Child private NQPNode keyNode;

    @Deserializer
    public NQPAtkeyNode(NQPNode hashNode, NQPNode keyNode) {
        this.hashNode = hashNode;
        this.keyNode = keyNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return ((NQPHash)hashNode.execute(frame)).atkey(keyNode.executeStr(frame));
    }
}
