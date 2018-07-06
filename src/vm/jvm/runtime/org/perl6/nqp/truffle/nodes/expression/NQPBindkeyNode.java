package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindkey")
public final class NQPBindkeyNode extends NQPObjNode {
    @Child private NQPNode hashNode;
    @Child private NQPNode keyNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPBindkeyNode(NQPNode hashNode, NQPNode keyNode, NQPNode valueNode) {
        this.hashNode = hashNode;
        this.keyNode = keyNode;
        this.valueNode = valueNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        NQPHash hash = (NQPHash) hashNode.execute(frame);
        return hash.bindkey(keyNode.executeStr(frame), valueNode.execute(frame));
    }
}
