package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

@NodeInfo(shortName = "getpid")
public final class NQPGetpidNode extends NQPIntNode {

    @Deserializer
    public NQPGetpidNode() {
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        /* Questionably portable; see:
         * http://boxysystems.com/index.php/java-tip-find-process-id-of-running-java-process/
         */
        try {
            java.lang.management.RuntimeMXBean runtime = java.lang.management.ManagementFactory.getRuntimeMXBean();
            Field jvm = runtime.getClass().getDeclaredField("jvm");
            jvm.setAccessible(true);
            Object mgmt = jvm.get(runtime);
            Method pid_method = mgmt.getClass().getDeclaredMethod("getProcessId");
            pid_method.setAccessible(true);
            return (Integer)pid_method.invoke(mgmt);
        }
        catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }
}
