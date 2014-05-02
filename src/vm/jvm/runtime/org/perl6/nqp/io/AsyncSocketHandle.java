package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.AsynchronousCloseException;
import java.nio.channels.AsynchronousSocketChannel;
import java.nio.channels.CompletionHandler;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

import org.perl6.nqp.runtime.Buffers;
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

            HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
            final SixModelObject IOType = hllConfig.ioType;
            final SixModelObject Array = hllConfig.listType;
            final SixModelObject Str = hllConfig.strBoxType;

            @Override
            public void completed(Void v, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();

                IOHandleInstance ioHandle = (IOHandleInstance) IOType.st.REPR.allocate(curTC,
                        IOType.st);
                ioHandle.handle = task.handle;
                callback(curTC, task, ioHandle, Str);
            }

            @Override
            public void failed(Throwable t, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();
                callback(curTC, task, IOType, Ops.box_s(t.toString(), Str, curTC));
            }

            protected void callback(ThreadContext tc, AsyncTaskInstance task, SixModelObject ioHandle, SixModelObject err) {
                SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
                result.push_boxed(tc, task.schedulee);
                result.push_boxed(tc, ioHandle);
                result.push_boxed(tc, err);
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

    public void writeStr(ThreadContext tc, AsyncTaskInstance task, String toWrite) {
        try {
            ByteBuffer buffer = enc.encode(CharBuffer.wrap(toWrite));
            writeByteBuffer(tc, task, buffer);
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

    public void readChars(final ThreadContext tc, final AsyncTaskInstance task) {
        HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        final SixModelObject Str = hllConfig.strBoxType;

        readSocket(tc, task, new Decoder () {
            final CharBuffer decodedBuffer = CharBuffer.allocate(32768);

            public SixModelObject decode(ThreadContext tc, ByteBuffer source, Integer numRead) throws Exception {
                CoderResult coderResult = dec.decode(source, decodedBuffer, numRead == 0 ? true : false);
                if (coderResult.isError()) {
                    coderResult.throwException();
                }
                decodedBuffer.flip();
                String decoded = decodedBuffer.toString();
                decodedBuffer.clear();
                return Ops.box_s(decoded, Str, tc);
            }
        });
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
                        task.seq = -1;
                        callback(curTC, task, -1, Str, Null);
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
                SixModelObject err = (t instanceof AsynchronousCloseException) 
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
    public void setEncoding(ThreadContext tc, Charset cs) {
        enc = cs.newEncoder();
        dec = cs.newDecoder();
    }
}
