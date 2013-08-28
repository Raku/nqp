package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.SocketChannel;
import java.nio.charset.Charset;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class SocketHandle extends SyncHandle {

    public SocketHandle(ThreadContext tc, String host, int port) {
        try {
            InetSocketAddress addr = InetSocketAddress.createUnresolved(host, port);
            chan = SocketChannel.open(addr);
            setEncoding(tc, Charset.forName("UTF-8"));
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
}
