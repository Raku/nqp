package org.raku.nqp.runtime;

import java.io.File;
import java.io.IOException;
import java.io.EOFException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.file.Files;
import java.nio.file.InvalidPathException;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.nio.BufferUnderflowException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarInputStream;
import net.jpountz.lz4.LZ4Factory;
import net.jpountz.lz4.LZ4DecompressorWithLength;

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

            resolveClass(tc, loadFile(filename, tc.gc.sharingHint));
        }
        catch (IOException | IllegalArgumentException | ClassNotFoundException e) {
            throw ExceptionHandling.dieInternal(tc, e);
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
            resolveClass(tc, loadJar(buffer));
        }
        catch (IOException | IllegalArgumentException | ClassNotFoundException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static Class<?> loadFile(String fn, boolean shared) throws IOException, IllegalArgumentException, ClassNotFoundException {
        if (shared)
            return sharedClasses.computeIfAbsent(fn, (k) -> {
                try {
                    return loadFile(k, false);
                }
                catch (IOException | IllegalArgumentException | ClassNotFoundException e) {
                    return null;
                }
            });
        else try (RandomAccessFile fh = new RandomAccessFile(fn, "r")) {
            switch (fh.readInt()) {
                case 0xCAFEBABE: // classfile
                    return loadClass(fn);
                default: // JAR
                    // The manifest alone gives us at least an int's width. Let
                    // the JarInputStream decide if this is a JAR or not.
                    return loadJar(fn);
            }
        }
        catch (EOFException e) {
            throw new IllegalArgumentException("Unrecognized bytecode format in " + fn);
        }

    }

    public static Class<?> loadClass(String fn) throws IOException, ClassNotFoundException {
        return new FileClassLoader(fn).loadSerialClass(null);
    }

    public static Class<?> loadJar(String fn) throws IOException, ClassNotFoundException {
        return new JarFileClassLoader(fn).loadSerialClass(null);
    }

    public static Class<?> loadJar(ByteBuffer buffer) throws IOException, IllegalArgumentException, ClassNotFoundException {
        String name = null;
        ByteBuffer bytes = null;
        ByteBuffer serial = null;
        try (JarInputStream jis = new JarInputStream(new ByteBufferedInputStream(buffer))) {
            JarEntry je;
            while ((je = jis.getNextJarEntry()) != null) {
                String jf = je.getName();
                if (jf.endsWith(".class") && bytes == null) {
                    name = je.getComment();
                    bytes = readToHeapBuffer(jis);
                }
                else if (jf.endsWith(".serialized.lz4") && serial == null)
                    serial = readToHeapBuffer(jis);
                else if (jf.endsWith(".serialized") && serial == null)
                    serial = readToHeapBuffer(jis);
                else
                    throw new IllegalArgumentException("Bytecode jar contains unexpected file " + jf);
            }
        }
        if (bytes == null)
            throw new IllegalArgumentException("Bytecode jar lacks class file");
        if (serial == null)
            throw new IllegalArgumentException("Bytecode jar lacks serialization file");
        return new MemoryClassLoader(bytes, serial).loadSerialClass(name);
    }

    public static void resolveClass(ThreadContext tc, Class<?> c) {
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

    public static ByteBuffer readToHeapBuffer(InputStream is) throws IOException {
        return ByteBuffer.wrap(is.readAllBytes());
    }

    public static ByteBuffer readToHeapBufferLz4(InputStream is) throws IOException {
        LZ4Factory lf = LZ4Factory.fastestInstance();
        LZ4DecompressorWithLength ld = new LZ4DecompressorWithLength(lf.fastDecompressor());
        return ByteBuffer.wrap(ld.decompress(is.readAllBytes()));
    }

    private static abstract class StreamClassLoader extends ClassLoader {
        protected InputStream classfile;

        protected StreamClassLoader(InputStream classfile) {
            super();
            this.classfile = classfile;
        }

        protected Class<?> findSerialClass(String name) throws ClassNotFoundException {
            try {
                byte[] buffer = classfile.readAllBytes();
                return defineClass(name, buffer, 0, buffer.length);
            }
            catch (IOException | IndexOutOfBoundsException e) {
                throw new ClassNotFoundException("could not read serial class" + name, e);
            }
            catch (NoClassDefFoundError e) {
                throw new ClassNotFoundException("serial class not named " + name, e);
            }
            catch (SecurityException e) {
                throw new ClassNotFoundException("serial class is insecurely named " + name, e);
            }
        }

        protected synchronized Class<?> loadSerialClass(String name) throws ClassNotFoundException {
            Class<?> klass = null;
            if (name != null)
                klass = findLoadedClass(name);
            if (klass == null)
                klass = findSerialClass(name);
            if (klass == null)
                throw new ClassNotFoundException(name);
            resolveClass(klass);
            return klass;
        }
    }

    private static class FileClassLoader extends StreamClassLoader {
        static { ClassLoader.registerAsParallelCapable(); }

        final String fn;

        protected FileClassLoader(String fn) {
            super(null);
            this.fn = fn;
        }

        public String getFileName() {
            return fn;
        }

        @Override
        protected Class<?> findSerialClass(String name) throws ClassNotFoundException {
            try {
                classfile = Files.newInputStream(Paths.get(fn), StandardOpenOption.READ);
                Class<?> klass = super.findSerialClass(
                    name == null ? fn.replace(File.pathSeparatorChar, '.') : name);
                classfile.close();
                classfile = null;
                return klass;
            }
            catch (InvalidPathException e) {
                throw new ClassNotFoundException("no such classfile " + fn, e);
            }
            catch (IllegalArgumentException | UnsupportedOperationException | IOException e) {
                throw new ClassNotFoundException("cannot read " + fn, e);
            }
        }

        @Override
        public InputStream getResourceAsStream(String name) {
            return null;
        }
    }

    private static class JarFileClassLoader extends StreamClassLoader {
        static { ClassLoader.registerAsParallelCapable(); }

        final String fn;

        protected JarFileClassLoader(String fn) {
            super(null);
            this.fn = fn;
        }

        public String getFileName() {
            return fn;
        }

        @Override
        protected Class<?> findSerialClass(String name) throws ClassNotFoundException {
            try (JarFile jar = new JarFile(fn)) {
                JarEntry entry = null;
                for (Enumeration<JarEntry> entries = jar.entries(); entries.hasMoreElements(); )
                    if ((entry = entries.nextElement()).getName().endsWith(".class"))
                        break;
                if (entry == null)
                    throw new ClassNotFoundException(name + "in " + fn);
                classfile = jar.getInputStream(entry);
                return super.findSerialClass(
                    name == null ? entry.getComment() : name);
            }
            catch (IOException | ClassNotFoundException e) {
                throw new ClassNotFoundException(name + "in " + fn, e);
            }
        }

        @Override
        public InputStream getResourceAsStream(String name) {
            try {
                JarFile jar = new JarFile(fn);
                JarEntry entry = jar.getJarEntry(name);
                return entry == null ? null : jar.getInputStream(entry);
            }
            catch (IOException e) {
                return null;
            }
        }
    }

    private static class MemoryClassLoader extends ClassLoader {
        static { ClassLoader.registerAsParallelCapable(); }

        private ByteBuffer bytes;
        private ByteBuffer serial;

        protected MemoryClassLoader(ByteBuffer bytes, ByteBuffer serial) {
            super();
            this.bytes = bytes;
            this.serial = serial;
        }

        protected Class<?> findSerialClass(String name) throws ClassNotFoundException {
            try {
                return defineClass(name, bytes, null);
            }
            catch (NoClassDefFoundError e) {
                throw new ClassNotFoundException("serial class not named " + name, e);
            }
            catch (IndexOutOfBoundsException e) {
                throw new ClassNotFoundException("could not read serial class " + name, e);
            }
            catch (SecurityException e) {
                throw new ClassNotFoundException("serial class is insecurely named " + name, e);
            }
        }

        protected synchronized Class<?> loadSerialClass(String name) throws ClassNotFoundException {
            Class<?> klass = null;
            if (name != null)
                klass = findLoadedClass(name);
            if (klass == null)
                klass = findSerialClass(name);
            if (klass == null)
                throw new ClassNotFoundException(name + " in raw bytecode");
            resolveClass(klass);
            return klass;
        }

        @Override
        public InputStream getResourceAsStream(String name) {
            if (serial == null)
                return null;
            else try {
                return ByteBufferedInputStream.copy(serial);
            }
            catch (IllegalArgumentException e) {
                return null;
            }
        }
    }

    private static class ByteBufferedInputStream extends InputStream {
        private ByteBuffer bb;

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
                get(dst);
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

        @Override
        public void close() {
            this.bb = null;
        }
    }
}
