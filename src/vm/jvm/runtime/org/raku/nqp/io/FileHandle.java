package org.raku.nqp.io;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.ThreadContext;

public class FileHandle extends SyncHandle implements IIOSeekable, IIOLockable {

    FileChannel fc;
    FileLock lock;
    private boolean append = false;

    public OpenOption[] resolveOpenMode(String mode) {
        if(mode.length() == 0)
            return null;

        int pos = 0;
        List<OpenOption> opts = new ArrayList<>();

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

        /* work around differences between Perl 6 and FileChannel.open */
        List<OpenOption> optsToRemove = new ArrayList<>();
        if (opts.contains(StandardOpenOption.READ)) {
            /* APPEND may not be used in conjunction with READ. */
            if (opts.contains(StandardOpenOption.APPEND)) {
                append = true;
                optsToRemove.add(StandardOpenOption.APPEND);
            }
        }
        opts.removeAll(optsToRemove);

        return opts.toArray(new OpenOption[opts.size()]);
    }

    public FileHandle(ThreadContext tc, String filename, String mode) {
        try {
            Path p = new File(filename).toPath();
            if (Files.isDirectory(p))
                ExceptionHandling.dieInternal(tc, "Tried to open directory " + filename);
            OpenOption[] opts = resolveOpenMode(mode);
            if(opts == null)
                ExceptionHandling.dieInternal(tc, "Unhandled file open mode '" + mode + "'");
            fc = FileChannel.open(p, opts);
            chan = fc;
            setEncoding(tc, Charset.forName("UTF-8"));
            useWriteBuffer = true;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            if (chan.isOpen()) {
                close(tc);
            }
        }));
    }

    @Override
    public long write(ThreadContext tc, byte[] array) {
        if (append) {
            try {
                fc.position(fc.size());
            } catch (IOException e) {
                throw ExceptionHandling.dieInternal(tc, e);
            }
            /* Reset readBuffer and eof after calling fc.position. */
            readBuffer = null;
            eof = false;
        }
        return super.write(tc, array);
    }

    @Override
    public long print(ThreadContext tc, String s) {
        if (append) {
            try {
                fc.position(fc.size());
            } catch (IOException e) {
                throw ExceptionHandling.dieInternal(tc, e);
            }
            /* Reset readBuffer and eof after calling fc.position. */
            readBuffer = null;
            eof = false;
        }
        return super.print(tc, s);
    }

    @Override
    public void seek(ThreadContext tc, long offset, long whence) {
        try {
            flushWriteBuffer(tc);
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
        /* Reset readBuffer since content is out of sync after fc.position. */
        readBuffer = null;
        /* Reset eof since it might have changed; needs to be checked anew. */
        eof = false;
    }

    @Override
    public long tell(ThreadContext tc) {
        try {
            flushWriteBuffer(tc);
            long position = fc.position();
            return readBuffer != null ? position - readBuffer.remaining() : position;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void lock(ThreadContext tc, long flag) {
        if (lock != null && lock.acquiredBy() == fc) {
            /* XXX: *might* not be quite the exact condition we want,
             *      which more precisely would be "are we the thread that locked?"
             *      but the Lock doesn't know which Thread it came from, afaict.
             *      In any case, to match nqp-m behavior, we just don't do anything.
             */
        }
        else {
            try {
                lock = fc.lock();
            } catch (IOException e) {
                throw ExceptionHandling.dieInternal(tc, e);
            } catch (IllegalArgumentException e) {
                throw ExceptionHandling.dieInternal(tc, e);
            } catch (IllegalStateException e) {
                throw ExceptionHandling.dieInternal(tc, e);
            }
        }
    }

    @Override
    public void unlock(ThreadContext tc) {
        try {
            if (lock != null) {
                lock.release();
                lock = null;
            }
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        } catch (IllegalArgumentException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void flush(ThreadContext tc) {
        try {
            flushWriteBuffer(tc);
            fc.force(false);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public boolean eof(ThreadContext tc) {
        if (eof)
            return true;
        else if (readBuffer != null && readBuffer.remaining() > 0)
            return false;
        else {
            try {
                eof = fc.size() > 0 && fc.position() >= fc.size();
                return eof;
            }
            catch (Exception e) {
                eof = true;
                return true;
            }
        }
    }
}
