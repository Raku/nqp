package org.perl6.nqp.runtime;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.security.SecureRandom;
import java.util.EnumSet;
import java.util.Set;

public class EvalServer {
    private byte[] cuData;
    private String cookie;
    private ServerSocketChannel serv;
    private WritableByteChannel tokenCh;
    private Path tokenPath;

    public static void main(String[] args) throws Exception {
        if (args.length != 2) {
            System.err.printf("Usage: %s <name-for-access-token-file> <main-class>\n", EvalServer.class.getName());
            System.exit(1);
        }

        final EvalServer me = new EvalServer();
        me.cuData = Files.readAllBytes(FileSystems.getDefault().getPath(args[1]));

        SecureRandom rng = new SecureRandom();
        byte[] raw = new byte[16];
        rng.nextBytes(raw);
        me.cookie = Base64.encode(ByteBuffer.wrap(raw));

        me.serv = ServerSocketChannel.open();
        me.serv.bind(new InetSocketAddress(0));

        Set<PosixFilePermission> perms =
            EnumSet.of(PosixFilePermission.OWNER_READ, PosixFilePermission.OWNER_WRITE);
        Set<StandardOpenOption> modes =
            EnumSet.of(StandardOpenOption.WRITE, StandardOpenOption.CREATE_NEW);

        me.tokenPath = FileSystems.getDefault().getPath(args[0]).toAbsolutePath();
        me.tokenCh = Files.newByteChannel(me.tokenPath, modes, PosixFilePermissions.asFileAttribute(perms));
        me.tokenCh.write(ByteBuffer.wrap( String.format("%d %s\n", me.serv.socket().getLocalPort(), me.cookie).getBytes("UTF-8") ));

        while (true) {
            ServiceThread th = me.new ServiceThread();
            th.sock = me.serv.accept();
            th.start();
        }
    }

    private class ServiceThread extends Thread {
        public SocketChannel sock;

        @Override
        public void run() {
            try {
                service();
            } catch (ThreadDeath t) {
                // swallowed exit
            } catch (Throwable t) {
                System.err.print("Error in socket connection:");
                t.printStackTrace();
            } finally {
                try {
                    sock.close();
                } catch (IOException iex) {
                    iex.printStackTrace();
                }
            }
        }

        private void service() throws Exception {
            ByteBuffer command = ByteBuffer.allocate(4096);
            while (sock.read(command) > 0) ;
            command.flip();

            String[] cmdStrings = StandardCharsets.UTF_8.decode(command).toString().split("\u0000",-1);

            if (cmdStrings.length < 3 || !cmdStrings[cmdStrings.length-1].isEmpty() || !cookie.equals(cmdStrings[0]))
                throw new RuntimeException("commnd format error");

            if (cmdStrings[1].equals("exit")) {
                Files.delete(tokenPath);
                System.exit(0);
            }
            else if (cmdStrings[1].equals("run")) {
                String[] argv = new String[cmdStrings.length - 3];
                System.arraycopy(cmdStrings, 2, argv, 0, argv.length);

                GlobalContext gc = new GlobalContext();
                gc.in = new ByteArrayInputStream(new byte[0]);
                gc.out = gc.err = new PrintStream( Channels.newOutputStream(sock), true, "UTF-8" );
                gc.interceptExit = true;

                Class<?> cuType = LibraryLoader.loadNew(cuData);
                CompilationUnit cu = CompilationUnit.setupCompilationUnit(gc.mainThread, cuType);
                if (cu.entryCuid() == null)
                    throw new RuntimeException("This class is not an entry point");
                Ops.invokeMain(gc.mainThread, cu.lookupCodeRef(cu.entryCuid()), cuType.getName(), argv);
            }
            else {
                throw new RuntimeException("Unknown command "+cmdStrings[1]);
            }
        }
    }
}
