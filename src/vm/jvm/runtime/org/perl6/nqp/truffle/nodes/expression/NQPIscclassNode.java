package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.StringOps;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "iscclass")
public final class NQPIscclassNode extends NQPIntNode {
    @Child private NQPNode aNode;
    @Child private NQPNode bNode;
    @Child private NQPNode cNode;

    @Deserializer
    public NQPIscclassNode(NQPNode aNode, NQPNode bNode, NQPNode cNode) {
        this.aNode = aNode;
        this.bNode = bNode;
        this.cNode = cNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return StringOps.iscclass(aNode.executeInt(frame), bNode.executeStr(frame), cNode.executeInt(frame));
    }
}
