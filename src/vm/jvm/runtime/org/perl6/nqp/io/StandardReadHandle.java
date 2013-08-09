package org.perl6.nqp.io;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;

import jline.ConsoleReader;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class StandardReadHandle implements IIOClosable, IIOEncodable, IIOSyncReadable, IIOInteractive {
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
}
