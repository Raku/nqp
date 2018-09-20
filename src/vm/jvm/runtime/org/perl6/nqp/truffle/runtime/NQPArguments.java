package org.perl6.nqp.truffle.runtime;
import com.oracle.truffle.api.frame.MaterializedFrame;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.CompilerAsserts;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.perl6.nqp.truffle.nodes.NQPNode;

public final class NQPArguments {
    public static final int OUTER_FRAME_INDEX = 0;
    public static final int NAMED_ARGUMENTS_INDEX = 1;
    public static final int RUNTIME_ARGUMENT_COUNT = 2;

    public static Object getUserArgument(Object[] arguments, int index) {
        return arguments[index + RUNTIME_ARGUMENT_COUNT];
    }

    public static boolean hasUserArgument(Object[] arguments, int index) {
        return index + RUNTIME_ARGUMENT_COUNT < arguments.length;
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

    public static final long NAMED = 1;
    public static final long FLAT = 2;

    public static Object[] unpack(VirtualFrame frame, int extra, long[] argumentFlags, String[] argumentNames, NQPNode[] argumentNodes) {
        CompilerAsserts.compilationConstant(argumentNodes.length);

        int count = 0;
        Object[] values = new Object[argumentNodes.length];
        for (int i = 0; i < argumentNodes.length; i++) {
            values[i] = argumentNodes[i].execute(frame);
            if ((argumentFlags[i] & NAMED) != 0) {
            } else if ((argumentFlags[i] & FLAT) != 0) {
                count += ((NQPList) values[i]).elems();
            } else {
                count++;
            }
        }

        Object[] arguments =  NQPArguments.createInitial(extra + count);

        int positional = extra;
        int nameIndex = 0;

        for (int i = 0; i < argumentNodes.length; i++) {
            if ((argumentFlags[i] & FLAT) != 0 && (argumentFlags[i] & NAMED) != 0) {
                NQPHash hash = (NQPHash) values[i];
                for (Map.Entry<String, Object> entry : hash.entrySet()) {
                    NQPArguments.setNamedArgument(arguments, entry.getKey(), entry.getValue());
                }
            } else if ((argumentFlags[i] & NAMED) != 0) {
                NQPArguments.setNamedArgument(arguments, argumentNames[nameIndex++], values[i]);
            } else if ((argumentFlags[i] & FLAT) != 0) {
                NQPList array = (NQPList) values[i];
                for (int j = 0; j < array.elems(); j++) {
                    NQPArguments.setUserArgument(arguments, positional++, array.atpos(j));
                }
            } else {
                NQPArguments.setUserArgument(arguments, positional++, values[i]);
            }
        }

        return arguments;
    }
}
