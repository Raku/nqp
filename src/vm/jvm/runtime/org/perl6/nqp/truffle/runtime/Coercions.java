package org.perl6.nqp.truffle.runtime;

public class Coercions {
    public static String numToStr(double value) {
        if (value == (long)value) {
            if (value == 0 && Double.toString(value).equals("-0.0")) {
                return "-0";
            }
            return Long.toString((long)value);
        }
        else {
            if (value == Double.POSITIVE_INFINITY)
                return "Inf";
            if (value == Double.NEGATIVE_INFINITY)
                return "-Inf";
            if (value != value)
                return "NaN";
            return Double.toString(value);
        }
    }
}
