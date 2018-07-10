package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.StringOps;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "findclass")
public final class NQPFindclassNode extends NQPIntNode {
    @Child private NQPNode aNode;
    @Child private NQPNode bNode;
    @Child private NQPNode cNode;
    @Child private NQPNode dNode;

    @Deserializer
    public NQPFindclassNode(NQPNode aNode, NQPNode bNode, NQPNode cNode, NQPNode dNode) {
        this.aNode = aNode;
        this.bNode = bNode;
        this.cNode = cNode;
        this.dNode = dNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        String target = bNode.executeStr(frame);
        long offset = cNode.executeInt(frame);
        long length = target.length();
        long end = offset + dNode.executeInt(frame);
        end = length < end ? length : end;

        for (long pos = offset; pos < end; pos++) {
            if (StringOps.iscclass(aNode.executeInt(frame), target, pos) > 0) {
                return pos;
            }
        }

        return end;
    }
}
