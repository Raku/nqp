package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;

public class IOHandleInstance extends FixedSizeObject {
    /* Object that can perform I/O operations; will be checked for its
     * capabilities by interface by ops and then invoked. */
    public Object handle;

    public IOHandleInstance(STable stable) {
        super(stable);
    }
}
