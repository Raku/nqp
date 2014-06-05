package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.AsynchronousServerSocketChannel;
import java.nio.channels.AsynchronousSocketChannel;
import java.nio.channels.CompletionHandler;
import java.nio.channels.NotYetBoundException;
import java.nio.channels.UnresolvedAddressException;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.perl6.nqp.sixmodel.reprs.ConcBlockingQueueInstance;
import org.perl6.nqp.sixmodel.reprs.IOHandleInstance;

public class AsyncServerSocketHandle implements IIOBindable {

    AsynchronousServerSocketChannel listenChan;

    public AsyncServerSocketHandle(ThreadContext tc) {
        try {
            listenChan = AsynchronousServerSocketChannel.open();
        } catch (IOException e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void bind(ThreadContext tc, String host, int port) {
        try {
            InetSocketAddress addr = new InetSocketAddress(host, port);
            listenChan.bind(addr);
        } catch (UnresolvedAddressException uae) {
            ExceptionHandling.dieInternal(tc, "Failed to resolve host name");
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void accept(final ThreadContext tc, final AsyncTaskInstance task) {

        final CompletionHandler<AsynchronousSocketChannel, AsyncTaskInstance> handler
            = new CompletionHandler<AsynchronousSocketChannel, AsyncTaskInstance>() {

            HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
            final SixModelObject IOType = hllConfig.ioType;
            final SixModelObject Array = hllConfig.listType;
            final SixModelObject Null = hllConfig.nullValue;
            final SixModelObject Str = hllConfig.strBoxType;

            @Override
            public void completed(AsynchronousSocketChannel channel, AsyncTaskInstance task) {
                listenChan.accept(task, this);
                ThreadContext curTC = tc.gc.getCurrentThreadContext();

                AsyncSocketHandle handle = new AsyncSocketHandle(curTC, channel);
                IOHandleInstance ioHandle = (IOHandleInstance) IOType.st.REPR.allocate(curTC,
                        IOType.st);
                ioHandle.handle = handle;

                SixModelObject result = Array.st.REPR.allocate(curTC, Array.st);
                result.push_boxed(curTC, task.schedulee);
                result.push_boxed(curTC, ioHandle);
                result.push_boxed(curTC, Null);

                ((ConcBlockingQueueInstance) task.queue).push_boxed(curTC, result);
            }

            @Override
            public void failed(Throwable exc, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();
                SixModelObject result = Array.st.REPR.allocate(curTC, Array.st);
                result.push_boxed(curTC, task.schedulee);
                result.push_boxed(curTC, IOType);
                result.push_boxed(curTC, Ops.box_s(exc.getMessage(), Str, curTC));
            }
        };

        try {
            listenChan.accept(task, handler);
        } catch (NotYetBoundException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
}
