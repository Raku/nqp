package org.perl6.nqp.tools;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
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
import java.security.SecureRandom;
import java.util.EnumSet;
import java.util.Set;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.Future;

import org.perl6.nqp.runtime.Base64;
import org.perl6.nqp.runtime.CodeRef;
import org.perl6.nqp.runtime.CompilationUnit;
import org.perl6.nqp.runtime.GlobalContext;
import org.perl6.nqp.runtime.LibraryLoader;
import org.perl6.nqp.runtime.Ops;

public class EvalServer {
    private boolean bindStdin;
    private String cookiePath;
    private String mainPath;

    private Class<?> cuType;
    private String cookie;
    private ServerSocketChannel serv;
    private WritableByteChannel tokenCh;
    private Path tokenPath;

    public String run(String appPath, String code) throws Exception {
        String[] argv = new String[2];
        argv[0] = "-e";
        argv[1] = code;
        return run(appPath, argv);
    }

    public String run(String appPath, String[] argv) throws Exception {
        try {
            cuType = LibraryLoader.loadFile( appPath, true );
        } catch (ThreadDeath td) {
            throw new RuntimeException("Couldn't loadFile. Your CLASSPATH might not be set up correctly.");
        }

        GlobalContext gc = new GlobalContext();
        gc.in = new ByteArrayInputStream(new byte[0]);
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        gc.out = gc.err = new PrintStream( baos, true, "UTF-8" );
        gc.interceptExit = true;
        gc.sharingHint = true;

        CompilationUnit cu = CompilationUnit.setupCompilationUnit(gc.mainThread, cuType, true);
        CodeRef entryRef = null;
        if (cu.entryQbid() >= 0) entryRef = cu.lookupCodeRef(cu.entryQbid());
        if (entryRef == null)
            throw new RuntimeException("This class is not an entry point");
        try {
            Ops.invokeMain(gc.mainThread, entryRef, cuType.getName(), argv);
        } catch (ThreadDeath td) {
            baos.flush();
        }
        return baos.toString("UTF-8");
    }

    public static void main(String[] args) throws Exception {

        String executableName = System.getProperty("perl6.execname");
        if (executableName != null) {
            System.setProperty("perl6.execname", executableName.replace("eval-server", "j"));
        }
        EvalServer e = new EvalServer();
        e.parseArgs(args);
        e.run();
    }

    private void run() throws Exception {
        cuType = LibraryLoader.loadFile( mainPath, true );

        SecureRandom rng = new SecureRandom();
        byte[] raw = new byte[16];
        rng.nextBytes(raw);
        cookie = Base64.encode(ByteBuffer.wrap(raw));

        serv = ServerSocketChannel.open();
        serv.bind(new InetSocketAddress(0));

        Set<StandardOpenOption> modes =
            EnumSet.of(StandardOpenOption.WRITE, StandardOpenOption.CREATE_NEW);

        tokenPath = FileSystems.getDefault().getPath(cookiePath).toAbsolutePath();
        tokenCh = Files.newByteChannel(tokenPath, modes);
        try {
            Set<PosixFilePermission> perms =
                EnumSet.of(PosixFilePermission.OWNER_READ, PosixFilePermission.OWNER_WRITE);
            Files.setPosixFilePermissions(tokenPath, perms);
        } catch (UnsupportedOperationException e) {
            // non-posix systems tend not to have such wide default perms, so this is safe to ignore
        }
        tokenCh.write(ByteBuffer.wrap( String.format("%d %s\n", serv.socket().getLocalPort(), cookie).getBytes("UTF-8") ));

        if (bindStdin) new BinderThread().start();

        while (true) {
            ServiceThread th = new ServiceThread();
            th.sock = serv.accept();
            th.start();
        }
    }

    private void parseArgs(String[] args) {
        int i = 0;

        while (i != args.length) {
            if (args[i].equals("-bind-stdin") && !bindStdin) {
                bindStdin = true; i += 1;
            } else if (args[i].equals("-app") && i+1 < args.length && mainPath == null) {
                mainPath = args[i+1]; i += 2;
            } else if (args[i].equals("-cookie") && i+1 < args.length && cookiePath == null) {
                cookiePath = args[i+1]; i += 2;
            } else {
                break;
            }
        }

        if (i < args.length || mainPath == null || cookiePath == null) {
            System.err.printf("Usage: %s [-bind-stdin] -cookie <name-for-access-token-file> -app <main-class>\n", EvalServer.class.getName());
            System.exit(1);
        }
    }

    private class ServiceThread extends Thread {
        public SocketChannel sock;

        private class RunThread extends Thread {
            private String[] argv;
            private PrintStream ops;

            public RunThread(String[] argv, PrintStream ops) {
                this.argv = argv;
                this.ops = ops;
            }

            @Override
            public void run() {
                try {
                    eval();
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

            private void eval() throws Exception {
                GlobalContext gc = new GlobalContext();
                gc.in = new ByteArrayInputStream(new byte[0]);
                gc.out = gc.err = this.ops;
                gc.interceptExit = true;
                gc.sharingHint = true;

                CompilationUnit cu = CompilationUnit.setupCompilationUnit(gc.mainThread, cuType, true);
                CodeRef entryRef = null;
                if (cu.entryQbid() >= 0) entryRef = cu.lookupCodeRef(cu.entryQbid());
                if (entryRef == null)
                    throw new RuntimeException("This class is not an entry point");
                Ops.invokeMain(gc.mainThread, entryRef, cuType.getName(), argv);
            }
        }

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
            String[] argv = new String[cmdStrings.length - 3];
            System.arraycopy(cmdStrings, 2, argv, 0, argv.length);

            if (cmdStrings.length < 3 || !cmdStrings[cmdStrings.length-1].isEmpty() || !cookie.equals(cmdStrings[0]))
                throw new RuntimeException("command format error");

            if (cmdStrings[1].equals("exit")) {
                Files.delete(tokenPath);
                System.exit(0);
            }
            else if (cmdStrings[1].equals("run")) {
                PrintStream out = new PrintStream( Channels.newOutputStream(sock), true, "UTF-8" );
                Thread runner = new RunThread(argv, out);
                runner.run();
                runner.join();
                out.close();
            }
            else if (cmdStrings[1].equals("run_limited")) {
                PrintStream out = new PrintStream( Channels.newOutputStream(sock), true, "UTF-8" );
                Integer timeout = new Integer(cmdStrings[2]);
                ExecutorService ste = Executors.newSingleThreadExecutor();
                argv = new String[cmdStrings.length - 4];
                System.arraycopy(cmdStrings, 3, argv, 0, argv.length);
                Thread runner = new RunThread(argv, out);
                List<Future<Object>> future = ste.invokeAll(Arrays.asList(Executors.callable(runner)), timeout, TimeUnit.SECONDS);
                if(future.get(0).isCancelled()) {
                    out.println("\n(timeout)");
                }
            }
            else {
                throw new RuntimeException("Unknown command "+cmdStrings[1]);
            }
        }
    }

    private class BinderThread extends Thread {
        @Override
        public void run() {
            try {
                System.in.read();
                Files.delete(tokenPath);
            } catch (Exception e) {}
            System.exit(0);
        }
    }
}
