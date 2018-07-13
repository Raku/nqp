package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.FileOps;
import org.perl6.nqp.dsl.Deserializer;
import java.nio.file.LinkOption;

@NodeInfo(shortName = "lstat")
public final class NQPLstatNode extends NQPIntNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPLstatNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return FileOps.stat_internal(leftNode.executeStr(frame), rightNode.executeInt(frame), LinkOption.NOFOLLOW_LINKS);
    }
}
