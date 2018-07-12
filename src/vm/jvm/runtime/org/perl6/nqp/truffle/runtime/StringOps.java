package org.perl6.nqp.truffle.runtime;
import java.util.HashMap;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;

public class StringOps {
    /* Brute force, but not normally needed for most programs. */
    private static volatile HashMap<String, Integer> cpNameMap;
    private static volatile Boolean cpNameMapAboveBMP;

    @TruffleBoundary
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

    @TruffleBoundary
    public static String codepointToTitleCase(int codepoint) {
        if (codepoint == 223) return "Ss";
        return new String(Character.toChars(Character.toTitleCase(codepoint)));
    }

    private static final int CCLASS_ANY          = 65535;
    private static final int CCLASS_UPPERCASE    = 1;
    private static final int CCLASS_LOWERCASE    = 2;
    private static final int CCLASS_ALPHABETIC   = 4;
    private static final int CCLASS_NUMERIC      = 8;
    private static final int CCLASS_HEXADECIMAL  = 16;
    private static final int CCLASS_WHITESPACE   = 32;
    private static final int CCLASS_PRINTING     = 64;
    private static final int CCLASS_BLANK        = 256;
    private static final int CCLASS_CONTROL      = 512;
    private static final int CCLASS_PUNCTUATION  = 1024;
    private static final int CCLASS_ALPHANUMERIC = 2048;
    private static final int CCLASS_NEWLINE      = 4096;
    private static final int CCLASS_WORD         = 8192;
    private static final int PUNCT_TYPES =
        (1 << Character.CONNECTOR_PUNCTUATION) | (1 << Character.DASH_PUNCTUATION) |
        (1 << Character.END_PUNCTUATION) | (1 << Character.FINAL_QUOTE_PUNCTUATION) |
        (1 << Character.INITIAL_QUOTE_PUNCTUATION) | (1 << Character.OTHER_PUNCTUATION) |
        (1 << Character.START_PUNCTUATION);
    private static final int NONPRINT_TYPES =
        (1 << Character.CONTROL) | (1 << Character.SURROGATE) | (1 << Character.UNASSIGNED) |
        (1 << Character.LINE_SEPARATOR) | (1 << Character.PARAGRAPH_SEPARATOR);


    public static long iscclass(long cclass, String target, long offset) {
        if (offset < 0 || offset >= target.length())
            return 0;
        char test = target.charAt((int)offset);
        switch ((int)cclass) {
        case CCLASS_ANY:
            return 1;
        case CCLASS_NUMERIC:
            return Character.isDigit(test) ? 1 : 0;
        case CCLASS_WHITESPACE:
            if (Character.isSpaceChar(test)) return 1;
            if (test >= '\t' && test <= '\r') return 1;
            if (test == '\u0085') return 1;
            return 0;
        case CCLASS_PRINTING:
            if (((1 << Character.getType(test)) & NONPRINT_TYPES) != 0) return 0;
            return test < '\t' || test > '\r' ? 1 : 0;
        case CCLASS_WORD:
            return test == '_' || Character.isLetterOrDigit(test) ? 1 : 0;
        case CCLASS_NEWLINE:
            return (Character.getType(test) == Character.LINE_SEPARATOR) ||
                    (test == '\n' || test == '\u000b' || test == '\f' || test == '\r' ||
                     test == '\u0085' || test == '\u2029')
                    ? 1 : 0;
        case CCLASS_ALPHABETIC:
            return Character.isAlphabetic(test) ? 1 : 0;
        case CCLASS_UPPERCASE:
            return Character.isUpperCase(test) ? 1 : 0;
        case CCLASS_LOWERCASE:
            return Character.isLowerCase(test) ? 1 : 0;
        case CCLASS_HEXADECIMAL:
            return Character.isDigit(test) ||
                    (test >= 'A' && test <= 'F' || test >= 'a' && test <= 'f')
                    ? 1 : 0;
        case CCLASS_BLANK:
            return (Character.getType(test) == Character.SPACE_SEPARATOR) ||
                    (test == '\t')
                    ? 1 : 0;
        case CCLASS_CONTROL:
            return Character.isISOControl(test) ? 1 : 0;
        case CCLASS_PUNCTUATION:
            return ((1 << Character.getType(test)) & PUNCT_TYPES) != 0 ? 1 : 0;
        case CCLASS_ALPHANUMERIC:
            return Character.isLetterOrDigit(test) ? 1 : 0;
        default:
            return 0;
        }
    }
}
