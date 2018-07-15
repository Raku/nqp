package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@NodeInfo(shortName = "rmdir")
public final class NQPRmdirNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPRmdirNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        Path path = Paths.get(argNode.executeStr(frame));
        try {
            if (!Files.isDirectory(path)) {
                return -2;
            }
            Files.delete(path);
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
        return 0;
    }
}
