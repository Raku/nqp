package org.perl6.nqp.truffle.runtime;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;

public class Coercions {
    @TruffleBoundary
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

            String coerced = Double.toString(value);

            int index = coerced.indexOf('E');
            if (index == -1) {
                return coerced;
            } else {
                if (coerced.charAt(index+1) == '-') {
                   return coerced.substring(0, index) + "e" + coerced.substring(index+1);
                } else {
                   return coerced.substring(0, index) + "e+" + coerced.substring(index+1);
                }
            }
        }
    }

    @TruffleBoundary
    public static double strToNum(String value) {
        try {
            // remove valid underscores
            value = value.replaceAll("(?<=\\d)_+(?=\\d)", "");
            // replace unicode minus U+2212 with ascii version
            value = value.replaceAll("\u2212", "-");
            return Double.parseDouble(value);
        }
        catch (NumberFormatException e) {
            if (value.equals("Inf"))
                return Double.POSITIVE_INFINITY;
            if (value.equals("+Inf"))
                return Double.POSITIVE_INFINITY;
            if (value.equals("-Inf"))
                return Double.NEGATIVE_INFINITY;
            if (value.equals("NaN"))
                return Double.NaN;
            return 0.0;
        }
    }
}
