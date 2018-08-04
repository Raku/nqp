package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;

import org.perl6.nqp.truffle.runtime.NQPHash;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "deletekey")
public final class NQPDeletekeyNode extends NQPObjNode {
    @Child private NQPNode hashNode;
    @Child private NQPNode keyNode;

    @Deserializer
    public NQPDeletekeyNode(NQPNode hashNode, NQPNode keyNode) {
        this.hashNode = hashNode;
        this.keyNode = keyNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        NQPHash hash = (NQPHash) hashNode.execute(frame);
        String key = keyNode.executeStr(frame);
        hash.deletekey(key);
        return hash;
    }
}
