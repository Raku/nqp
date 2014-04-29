package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.AsynchronousSocketChannel;
import java.nio.channels.CompletionHandler;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.perl6.nqp.sixmodel.reprs.ConcBlockingQueueInstance;
import org.perl6.nqp.sixmodel.reprs.IOHandleInstance;

public class AsyncSocketHandle implements IIOClosable, IIOEncodable {

    private AsynchronousSocketChannel channel;

    private CharsetEncoder enc;
    private CharsetDecoder dec;

    public AsyncSocketHandle(ThreadContext tc) {
        try {
            this.channel = AsynchronousSocketChannel.open();
            setEncoding(tc, Charset.forName("UTF-8"));
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public AsyncSocketHandle(ThreadContext tc, AsynchronousSocketChannel channel) {
        this.channel = channel;
        setEncoding(tc, Charset.forName("UTF-8"));
    }

    public void connect(final ThreadContext tc, String host, int port,
            final AsyncTaskInstance task) {

        final CompletionHandler<Void, AsyncTaskInstance> handler
            = new CompletionHandler<Void, AsyncTaskInstance>() {

            @Override
            public void completed(Void v, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();

                SixModelObject IOType = curTC.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
                IOHandleInstance ioHandle = (IOHandleInstance) IOType.st.REPR.allocate(curTC,
                        IOType.st);
                ioHandle.handle = task.handle;

                SixModelObject Array = curTC.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
                SixModelObject result = Array.st.REPR.allocate(curTC, Array.st);
                result.push_boxed(curTC, task.schedulee);
                result.push_boxed(curTC, ioHandle);

                ((ConcBlockingQueueInstance) task.queue).push_boxed(curTC, result);
            }

            @Override
            public void failed(Throwable exc, AsyncTaskInstance task) {

            }
        };

        try {
            InetSocketAddress addr = new InetSocketAddress(host, port);
            channel.connect(addr, task, handler);
        } catch (Throwable e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void writeStr(final ThreadContext tc, final AsyncTaskInstance task, String toWrite) {
        try {
            ByteBuffer buffer = enc.encode(CharBuffer.wrap(toWrite));

            CompletionHandler<Integer, AsyncTaskInstance> handler
            = new CompletionHandler<Integer, AsyncTaskInstance>() {

                @Override
                public void completed(Integer bytesWritten, AsyncTaskInstance attachment) {
                    SixModelObject Array = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
                    SixModelObject Int = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType;
                    SixModelObject Null = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.nullValue;

                    ThreadContext curTC = tc.gc.getCurrentThreadContext();

                    SixModelObject result = Array.st.REPR.allocate(curTC, Array.st);
                    result.push_boxed(curTC, task.schedulee);
                    result.push_boxed(curTC, Ops.box_i(bytesWritten, Int, curTC));
                    result.push_boxed(curTC, Null);

                    ((ConcBlockingQueueInstance) task.queue).push_boxed(curTC, result);
                }

                @Override
                public void failed(Throwable exc, AsyncTaskInstance attachment) {
                    // TODO Auto-generated method stub
                }
            };

            channel.write(buffer, task, handler);
        } catch (Throwable e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void writeBytes(final ThreadContext tc, final AsyncTaskInstance task, SixModelObject toWrite) {

    }

    public void readChars(final ThreadContext tc, final AsyncTaskInstance task) {
        final ByteBuffer readBuffer = ByteBuffer.allocate(32768);
        final CharBuffer decodedBuffer = CharBuffer.allocate(32768);

        HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        final SixModelObject Array = hllConfig.listType;
        final SixModelObject Int = hllConfig.intBoxType;
        final SixModelObject Str = hllConfig.strBoxType;
        final SixModelObject Null = hllConfig.nullValue;

        CompletionHandler<Integer, AsyncTaskInstance> handler
        = new CompletionHandler<Integer, AsyncTaskInstance>() {

            @Override
            public void completed(Integer numRead, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();

                try {
                    if (numRead == -1) {
                        task.seq = -1;
                        callback(curTC, task, -1, Str, Null);
                    } else {
                        readBuffer.flip();
                        CoderResult coderResult = dec.decode(readBuffer, decodedBuffer, numRead == 0 ? true : false);
                        if (coderResult.isError()) {
                            coderResult.throwException();
                        }
                        readBuffer.compact(); 

                        decodedBuffer.flip();
                        String decoded = decodedBuffer.toString();
                        decodedBuffer.clear();

                        callback(curTC, task, task.seq++, Ops.box_s(decoded, Str, curTC), Null);

                        channel.read(readBuffer, task, this);
                    }
                } catch (Throwable t) {
                    failed(t, task);
                }
            }

            @Override
            public void failed(Throwable t, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();
                callback(curTC, task, -1, Str, Ops.box_s(t.getMessage(),  Str, tc));
            }

            protected void callback(ThreadContext tc, AsyncTaskInstance task, long seq, SixModelObject str, SixModelObject err) {
                SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
                result.push_boxed(tc, task.schedulee);
                result.push_boxed(tc, Ops.box_i(seq, Int, tc));
                result.push_boxed(tc, str);
                result.push_boxed(tc, err);
                ((ConcBlockingQueueInstance) task.queue).push_boxed(tc, result);
            }
        };

        try {
            channel.read(readBuffer, task, handler);
        } catch (Throwable t) {
            handler.failed(t, task);
        }
    }

    public void readBytes(final ThreadContext tc, final AsyncTaskInstance task, SixModelObject bufType) {

    }

    @Override
    public void close(ThreadContext tc) {
        try {
            channel.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void setEncoding(ThreadContext tc, Charset cs) {
        enc = cs.newEncoder();
        dec = cs.newDecoder();
    }
}
