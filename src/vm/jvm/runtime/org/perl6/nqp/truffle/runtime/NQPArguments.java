package org.perl6.nqp.truffle.runtime;
public final class NQPArguments {
    public static final int RUNTIME_ARGUMENT_COUNT = 0;
    public static Object getUserArgument(Object[] arguments, int index) {
        return arguments[index + RUNTIME_ARGUMENT_COUNT];
    }
    public static void setUserArgument(Object[] arguments, int index, Object value) {
        arguments[index + RUNTIME_ARGUMENT_COUNT] = value;
    }

    public static Object[] createInitial(int userArgumentCount) {
        Object[] result = new Object[RUNTIME_ARGUMENT_COUNT + userArgumentCount];
        return result;
    }
}
