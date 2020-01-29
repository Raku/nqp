package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.UnresolvedAddressException;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class ServerSocketHandle implements IIOBindable, IIOListenable, IIOClosable {

    InetSocketAddress addr;
    ServerSocketChannel listenChan;
    public int listenPort;

    public ServerSocketHandle(ThreadContext tc) {
        try {
            listenChan = ServerSocketChannel.open();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void bind(ThreadContext tc, String host, int port) {
        // XXX FIXME: This isn't handling DNS properly now that address
        // families are given to the bindsock op.
        addr = new InetSocketAddress(host, port);
        if (addr.isUnresolved())
            throw ExceptionHandling.dieInternal(tc, "Failed to resolve hostname");
    }

    @Override
    public void listen(ThreadContext tc, int backlog) {
        if (addr == null)
            throw ExceptionHandling.dieInternal(tc, "Socket must be bound before it can be listened on");
        try {
            listenChan.bind(addr, backlog);
            listenPort = listenChan.socket().getLocalPort();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public SocketHandle accept(ThreadContext tc) {
        try {
            SocketChannel chan = listenChan.accept();
            return chan == null ? null : new SocketHandle(tc, chan);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void close(ThreadContext tc) {
        try {
            listenChan.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
}
