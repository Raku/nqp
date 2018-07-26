package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.StringOps;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "eqat")
public final class NQPEqatNode extends NQPIntNode {
    @Child private NQPNode aNode;
    @Child private NQPNode bNode;
    @Child private NQPNode cNode;

    @Deserializer
    public NQPEqatNode(NQPNode aNode, NQPNode bNode, NQPNode cNode) {
        this.aNode = aNode;
        this.bNode = bNode;
        this.cNode = cNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return StringOps.string_equal_at(false, aNode.executeStr(frame), bNode.executeStr(frame), cNode.executeInt(frame));
    }
}
