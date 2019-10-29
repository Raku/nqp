package org.perl6.nqp.truffle.runtime;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstance;

import com.oracle.truffle.api.frame.FrameUtil;
import com.oracle.truffle.api.frame.FrameSlot;
import com.oracle.truffle.api.frame.MaterializedFrame;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.CompilerAsserts;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;

import java.util.HashMap;
import java.util.Map;

public final class NQPArguments {
    private static final int DYNAMIC_CONTEXT_INDEX = 0;
    private static final int OUTER_FRAME_INDEX = 1;
    private static final int NAMED_ARGUMENTS_INDEX = 2;
    private static final int RUNTIME_ARGUMENT_COUNT = 3;

    public static Object getUserArgument(Object[] arguments, int index) {
        return arguments[index + RUNTIME_ARGUMENT_COUNT];
    }

    public static boolean hasUserArgument(Object[] arguments, int index) {
        return (index + RUNTIME_ARGUMENT_COUNT) < arguments.length;
    }

    public static void setUserArgument(Object[] arguments, int index, Object value) {
        arguments[index + RUNTIME_ARGUMENT_COUNT] = value;
    }

    @TruffleBoundary
    public static void setNamedArgument(Object[] arguments, String key, Object value) {
        if (arguments[NAMED_ARGUMENTS_INDEX] == null) {
            arguments[NAMED_ARGUMENTS_INDEX] = new HashMap<String, Object>();
        }

        if (arguments[NAMED_ARGUMENTS_INDEX] instanceof HashMap) {
            ((HashMap<String, Object>) arguments[NAMED_ARGUMENTS_INDEX]).put(key, value);
        }
    }

    /* TODO - benchmark if TruffleBoundary should be more precise here */
    @TruffleBoundary
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

    public static void setDynamicContext(Object[] arguments, DynamicContext context) {
        arguments[DYNAMIC_CONTEXT_INDEX] = context;
    }

    public static DynamicContext getDynamicContext(Object[] arguments) {
        return (DynamicContext) arguments[DYNAMIC_CONTEXT_INDEX];
    }

    public static Object[] createInitial(int userArgumentCount) {
        return new Object[RUNTIME_ARGUMENT_COUNT + userArgumentCount];
    }

    public static int getUserArgumentCount(Object[] arguments) {
        return arguments.length - RUNTIME_ARGUMENT_COUNT;
    }

    private static final long NAMED = 1;
    private static final long FLAT = 2;

    public static Object[] unpack(
        VirtualFrame frame,
        FrameSlot contextSlot,
        int extra,
        long[] argumentFlags,
        String[] argumentNames,
        NQPNode[] argumentNodes
    ) {
        CompilerAsserts.compilationConstant(argumentNodes.length);

        final Object[] values = new Object[argumentNodes.length];

        int count = 0;
        for (int i = 0; i < argumentNodes.length; i++) {
            values[i] = argumentNodes[i].execute(frame);

            if ((argumentFlags[i] & NAMED) == 0) {
                count += ((argumentFlags[i] & FLAT) != 0) ? ((VMArrayInstance) values[i]).elems() : 1;
            }
        }

        final Object[] arguments =  NQPArguments.createInitial(extra + count);

        NQPArguments.setDynamicContext(arguments, (DynamicContext) FrameUtil.getObjectSafe(frame, contextSlot));

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
                VMArrayInstance array = (VMArrayInstance) values[i];
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
