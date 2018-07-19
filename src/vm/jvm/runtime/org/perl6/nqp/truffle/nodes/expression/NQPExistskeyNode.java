package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "existskey")
public final class NQPExistskeyNode extends NQPIntNode {
    @Child private NQPNode hashNode;
    @Child private NQPNode keyNode;

    @Deserializer
    public NQPExistskeyNode(NQPNode hashNode, NQPNode keyNode) {
        this.hashNode = hashNode;
        this.keyNode = keyNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        NQPHash hash = (NQPHash) hashNode.execute(frame);
        return hash.existskey(keyNode.executeStr(frame));
    }
}
