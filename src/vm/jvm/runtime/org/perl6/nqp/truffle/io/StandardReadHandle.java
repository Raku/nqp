package org.perl6.nqp.truffle.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;

import jline.ConsoleReader;

public class StandardReadHandle implements IIOClosable, IIOEncodable, IIOSyncReadable, IIOPossiblyTTY {
    private InputStream is;
    private BufferedReader br;
    private ConsoleReader cr;
    private boolean eof = false;
    private Charset cs;

    public StandardReadHandle(InputStream is) {
        this.is = is;
        setEncoding(Charset.forName("UTF-8"));
    }

    public void close() {
        try {
            is.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void setEncoding(Charset cs) {
        this.cs = cs;
    }

    public byte[] read(int bytes) {
        try {
            byte[] array = new byte[bytes];
            int read = 0;
            int offset = 0;
            while (offset < bytes) {
                if ((read = is.read(array, offset, bytes - offset)) == -1) {
                    eof = true;
                    break;
                }
                offset += read;
            }
            byte[] compact = new byte[offset];
            System.arraycopy(array, 0, compact, 0, offset);
            return compact;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public synchronized String slurp() {
        try {
            if (br == null)
                br = new BufferedReader(new InputStreamReader(is, cs));
            StringBuffer data = new StringBuffer();
            char[] buf = new char[4096];
            int read = 0;
            while((read = br.read(buf)) != -1)
                data.append(String.valueOf(buf, 0, read));
            eof = true;
            return data.toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public synchronized String readline() {
        try {
            if (br == null)
                br = new BufferedReader(new InputStreamReader(is, cs));
            String line = br.readLine();
            if (line == null) {
                eof = true;
                line = "";
            }
            return line;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* TODO - think about unicode in readchars and getc */
    public synchronized String readchars(int count) {
        try {
            if (br == null)
                br = new BufferedReader(new InputStreamReader(is, cs));
            char[] chars = new char[count];

            int actuallyRead = br.read(chars, 0, count);

            if (actuallyRead == -1) {
                return "";
            }
            else {
                return new String(chars, 0, actuallyRead);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean eof() {
        return eof;
    }

    public boolean isTTY() {
        return System.console() != null;
    }
}
