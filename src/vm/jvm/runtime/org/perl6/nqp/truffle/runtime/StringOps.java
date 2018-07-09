package org.perl6.nqp.truffle.runtime;
import java.util.HashMap;

public class StringOps {
    /* Brute force, but not normally needed for most programs. */
    private static volatile HashMap<String, Integer> cpNameMap;
    private static volatile Boolean cpNameMapAboveBMP;
    public static long codepointfromname(String name) {
        HashMap<String, Integer> names = cpNameMap;
        /* Gets the first half (the BMP) */
        if (names == null) {
            /* Initialize the expected max hash size as 0x10FFFF */
            names = new HashMap< >(0x10FFFF);
            for (int i = 0; i < Character.MAX_VALUE; i++)
                if (Character.isValidCodePoint(i))
                    names.put(Character.getName(i), i);
            names.put("ALERT",            (int)7);
            names.put("BEL",              (int)7);
            names.put("LF",               (int)10);
            names.put("LINE FEED",        (int)10);
            names.put("FF",               (int)12);
            names.put("FORM FEED",        (int)12);
            names.put("CR",               (int)13);
            names.put("CARRIAGE RETURN",  (int)13);
            names.put("NEL",              (int)133);
            names.put("NEXT LINE",        (int)133);
            names.remove("BELL"); // added below as 0x1F514, cmp. RT #130542
            cpNameMap = names;
            cpNameMapAboveBMP = false;
        }
        Integer found = names.get(name);
        /* If we have not found it yet, put all other possible codepoints into
         * the hash */
        if (found == null && !cpNameMapAboveBMP) {
            for (int i = Character.MAX_VALUE; i <= 0x10FFFF; i++)
                if (Character.isValidCodePoint(i))
                    names.put(Character.getName(i), i);
            names.put("BELL",             (int)0x1F514);
            cpNameMapAboveBMP = true;
            found = names.get(name);
        }
        return found == null ? -1 : found;
    }

    public static String codepointToTitleCase(int codepoint) {
        if (codepoint == 223) return "Ss";
        return new String(Character.toChars(Character.toTitleCase(codepoint)));
    }
}
