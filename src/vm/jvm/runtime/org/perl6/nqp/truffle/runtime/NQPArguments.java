package org.perl6.nqp.truffle.runtime;
import com.oracle.truffle.api.frame.MaterializedFrame;
public final class NQPArguments {
    public static final int OUTER_FRAME_INDEX = 0;
    public static final int RUNTIME_ARGUMENT_COUNT = 1;

    public static Object getUserArgument(Object[] arguments, int index) {
        return arguments[index + RUNTIME_ARGUMENT_COUNT];
    }
    public static void setUserArgument(Object[] arguments, int index, Object value) {
        arguments[index + RUNTIME_ARGUMENT_COUNT] = value;
    }

    public static void setOuterFrame(Object[] arguments, MaterializedFrame outer) {
        arguments[OUTER_FRAME_INDEX] = outer;
    }

    public static MaterializedFrame getOuterFrame(Object[] arguments) {
        return (MaterializedFrame) arguments[OUTER_FRAME_INDEX];
    }

    public static Object[] createInitial(int userArgumentCount) {
        Object[] result = new Object[RUNTIME_ARGUMENT_COUNT + userArgumentCount];
        return result;
    }
}
