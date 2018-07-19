package org.perl6.nqp.truffle.runtime;
import com.oracle.truffle.api.frame.MaterializedFrame;
import java.util.HashMap;

public final class NQPArguments {
    public static final int OUTER_FRAME_INDEX = 0;
    public static final int NAMED_ARGUMENTS_INDEX = 1;
    public static final int RUNTIME_ARGUMENT_COUNT = 2;

    public static Object getUserArgument(Object[] arguments, int index) {
        return arguments[index + RUNTIME_ARGUMENT_COUNT];
    }

    public static void setUserArgument(Object[] arguments, int index, Object value) {
        arguments[index + RUNTIME_ARGUMENT_COUNT] = value;
    }

    public static void setNamedArgument(Object[] arguments, String key, Object value) {
        Object maybeNamedArgs = arguments[NAMED_ARGUMENTS_INDEX];
        HashMap<String, Object> namedArgs;
        if (maybeNamedArgs == null) {
            namedArgs = new HashMap<String, Object>();
            arguments[NAMED_ARGUMENTS_INDEX] = namedArgs;
        } else {
            namedArgs = (HashMap<String, Object>) maybeNamedArgs;
        }

        namedArgs.put(key, value);
    }

    public static Object getNamedArgument(Object[] arguments, String key) {
        if (arguments[NAMED_ARGUMENTS_INDEX] == null) {
            return null;
        }
        return ((HashMap<String, Object>) arguments[NAMED_ARGUMENTS_INDEX]).get(key);
    }

    public static HashMap<String, Object> getNamedArguments(Object[] arguments) {
        return (HashMap<String, Object>) arguments[NAMED_ARGUMENTS_INDEX];
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

    public static int getUserArgumentCount(Object[] arguments) {
        return arguments.length - RUNTIME_ARGUMENT_COUNT;
    }
}
