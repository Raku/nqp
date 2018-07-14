package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.truffle.runtime.FileOps;
import org.perl6.nqp.dsl.Deserializer;
import java.nio.file.LinkOption;

@NodeInfo(shortName = "lstat_time")
public final class NQPLstat_timeNode extends NQPNumNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPLstat_timeNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        return FileOps.stat_time_internal(leftNode.executeStr(frame), rightNode.executeInt(frame), LinkOption.NOFOLLOW_LINKS);
    }
}
