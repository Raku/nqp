package org.raku.nqp.runtime;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.BufferUnderflowException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.jar.JarInputStream;
import java.util.zip.ZipEntry;
import org.tukaani.xz.XZInputStream;

public class LibraryLoader {
    static Map<String,Class<?>> sharedClasses = new ConcurrentHashMap<String,Class<?>>();

    public static void load(ThreadContext tc, String origFilename) {
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

            loadClass(tc, loadFile(filename, tc.gc.sharingHint));
        }
        catch (IOException | RuntimeException e) {
            throw ExceptionHandling.dieInternal(tc, e.toString());
        }
    }

    public static void load(ThreadContext tc, byte[] buffer) {
        ByteBuffer bb;
        try {
            bb = ByteBuffer.allocate(buffer.length);
            bb.put(buffer);
            bb.rewind();
        }
        catch (BufferOverflowException | IllegalArgumentException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
        load(tc, bb);
    }

    public static void load(ThreadContext tc, ByteBuffer buffer) {
        try {
            loadClass(tc, loadJar(buffer));
        }
        catch (IOException | IllegalArgumentException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static void loadClass(ThreadContext tc, Class<?> c) {
        try {
            CompilationUnit cu = (CompilationUnit)c.getDeclaredConstructor().newInstance();
            cu.shared = tc.gc.sharingHint;
            cu.initializeCompilationUnit(tc);
            cu.runLoadIfAvailable(tc);
        }
        catch (ReflectiveOperationException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static Class<?> loadFile(String cf, boolean shared) throws IOException, IllegalArgumentException {
        if (shared)
            return sharedClasses.computeIfAbsent(cf, (k) -> {
                try {
                    return loadFile(k, false);
                }
                catch (IOException | IllegalArgumentException e) {
                    return null;
                }
            });

        RandomAccessFile ch = new RandomAccessFile(cf, "rw");
        byte[] ba = new byte[Math.min((int)ch.length(), 4)];
        ch.readFully(ba);

        int sig = (ba.length < 4)
            ? 0
            : ((ba[3] & 0xFF) | ((ba[2] & 0xFF) << 8) | ((ba[1] & 0xFF) << 16) | ((ba[0] & 0xFF) << 24));
        switch (sig) {
            case 0xCAFEBABE: // classfile
                return loadNew(readToMmapBuffer(ch.getChannel()), null);
            case 0x504B0304: // jar
                return loadJar(readToMmapBuffer(ch.getChannel()));
            default:
                throw new IllegalArgumentException("Unrecognized bytecode format in " + cf);
        }
    }

    private static final int BUF_SIZE = 0x7FFF;

    public static ByteBuffer readToMmapBuffer(FileChannel bc) throws IOException {
        List<ByteBuffer> chunks = new ArrayList< >();
        int length = (int)bc.size();
        int offset = 0;
        int sizeof = Math.min(length, BUF_SIZE);
        do {
            chunks.add(bc.map(FileChannel.MapMode.READ_WRITE, offset, sizeof));
            length -= sizeof;
            offset += sizeof;
            sizeof  = Math.min(length, BUF_SIZE);
        } while (sizeof > 0);
        length = offset;

        ByteBuffer bb = ByteBuffer.allocate(offset);
        for (ByteBuffer chunk : chunks)
            bb.put(chunk);
        bb.rewind();
        return bb;
    }

    public static ByteBuffer readToHeapBuffer(InputStream is) throws IOException {
        return ByteBuffer.wrap(is.readAllBytes());
    }

    public static ByteBuffer readToHeapBufferXz(InputStream is) throws IOException {
        return readToHeapBuffer(new XZInputStream(is));
    }

    public static Class<?> loadJar(ByteBuffer bb) throws IOException, IllegalArgumentException {
        // This is a (non-empty, non-self-extracting) zip file
        // These are quite constrained for now
        ByteBuffer bytes = null;
        ByteBuffer serial = null;
        JarInputStream jis = new JarInputStream(new ByteBufferedInputStream(bb));
        ZipEntry je;
        while ((je = jis.getNextEntry()) != null) {
            String jf = je.getName();
            if (jf.endsWith(".class") && bytes == null)
                bytes = readToHeapBuffer(jis);
            else if (jf.endsWith(".serialized.xz") && serial == null)
                serial = readToHeapBufferXz(jis);
            else if (jf.endsWith(".serialized") && serial == null)
                serial = readToHeapBuffer(jis);
            else
                throw new IllegalArgumentException("Bytecode jar contains unexpected file " + jf);
        }
        if (bytes == null)
            throw new IllegalArgumentException("Bytecode jar lacks class file");
        if (serial == null)
            throw new IllegalArgumentException("Bytecode jar lacks serialization file");
        return loadNew(bytes, serial);
    }

    private static class ByteBufferedInputStream extends InputStream {
        private final ByteBuffer bb;

        public ByteBufferedInputStream(ByteBuffer bb) {
            this.bb = bb;
        }

        public static ByteBufferedInputStream copy(ByteBuffer src) throws IllegalArgumentException {
            int offset = src.position();
            ByteBuffer bb = ByteBuffer.allocate(src.capacity() - offset);
            bb.put(src);
            bb.rewind();
            src.position(offset);
            return new ByteBufferedInputStream(bb);
        }

        public static InputStream nullInputStream() {
            return new ByteBufferedInputStream(null);
        }

        private int get() throws IOException {
            try {
                return bb.get();
            }
            catch (BufferUnderflowException e) {
                throw new IOException(e);
            }
        }

        private void get(byte[] dst) throws IOException {
            try {
                bb.get(dst);
            }
            catch (BufferUnderflowException e) {
                throw new IOException(e);
            }
        }

        @Override
        public int read() throws IOException {
            return bb != null && bb.hasRemaining() ? get() : -1;
        }

        @Override
        public int read(byte[] dst) throws IOException {
            if (bb == null)
                return -1;

            int length = Math.min(dst.length, available());
            if (length <= 0)
                return 0;

            byte[] src = new byte[length];
            get(src);
            System.arraycopy(src, 0, dst, 0, length);
            return length;
        }

        @Override
        public int read(byte[] dst, int offset, int length) throws IOException {
            if (bb == null)
                return -1;

            length = Math.min(length, available());
            if (length <= 0)
                return 0;

            byte[] src = new byte[length];
            get(src);
            System.arraycopy(src, 0, dst, offset, length);
            return length;
        }

        @Override
        public int readNBytes(byte[] dst, int offset, int length) throws IOException {
            if (bb == null)
                return -1;

            length = Math.min(length, available());
            if (length <= 0)
                return 0;

            byte[] src = new byte[length];
            get(src);
            System.arraycopy(src, 0, dst, offset, length);
            return length;
        }

        @Override
        public byte[] readAllBytes() throws IOException {
            byte[] dst = new byte[available()];
            if (dst.length > 0)
                read(dst);
            return dst;
        }

        @Override
        public long skip(long length) {
            if (bb == null)
                return 0;

            int offset = bb.position();
            length = Long.min(length, bb.capacity() - offset);
            bb.position(offset + (int)length);
            return length;
        }

        @Override
        public int available() {
            return bb == null ? 0 : (bb.capacity() - bb.position());
        }

        @Override
        public void reset() {
            if (bb != null)
                bb.rewind();
        }
    }

    public static Class<?> loadNew(ByteBuffer bytes, ByteBuffer serial) {
        IgnoreNameClassLoader incl = new IgnoreNameClassLoader(bytes, serial);
        return incl.loadClass();
    }

    private static class IgnoreNameClassLoader extends ClassLoader {
        private ByteBuffer bytes;
        private ByteBuffer serial;

        public IgnoreNameClassLoader(ByteBuffer bytes, ByteBuffer serial) {
            this.bytes = bytes;
            this.serial = serial;
        }

        public Class<?> loadClass() {
            try {
                return defineClass(null, this.bytes, null);
            }
            catch (ClassFormatError e) {
                throw new RuntimeException(e);
            }
        }

        @Override
        public InputStream getResourceAsStream(String name) {
            try {
                return ByteBufferedInputStream.copy(serial);
            }
            catch (IllegalArgumentException e) {
                return null;
            }
        }
    }
}
