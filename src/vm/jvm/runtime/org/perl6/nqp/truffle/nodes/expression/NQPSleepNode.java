package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNumNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "sleep")
public final class NQPSleepNode extends NQPNumNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPSleepNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public double executeNum(VirtualFrame frame) {
        // Is this really the right behavior, i.e., swallowing all
        // InterruptedExceptions?  As far as I can tell the original
        // nqp::sleep could not be interrupted, so that behavior is
        // duplicated here, but that doesn't mean it's the right thing
        // to do on the JVM...

        double seconds = argNode.executeNum(frame);
        long now = System.currentTimeMillis();

        final long awake = now + (long) (seconds * 1000);

        while ((now = System.currentTimeMillis()) < awake) {
            long millis = awake - now;
            try {
                Thread.sleep(millis);
            } catch(InterruptedException e) {
                // swallow
            }
        }

        return seconds;
    }
}
