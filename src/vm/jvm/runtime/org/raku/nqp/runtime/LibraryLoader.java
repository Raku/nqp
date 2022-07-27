package org.raku.nqp.runtime;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Map;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;

public class LibraryLoader {
    static Map<String,Class<?>> sharedClasses = new ConcurrentHashMap<String,Class<?>>();

    public void load(ThreadContext tc, String origFilename) {
        // Don't load the same thing multiple times.
        if (!tc.gc.loaded.add(origFilename))
            return;

        try {
            // Read in class data.
            String filename = origFilename;
            File file = new File(filename);
            if (!file.exists() && filename.equals("ModuleLoader.class")) {
                /* We special case the initial ModuleLoader loading. */
                String[] cps = System.getProperty("java.class.path").split("[:;]");
                for (int i = 0; i < cps.length; i++) {
                    file = new File(cps[i] + "/" + filename);
                    if (file.exists()) {
                        filename = cps[i] + "/" + filename;
                        break;
                    }
                    file = new File(cps[i] + "/ModuleLoader.jar");
                    if (file.exists()) {
                        filename = cps[i] + "/ModuleLoader.jar";
                        break;
                    }
                }
            }

            Class<?> c = loadFile(filename, tc.gc.sharingHint);
            loadClass(tc, c);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            throw ExceptionHandling.dieInternal(tc, e.toString());
        }
    }

    public void load(ThreadContext tc, byte[] buffer) {
        try {
            Class<?> c = loadJar(buffer);
            loadClass(tc, c);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            throw ExceptionHandling.dieInternal(tc, e.toString());
        }
    }

    private static void loadClass(ThreadContext tc, Class<?> c) throws Throwable {
        CompilationUnit cu = (CompilationUnit)c.newInstance();
        cu.shared = tc.gc.sharingHint;
        cu.initializeCompilationUnit(tc);
        cu.runLoadIfAvailable(tc);
    }

    private static Class<?> loadJar(byte[] buffer) throws Exception {
        // This is a (non-empty, non-self-extracting) zip file
        // These are quite constrained for now

        JarEntry je;
        JarInputStream jis = new JarInputStream(new ByteArrayInputStream(buffer));
        byte[] kl = null;
        byte[] ser = null;

        while ((je = jis.getNextJarEntry()) != null) {
            byte[] data = readEverything(jis);

            if (je.getName().endsWith(".class") && kl == null) kl = data;
            else if (je.getName().endsWith(".serialized") && ser == null) ser = data;
            else throw new RuntimeException("Bytecode jar contains unexpected file "+je.getName());
        }

        if (kl == null) throw new RuntimeException("Bytecode jar lacks class file");
        if (ser == null) throw new RuntimeException("Bytecode jar lacks serialization file");

        return loadNew(kl, ser);
    }

    public static Class<?> loadFile(String cf, boolean shared) throws Exception {
        if (shared)
            return sharedClasses.computeIfAbsent(cf, (k) -> {
                try {
                    return loadFile(k, false);
                }
                catch (Exception e) {
                    throw new RuntimeException(e);
                }
            });

        byte[] b = Files.readAllBytes( FileSystems.getDefault().getPath(cf) );
        long sig = b.length < 4 ? 0 :
            (b[3] & 0xFF) | ((b[2] & 0xFF) << 8) | ((b[1] & 0xFF) << 16) | ((b[0] & 0xFFL) << 24);

        if (sig == 0xCAFEBABEL) {
            // This is a class file

            return loadNew(b, null);
        } else if (sig == 0x504B0304) {
            return loadJar(b);
        } else {
            throw new RuntimeException("Unrecognized bytecode format in "+cf);
        }
    }

    public static Class<?> loadNew(byte[] bytes, byte[] serial) {
        IgnoreNameClassLoader incl = new IgnoreNameClassLoader(bytes, serial);
        return incl.loadClass();
    }

    private static class IgnoreNameClassLoader extends ClassLoader {
        private byte[] bytes;
        private byte[] serial;

        public IgnoreNameClassLoader(byte[] bytes, byte[] serial) {
            this.bytes = bytes;
            this.serial = serial;
        }

        public Class<?> loadClass() {
            return defineClass(null, this.bytes, 0, this.bytes.length);
        }

        @Override
        public InputStream getResourceAsStream(String name) {
            return new ByteArrayInputStream(serial);
        }
    }

    // this is dumb
    public static byte[] readEverything(InputStream from) throws IOException {
        final int bufSize = 65536;
        ArrayList<byte[]> chunks = new ArrayList<byte[]>();
        byte[] currentChunk = new byte[bufSize];
        int currentFill = 0;

        while (true) {
            if (currentFill == bufSize) {
                chunks.add(currentChunk);
                currentChunk = new byte[bufSize];
                currentFill = 0;
            }

            int addl = from.read(currentChunk, currentFill, bufSize - currentFill);
            if (addl < 0) break;
            currentFill += addl;
        }

        byte[] finished = new byte[chunks.size() * bufSize + currentFill];
        for (int i = 0; i < chunks.size(); i++)
            System.arraycopy(chunks.get(i), 0, finished, i*bufSize, bufSize);
        System.arraycopy(currentChunk, 0, finished, chunks.size()*bufSize, currentFill);

        return finished;
    }
}
