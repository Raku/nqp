package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketOptions;
import java.net.StandardSocketOptions;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class ServerSocketHandle implements IIOBindable, IIOClosable, IIOOptions {

    ServerSocketChannel listenChan;
    public int listenPort;

    public ServerSocketHandle(ThreadContext tc) {
        try {
            listenChan = ServerSocketChannel.open();
        } catch (IOException e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void bind(ThreadContext tc, String host, int port, int backlog) {
        try {
            InetSocketAddress addr = new InetSocketAddress(host, port);
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

    public void close(ThreadContext tc) {
        try {
            listenChan.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public long getOption(ThreadContext tc, int option) throws IOException {
        switch (option) {
            case SocketOptions.SO_RCVBUF:
                return listenChan.getOption(StandardSocketOptions.SO_RCVBUF);
            case SocketOptions.SO_REUSEADDR:
                return listenChan.getOption(StandardSocketOptions.SO_REUSEADDR) ? 1 : 0;
            case SocketOptions.SO_BINDADDR:
            case SocketOptions.SO_BROADCAST:
            case SocketOptions.SO_KEEPALIVE:
            case SocketOptions.SO_LINGER:
            case SocketOptions.SO_OOBINLINE:
            case SocketOptions.SO_SNDBUF:
            case SocketOptions.TCP_NODELAY:
                throw ExceptionHandling.dieInternal(tc, "This option is not supported by this type of socket.");
            default:
                throw ExceptionHandling.dieInternal(tc, "This option is not supported by the JVM.");
        }
    }

    public void setOption(ThreadContext tc, int option, long value) throws IOException {
        switch (option) {
            case SocketOptions.SO_RCVBUF:
                listenChan.setOption(StandardSocketOptions.SO_RCVBUF, (int) value);
                break;
            case SocketOptions.SO_REUSEADDR:
                listenChan.setOption(StandardSocketOptions.SO_REUSEADDR, (value == 0) ? false : true);
                break;
            case SocketOptions.SO_BINDADDR:
            case SocketOptions.SO_BROADCAST:
            case SocketOptions.SO_KEEPALIVE:
            case SocketOptions.SO_LINGER:
            case SocketOptions.SO_OOBINLINE:
            case SocketOptions.SO_SNDBUF:
            case SocketOptions.TCP_NODELAY:
                throw ExceptionHandling.dieInternal(tc, "This option is not supported by this type of socket.");
            default:
                throw ExceptionHandling.dieInternal(tc, "This option is not supported by the JVM.");
        }
    }
}
