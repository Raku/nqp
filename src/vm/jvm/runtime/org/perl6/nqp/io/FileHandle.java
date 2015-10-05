package org.perl6.nqp.io;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class FileHandle extends SyncHandle implements IIOSeekable {
    
    FileChannel fc;
    protected boolean eof = false;
    
    public static OpenOption[] resolveOpenMode(String mode) {
        if(mode.length() == 0)
            return null;

        int pos = 0;
        List<OpenOption> opts = new ArrayList<OpenOption>();

        switch (mode.charAt(pos++)) {
            case 'r': opts.add(StandardOpenOption.READ); break;
            case '-': opts.add(StandardOpenOption.WRITE); break;
            case '+': opts.add(StandardOpenOption.READ);
                      opts.add(StandardOpenOption.WRITE); break;

            /* legacy alias for "-c" or "-ct" if by itself */
            case 'w': opts.add(StandardOpenOption.WRITE);
                      opts.add(StandardOpenOption.CREATE);
                      if(pos == mode.length())
                          opts.add(StandardOpenOption.TRUNCATE_EXISTING);
                      break;

            default : return null;
        }

        while (pos < mode.length()) switch (mode.charAt(pos++)) {
            case 'a': opts.add(StandardOpenOption.APPEND); break;
            case 'c': opts.add(StandardOpenOption.CREATE); break;
            case 't': opts.add(StandardOpenOption.TRUNCATE_EXISTING); break;
            case 'x': opts.add(StandardOpenOption.CREATE_NEW); break;
            default : return null;
        }

        return opts.toArray(new OpenOption[opts.size()]);
    }
    
    public FileHandle(ThreadContext tc, String filename, String mode) {
        try {
            Path p = new File(filename).toPath();
            OpenOption[] opts = resolveOpenMode(mode);
            if(opts == null)
                ExceptionHandling.dieInternal(tc, "Unhandled file open mode '" + mode + "'");
            fc = FileChannel.open(p, opts);
            chan = fc;
            setEncoding(tc, Charset.forName("UTF-8"));
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void seek(ThreadContext tc, long offset, long whence) {
        try {
            switch ((int)whence) {
            case 0:
                fc.position(offset);
                break;
            case 1:
                fc.position(fc.position() + offset);
                break;
            case 2:
                fc.position(fc.size() + offset);
                break;
            default:
                throw ExceptionHandling.dieInternal(tc, "Invalid seek mode");
            }
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        } catch (IllegalArgumentException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public long tell(ThreadContext tc) {
        try {
            long position = fc.position();
            return readBuffer != null ? position - readBuffer.remaining() : position;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void flush(ThreadContext tc) {
        try {
            fc.force(false);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public boolean eof(ThreadContext tc) {
        if (eof)
            return true;
        else if (readBuffer != null && readBuffer.remaining() > 0)
            return false;
        else {
            try {
                eof = fc.position() >= fc.size();
                return eof;
            }
            catch (Exception e) {
                eof = true;
                return true;
            }
        }
    }
}
