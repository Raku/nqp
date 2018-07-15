package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@NodeInfo(shortName = "filewritable")
public final class NQPFilewritableNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPFilewritableNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        try {
            Path path_o = Paths.get(argNode.executeStr(frame));
            return Files.isWritable(path_o) ? 1 : 0;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
