package org.perl6.nqp.io;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.CompletionHandler;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.concurrent.LinkedBlockingQueue;

import java.nio.charset.CharacterCodingException;

import org.perl6.nqp.runtime.CallSiteDescriptor;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class AsyncFileHandle implements IIOClosable, IIOEncodable, IIOAsyncReadable, IIOAsyncWritable {
    private AsynchronousFileChannel chan;
    private CharsetEncoder enc;
    private CharsetDecoder dec;
    
    public AsyncFileHandle(ThreadContext tc, String filename, String mode) {
        try {
            Path p = new File(filename).toPath();
            if (mode.equals("r")) {
                chan = AsynchronousFileChannel.open(p, StandardOpenOption.READ);
            }
            else if (mode.equals("w")) {
                chan = AsynchronousFileChannel.open(p, StandardOpenOption.WRITE,
                                                       StandardOpenOption.CREATE);
            }
            else if (mode.equals("wa")) {
                chan = AsynchronousFileChannel.open(p, StandardOpenOption.WRITE,
                                                       StandardOpenOption.CREATE,
                                                       StandardOpenOption.APPEND);
            }
            else {
                ExceptionHandling.dieInternal(tc, "Unhandled file open mode '" + mode + "'");
            }
            setEncoding(tc, Charset.forName("UTF-8"));
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void close(ThreadContext tc) {
        try {
            chan.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void setEncoding(ThreadContext tc, Charset cs) {
        enc = cs.newEncoder();
        dec = cs.newDecoder();
    }
    
    private class SlurpState {
        public ByteBuffer bb;
        public long expected;
    }
    private static final CallSiteDescriptor slurpResultCSD = new CallSiteDescriptor(
        new byte[] { CallSiteDescriptor.ARG_OBJ }, null);
    public void slurp(final ThreadContext tc, final SixModelObject Str,
                      final SixModelObject done, final SixModelObject error) {
        try {
            SlurpState ss = new SlurpState();
            ss.expected = chan.size();
            ss.bb = ByteBuffer.allocate((int)ss.expected);
            
            final CompletionHandler<Integer, SlurpState> ch = new CompletionHandler<Integer, SlurpState>() {
                public void completed(Integer bytes, SlurpState ss) {
                    if (ss.bb.position() == ss.expected) {
                        try {
                            /* We're done. Decode and box. */
                            ThreadContext curTC = tc.gc.getCurrentThreadContext();
                            ss.bb.flip();
                            String decoded = dec.decode(ss.bb).toString();
                            SixModelObject boxed = Ops.box_s(decoded, Str, curTC);
                            
                            /* Call done handler. */
                            Ops.invokeDirect(curTC, done, slurpResultCSD, new Object[] { boxed });
                        } catch (IOException e) {
                            failed(e, ss);
                        }
                    }
                    else {
                        /* Need to read some more. */
                        chan.read(ss.bb, ss.bb.position(), ss, this);
                    }
                }
                
                public void failed(Throwable exc, SlurpState ss) {
                    /* Box error. */
                    ThreadContext curTC = tc.gc.getCurrentThreadContext();
                    SixModelObject boxed = Ops.box_s(exc.toString(), Str, curTC);
                    
                    /* Call error handler. */
                    Ops.invokeDirect(curTC, error, slurpResultCSD, new Object[] { boxed });
                }
            };
            
            chan.read(ss.bb, 0, ss, ch);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    private class SpurtState {
        public ByteBuffer bb;
        public long expected;
    }
    private static final CallSiteDescriptor spurtResultCSD = new CallSiteDescriptor(
        new byte[] { }, null);
    private static final CallSiteDescriptor spurtErrorCSD = new CallSiteDescriptor(
        new byte[] { CallSiteDescriptor.ARG_OBJ }, null);
    public void spurt(final ThreadContext tc, final SixModelObject Str, final SixModelObject data,
                      final SixModelObject done, final SixModelObject error) {
        try {
            String s_data = Ops.unbox_s(data, tc);
            CharBuffer s_buf = CharBuffer.allocate(s_data.length());
            s_buf.put(s_data);
            s_buf.rewind();

            SpurtState ss = new SpurtState();
            ss.bb = enc.encode(s_buf);
            ss.expected = ss.bb.remaining();
            ss.bb.rewind();

            final CompletionHandler<Integer, SpurtState> ch = new CompletionHandler<Integer, SpurtState>() {
                public void completed(Integer bytes, SpurtState ss) {
                    if (ss.bb.position() == ss.expected) {
                        /* Done. Call done handler. */
                        ThreadContext curTC = tc.gc.getCurrentThreadContext();
                        Ops.invokeDirect(curTC, done, spurtResultCSD, new Object[] { });
                    }
                    else {
                        /* Need to write some more. */
                        chan.write(ss.bb, ss.bb.position(), ss, this);
                    }
                }

                public void failed(Throwable exc, SpurtState ss) {
                    /* Box error. */
                    ThreadContext curTC = tc.gc.getCurrentThreadContext();
                    SixModelObject boxed = Ops.box_s(exc.toString(), Str, curTC);

                    /* Call error handler. */
                    Ops.invokeDirect(curTC, error, spurtErrorCSD, new Object[] { boxed });
                }
            };

            chan.write(ss.bb, 0, ss, ch);
        } catch (CharacterCodingException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    private static final CallSiteDescriptor linesDoneCSD = new CallSiteDescriptor(
        new byte[] { }, null);
    private static final CallSiteDescriptor linesErrorCSD = new CallSiteDescriptor(
        new byte[] { CallSiteDescriptor.ARG_OBJ }, null);
    private class LinesState {
        public ArrayList<ByteBuffer> lineChunks;
        public ByteBuffer readBuffer;
        public int total;
        public int position;
    }
    public void lines(final ThreadContext tc, final SixModelObject Str,
                      final boolean chomp, final LinkedBlockingQueue<SixModelObject> queue,
                      final SixModelObject done, final SixModelObject error) {
        final LinesState ls = new LinesState();
        ls.lineChunks = new ArrayList<ByteBuffer>();
        ls.readBuffer = ByteBuffer.allocate(32768);
        ls.total = 0;
        ls.position = 0;
        
        final CompletionHandler<Integer, LinesState> ch = new CompletionHandler<Integer, LinesState>() {
            public void completed(Integer bytes, LinesState ss) {
                try {
                    ThreadContext curTC = tc.gc.getCurrentThreadContext();
                    
                    /* If we're read all, send done notification. */
                    if (bytes == -1) {
                        /* we may have a bit of non-linebreak-terminated data to spit out */
                        if (ss.lineChunks.size() > 0) {
                            /* decode, box and enqueue. no need to chomp. */
                            String decoded = ss.lineChunks.size() == 1
                                ? dec.decode(ss.lineChunks.get(0)).toString()
                                : decodeBuffers(ss.lineChunks, ss.total);
                            /* Box and enqueue. */
                            queue.put(Ops.box_s(decoded, Str, curTC));
                        }
                        Ops.invokeDirect(curTC, done, linesDoneCSD, new Object[] { });
                        return;
                    }
                    
                    /* Flip the just-read buffer. */
                    ss.readBuffer.flip();
                    
                    /* Look for lines. */
                    while (true) {
                        /* Hunt a line boundary. */
                        boolean foundLine = false;
                        int start = ss.readBuffer.position();
                        int end = start;
                        while (!foundLine && end < ss.readBuffer.limit()) {
                            if (ss.readBuffer.get(end) == '\n')
                                foundLine = true;
                            end++;
                        }
                        
                        /* Copy what we found into the results. */
                        byte[] lineBytes = new byte[end - start];
                        ss.readBuffer.get(lineBytes);
                        ss.lineChunks.add(ByteBuffer.wrap(lineBytes));
                        ss.total += lineBytes.length;
                        
                        /* If we found a line... */
                        if (foundLine) {
                            /* Decode. */
                            String decoded = ss.lineChunks.size() == 1
                                ? dec.decode(ss.lineChunks.get(0)).toString()
                                : decodeBuffers(ss.lineChunks, ss.total);
                            
                            /* Chomp if needed. */
                            if (chomp) {
                                int decLen = decoded.length();
                                int cutChars = 0;
                                if (decLen >= 1 && decoded.charAt(decLen - 1) == '\n') {
                                    cutChars++;
                                    if (decLen >= 2 && decoded.charAt(decLen - 2) == '\r')
                                        cutChars++;
                                }
                                if (cutChars > 0)
                                    decoded = decoded.substring(0, decLen - cutChars);
                            }
                            
                            /* Box and enqueue. */
                            queue.put(Ops.box_s(decoded, Str, curTC));
                            
                            /* Reset for next line. */
                            ss.lineChunks.clear();
                            ss.total = 0;
                        }
                        else {
                            /* Couldn't find an end of line, stop looping. */
                            break;
                        }
                    }
                    
                    /* Read more. */
                    ls.position += bytes;
                    ls.readBuffer = ByteBuffer.allocate(32768);
                    chan.read(ls.readBuffer, ls.position, ls, this);
                } catch (IOException e) {
                    failed(e, ls);
                } catch (InterruptedException e) {
                    failed(e, ls);
                }
            }
    
            private String decodeBuffers(ArrayList<ByteBuffer> buffers, int total) throws IOException {
                // Copy to a single buffer and decode (could be smarter, but need
                // to be wary as UTF-8 chars may span a buffer boundary).
                ByteBuffer allBytes = ByteBuffer.allocate(total);
                for (ByteBuffer bb : buffers)
                    allBytes.put(bb.array(), 0, bb.limit());
                allBytes.rewind();
                return dec.decode(allBytes).toString();
            }
            
            public void failed(Throwable exc, LinesState ss) {
                /* Box error. */
                ThreadContext curTC = tc.gc.getCurrentThreadContext();
                SixModelObject boxed = Ops.box_s(exc.toString(), Str, curTC);
                
                /* Call error handler. */
                Ops.invokeDirect(curTC, error, linesErrorCSD, new Object[] { boxed });
            }
        };
        
        chan.read(ls.readBuffer, 0, ls, ch);
    }
}
