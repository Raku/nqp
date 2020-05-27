package org.raku.nqp.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;

import jline.ConsoleReader;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.ThreadContext;

public class StandardReadHandle implements IIOClosable, IIOEncodable, IIOSyncReadable, IIOInteractive, IIOPossiblyTTY {
    private InputStream is;
    private BufferedReader br;
    private ConsoleReader cr;
    private boolean eof = false;
    private Charset cs;

    public StandardReadHandle(ThreadContext tc, InputStream is) {
        this.is = is;
        setEncoding(tc, Charset.forName("UTF-8"));
    }

    @Override
    public void close(ThreadContext tc) {
        try {
            is.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void setEncoding(ThreadContext tc, Charset cs) {
        this.cs = cs;
    }

    @Override
    public byte[] read(ThreadContext tc, int bytes) {
        try {
            byte[] array = new byte[bytes];
            int read = 0;
            int offset = 0;
            if (isTTY(tc)) {
                while (offset < bytes) {
                    read = is.read(array, offset, Math.min(is.available(), bytes - offset));
                    if (read == -1) {
                        eof = true;
                        break;
                    }
                    else if (read == 0) {
                        if (is.available() == 0 && offset > 0) {
                            break;
                        }
                    }
                    else {
                        offset += read;
                    }
                }
            }
            else {
                while (offset < bytes) {
                    if ((read = is.read(array, offset, bytes - offset)) == -1) {
                        eof = true;
                        break;
                    }
                    offset += read;
                }
            }
            byte[] compact = new byte[offset];
            System.arraycopy(array, 0, compact, 0, offset);
            return compact;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public synchronized String slurp(ThreadContext tc) {
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
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public synchronized String readline(ThreadContext tc) {
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
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    /* TODO - think about unicode in readchars and getc */
    @Override
    public synchronized String readchars(ThreadContext tc, int count) {
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
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public synchronized String readlineInteractive(ThreadContext tc, String prompt) {
        try {
            if (cr == null)
                cr = new ConsoleReader(is, new OutputStreamWriter(tc.gc.out));
            String line = cr.readLine(prompt);
            if (line == null) {
                eof = true;
                line = "";
            }
            return line;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public boolean eof(ThreadContext tc) {
        return eof;
    }

    @Override
    public boolean isTTY(ThreadContext tc) {
        return System.console() != null;
    }
}
