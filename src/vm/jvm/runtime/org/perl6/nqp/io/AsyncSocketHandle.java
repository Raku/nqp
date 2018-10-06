package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.AsynchronousCloseException;
import java.nio.channels.AsynchronousSocketChannel;
import java.nio.channels.CompletionHandler;
import java.nio.channels.ClosedChannelException;

import org.perl6.nqp.runtime.Buffers;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.perl6.nqp.sixmodel.reprs.ConcBlockingQueueInstance;
import org.perl6.nqp.sixmodel.reprs.IOHandleInstance;

public class AsyncSocketHandle implements IIOClosable, IIOCancelable {
    private AsynchronousSocketChannel channel;

    public AsyncSocketHandle(ThreadContext tc) {
        try {
            this.channel = AsynchronousSocketChannel.open();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public AsyncSocketHandle(ThreadContext tc, AsynchronousSocketChannel channel) {
        this.channel = channel;
    }

    public void connect(final ThreadContext tc, String host, int port,
            final AsyncTaskInstance task) {

        final CompletionHandler<Void, AsyncTaskInstance> handler
            = new CompletionHandler<Void, AsyncTaskInstance>() {

            HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
            final SixModelObject IOType = hllConfig.ioType;
            final SixModelObject Array = hllConfig.listType;
            final SixModelObject Int = hllConfig.intBoxType;
            final SixModelObject Str = hllConfig.strBoxType;

            @Override
            public void completed(Void v, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();

                IOHandleInstance ioHandle = (IOHandleInstance) IOType.st.REPR.allocate(curTC,
                        IOType.st);
                ioHandle.handle = task.handle;
                callback(curTC, task, ioHandle, Str,
                    Ops.box_s(host, Str, curTC),
                    Ops.box_i(port, Int, curTC),
                    Ops.box_s(host, Str, curTC),  // TODO send socketHost
                    Ops.box_i(port, Int, curTC),  // TODO send socketPort
                    Ops.box_i(-1,   Int, curTC)   // TODO send socketHandle
                );
            }

            @Override
            public void failed(Throwable t, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();
                callback(curTC, task, IOType,
                    Ops.box_s(t.toString(), Str, curTC), Str, Int, Str, Int, Int);
            }

            protected void callback(ThreadContext tc, AsyncTaskInstance task,
                    SixModelObject ioHandle, SixModelObject err,
                    SixModelObject peerHost, SixModelObject peerPort,
                    SixModelObject socketHost, SixModelObject socketPort,
                    SixModelObject socketHandle) {
                SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
                result.push_boxed(tc, task.schedulee);
                result.push_boxed(tc, ioHandle);
                result.push_boxed(tc, err);
                result.push_boxed(tc, peerHost);
                result.push_boxed(tc, peerPort);
                result.push_boxed(tc, socketHost);
                result.push_boxed(tc, socketPort);
                result.push_boxed(tc, socketHandle);
                ((ConcBlockingQueueInstance) task.queue).push_boxed(tc, result);
            }
        };

        try {
            InetSocketAddress addr = new InetSocketAddress(host, port);
            channel.connect(addr, task, handler);
        } catch (Throwable e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void writeBytes(ThreadContext tc, AsyncTaskInstance task, SixModelObject toWrite) {
        ByteBuffer buffer = Buffers.unstashBytes(toWrite, tc);
        writeByteBuffer(tc, task, buffer);
    }

    private void writeByteBuffer(final ThreadContext tc, final AsyncTaskInstance task, ByteBuffer buffer) {
        try {
            HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
            final SixModelObject Array = hllConfig.listType;
            final SixModelObject Int = hllConfig.intBoxType;
            final SixModelObject Null = hllConfig.nullValue;
            final SixModelObject Str = hllConfig.strBoxType;

            CompletionHandler<Integer, AsyncTaskInstance> handler
                = new CompletionHandler<Integer, AsyncTaskInstance>() {

                @Override
                public void completed(Integer bytesWritten, AsyncTaskInstance task) {
                    ThreadContext curTC = tc.gc.getCurrentThreadContext();
                    callback(curTC, task, Ops.box_i(bytesWritten, Int, curTC), Null);
                }

                @Override
                public void failed(Throwable t, AsyncTaskInstance attachment) {
                    ThreadContext curTC = tc.gc.getCurrentThreadContext();
                    callback(curTC, task, Str, Ops.box_s(t.toString(), Str, curTC));
                }

                protected void callback(ThreadContext tc, AsyncTaskInstance task, SixModelObject bytesWritten, SixModelObject err) {
                    SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
                    result.push_boxed(tc, task.schedulee);
                    result.push_boxed(tc, bytesWritten);
                    result.push_boxed(tc, err);
                    ((ConcBlockingQueueInstance) task.queue).push_boxed(tc, result);
                }
            };

            channel.write(buffer, task, handler);
        } catch (Throwable e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void readBytes(final ThreadContext tc, final AsyncTaskInstance task, final SixModelObject bufType) {
        readSocket(tc, task, new Decoder() {
            public SixModelObject decode(ThreadContext tc, ByteBuffer source, Integer numRead)
                    throws Exception {
                SixModelObject res = bufType.st.REPR.allocate(tc, bufType.st);
                byte[] bytes = new byte[source.remaining()];
                source.get(bytes);
                Buffers.stashBytes(tc, res, bytes);
                return res;
            }
        });
    }

    static interface Decoder {
        public SixModelObject decode(ThreadContext tc, ByteBuffer source, Integer numRead) throws Exception;
    }

    private void readSocket(final ThreadContext tc, final AsyncTaskInstance task, final Decoder decoder) {
        final ByteBuffer readBuffer = ByteBuffer.allocate(32768);

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
                        callback(curTC, task, task.seq, Str, Null);
                    } else {
                        readBuffer.flip();
                        SixModelObject decoded = decoder.decode(tc, readBuffer, numRead);
                        readBuffer.compact();

                        callback(curTC, task, task.seq++, decoded, Null);

                        channel.read(readBuffer, task, this);
                    }
                } catch (Throwable t) {
                    failed(t, task);
                }
            }

            @Override
            public void failed(Throwable t, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();
                SixModelObject err = (t instanceof AsynchronousCloseException
                    || t instanceof ClosedChannelException)
                        ? Str : Ops.box_s(t.toString(), Str, curTC);
                callback(curTC, task, -1, Str, err);
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

    @Override
    public void close(ThreadContext tc) {
        try {
            channel.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void cancel(ThreadContext tc) {
        close(tc);
    }
}
