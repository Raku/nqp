package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.FileOps;
import org.perl6.nqp.dsl.Deserializer;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.PosixFilePermission;
import java.util.Set;

@NodeInfo(shortName = "chmod")
public final class NQPChmodNode extends NQPIntNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPChmodNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        Path path = Paths.get(leftNode.executeStr(frame));
        Set<PosixFilePermission> perms = FileOps.modeToPosixFilePermission(rightNode.executeInt(frame));
        try {
            Files.setPosixFilePermissions(path, perms);
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
        return 0;
    }
}
