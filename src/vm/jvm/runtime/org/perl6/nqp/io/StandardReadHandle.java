package org.perl6.nqp.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;

import jline.ConsoleReader;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

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
    
    public void close(ThreadContext tc) {
        try {
            is.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void setEncoding(ThreadContext tc, Charset cs) {
        this.cs = cs;
    }
    
    public byte[] read(ThreadContext tc, int bytes) {
        try {
            byte[] array = new byte[bytes];
            int read = 0;
            int offset = 0;
            while ((read = is.read(array, offset, bytes - offset)) != -1) {
                offset += read;
            }
            byte[] compact = new byte[offset];
            System.arraycopy(array, 0, compact, 0, offset);
            return compact;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

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
    
    public synchronized String getc(ThreadContext tc) {
        try {
            if (br == null)
                br = new BufferedReader(new InputStreamReader(is, cs));
            int read = br.read();
            if (read == -1) {
                eof = true;
                return "";
            }
            else {
                return String.valueOf(read);
            }
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
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
    
    public boolean eof(ThreadContext tc) {
        return eof;
    }

    public boolean isTTY(ThreadContext tc) {
        return System.console() != null;
    }
}
