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
import java.nio.file.attribute.PosixFilePermissions;
import java.util.Set;

@NodeInfo(shortName = "mkdir")
public final class NQPMkdirNode extends NQPIntNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPMkdirNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        String os = System.getProperty("os.name").toLowerCase();
        Path path = Paths.get(leftNode.executeStr(frame));
        Set<PosixFilePermission> perms = FileOps.modeToPosixFilePermission(rightNode.executeInt(frame));
        try {
            if (os.indexOf("win") >= 0)
                Files.createDirectories(path);
            else
                Files.createDirectories(path,
                    PosixFilePermissions.asFileAttribute(perms));
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
        return 0;
    }
}
