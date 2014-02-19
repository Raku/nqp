package org.perl6.nqp.runtime;

import java.nio.ByteBuffer;

public class Base64 {
    private static char base64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
    
    /* This works around a lack of unsigned in Java. */
    private static int deSign(byte b) {
        if (b < 0)
            return (int)b + 256;
        else
            return (int)b;
    }
    
    public static String encode(ByteBuffer buf)
    {
        int size = buf.capacity();
        char[] str = new char[(size + 3) * 4/3 + 1];

        int p = 0;
        int i = 0;
        buf.position(0);
        while (i < size) {
            int c = deSign(buf.get());
            i++;
            
            c *= 256;
            if (i < size)
                c += deSign(buf.get());
            i++;

            c *= 256;
            if (i < size)
                c += deSign(buf.get());
            i++;

            str[p++] = base64[(c & 0x00fc0000) >> 18];
            str[p++] = base64[(c & 0x0003f000) >> 12];

            if (i > size + 1)
                str[p++] = '=';
            else
                str[p++] = base64[(c & 0x00000fc0) >> 6];

            if (i > size)
                str[p++] = '=';
            else
                str[p++] = base64[c & 0x0000003f];
        }

        return String.copyValueOf(str, 0, p);
    }
    
    private static int POS(char c)
    {
        if (c >= 'A' && c <= 'Z') return c - 'A';
        if (c >= 'a' && c <= 'z') return c - 'a' + 26;
        if (c >= '0' && c <= '9') return c - '0' + 52;
        if (c == '+') return 62;
        if (c == '/') return 63;
        if (c == '=') return -1;
        return -2;
    }
    
    public static ByteBuffer decode(String s)
    {
        if (s.length() % 4 != 0)
            new RuntimeException("Invalid Base64 input");

        byte[] data = new byte[s.length() / 4 * 3];
        int n[] = new int[4];
        int p = 0, q = 0;
    
        while (p < s.length()) {
            n[0] = POS(s.charAt(p++));
            n[1] = POS(s.charAt(p++));
            n[2] = POS(s.charAt(p++));
            n[3] = POS(s.charAt(p++));
    
            if (n[0] == -2 || n[1] == -2 || n[2] == -2 || n[3] == -2)
                new RuntimeException("Invalid Base64 input");
    
            if (n[0] == -1 || n[1] == -1)
                new RuntimeException("Invalid Base64 input");
    
            if (n[2] == -1 && n[3] != -1)
                new RuntimeException("Invalid Base64 input");
    
            data[q] = (byte)((n[0] << 2) + (n[1] >> 4));
            if (n[2] != -1)
                data[q + 1] = (byte)(((n[1] & 15) << 4) + (n[2] >> 2));
            if (n[3] != -1)
                data[q + 2] = (byte)(((n[2] & 3) << 6) + n[3]);
            q += 3;
        }
    
        return ByteBuffer.wrap(data, 0, q - (n[2] == -1 ? 1 : 0) - (n[3]==-1 ? 1 : 0));
    }
}
