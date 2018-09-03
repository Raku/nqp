package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import java.lang.management.ManagementFactory;

@NodeInfo(shortName = "getpid")
public final class NQPGetpidNode extends NQPIntNode {

    @Deserializer
    public NQPGetpidNode() {
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return getPid();
    }

    // We are doing the parsing because GraalVM isn't using JDK 11 yet
    @TruffleBoundary
    public long getPid() {
        String name = ManagementFactory.getRuntimeMXBean().getName();
        int offset = name.indexOf('@');
        if (offset == -1) {
            throw new RuntimeException("Can't get pid");
        }
        try {
            return Long.decode(name.substring(0, offset));
        } catch (NumberFormatException e) {
            throw new RuntimeException("Can't get pid");
        }
    }
}
