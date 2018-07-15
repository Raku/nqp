package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@NodeInfo(shortName = "link")
public final class NQPLinkNode extends NQPIntNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPLinkNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        Path before = Paths.get(leftNode.executeStr(frame));
        Path after = Paths.get(rightNode.executeStr(frame));
        try {
            Files.createLink(after, before);
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
        return 0;
    }
}
