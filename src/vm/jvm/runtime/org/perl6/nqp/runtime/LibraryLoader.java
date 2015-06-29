package org.perl6.nqp.runtime;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import java.net.URL;

public class LibraryLoader {
    static HashMap<String,Class<?>> sharedClassHash = new HashMap<String,Class<?>>();

    public void load(ThreadContext tc, String origFilename) {
        String filename;
        if( origFilename.indexOf("!") != -1 ) {
            filename = origFilename.substring(origFilename.lastIndexOf("!") + 1);
        }
        else {
            filename = origFilename;
        }
        // Don't load the same thing multiple times.
        if (tc.gc.loaded.contains(origFilename))
            return;

        try {
            // Read in class data.
            File file = new File(filename);
            if (!file.exists() && filename.equals("ModuleLoader.class")) {
                /* We special case the initial ModuleLoader loading. */
                String[] cps = System.getProperty("java.class.path").split("[:;]");
                for (int i = 0; i < cps.length; i++) {
                    if(System.getenv("NQP_BUILD_DEBUG") != null)
                        System.out.println("checking classpath: " + cps[i]);
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

            // TODO: untangle the logic somewhat...
            // "the filename wasn't changed" is a bad metric for "we didn't find the right file"...
            Class<?> c = null;
            if( filename.equals("ModuleLoader.class") ) {
                if(System.getenv("NQP_BUILD_DEBUG") != null)
                    System.out.println("first branch");
                c = loadFile(LibraryLoader.class.getResource("/lib/ModuleLoader.jar"), tc.gc.sharingHint);
            }
            else if ( origFilename.indexOf("!") != -1 || origFilename.indexOf(":") != -1 ) {
                if(System.getenv("NQP_BUILD_DEBUG") != null)
                    System.out.println("second branch with " + origFilename);
                c = loadFile(new URL(origFilename), tc.gc.sharingHint);
            }
            else if ( !(new File(filename)).exists() ) {
                if(System.getenv("NQP_BUILD_DEBUG") != null)
                    System.out.println("third branch, with " + origFilename);
                URL res = LibraryLoader.class.getResource("/lib/" + filename);
                if( res != null ) {
                    c = loadFile(res, tc.gc.sharingHint);
                }
                else {
                    res = LibraryLoader.class.getResource("/lib/" + filename + ".jar");
                    c = loadFile(res, tc.gc.sharingHint);
                }
            }
            else {
                if(System.getenv("NQP_BUILD_DEBUG") != null)
                    System.out.println("fourth branch, with " + origFilename);
                c = loadFile(filename, tc.gc.sharingHint);
            }

            // Load the class.
            CompilationUnit cu = (CompilationUnit)c.newInstance();
            cu.shared = tc.gc.sharingHint;
            cu.initializeCompilationUnit(tc);
            cu.runLoadIfAvailable(tc);
            
            // Note that we already loaded it.
            tc.gc.loaded.add(origFilename);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            throw ExceptionHandling.dieInternal(tc, e.toString());
        }
    }

    public static Class<?> loadFile(String cf, boolean shared) throws Exception {
        return loadFile(new URL("file:" + cf), shared);
    }

    public static Class<?> loadFile(URL cf, boolean shared) throws Exception {
        if (shared) {
            if(System.getenv("NQP_BUILD_DEBUG") != null)
                System.out.println("cf is shared, " + cf);
            synchronized(sharedClassHash) {
                if (sharedClassHash.containsKey(cf.getPath()))
                    return sharedClassHash.get(cf.getPath());

                Class<?> n = loadFile(cf, false);
                sharedClassHash.put(cf.getPath(), n);
                return n;
            }
        }

        byte[] bs = null;

        if(System.getenv("NQP_BUILD_DEBUG") != null)
            System.out.println("cf is " + cf);
        if(cf.getProtocol().equals("jar")) {
            // XXX: this is a bit gnarly, currently.
            // basically, before we only ever loaded files from disk, but self-executable jars
            // have our libs as jar inside of a jar, and getResource gets us an URL
            // so instead of properly untangling this i'm taking a shortcut (for now)
            // and assume that URLs always point to jars, so we read the resource instead 
            // of reading the file
            String res = cf.getPath();
            res = res.substring(res.lastIndexOf("!") + 1);
            InputStream is = LibraryLoader.class.getResourceAsStream(res);
            if(is == null) {
                throw new RuntimeException("Couldn't find resource " + res);
            }
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            int b = is.read();
            while( b != -1 ) {
                baos.write(b);
                b = is.read();
            }
            bs = baos.toByteArray();
        }
        else {
            bs = Files.readAllBytes( FileSystems.getDefault().getPath(cf.getPath()) );
        }

        long sig = bs.length < 4 ? 0 :
            (bs[3] & 0xFF) | ((bs[2] & 0xFF) << 8) | ((bs[1] & 0xFF) << 16) | ((bs[0] & 0xFFL) << 24);

        if (sig == 0xCAFEBABEL) {
            // This is a class file

            return loadNew(bs, null);
        } else if (sig == 0x504B0304) {
            // This is a (non-empty, non-self-extracting) zip file
            // These are quite constrained for now

            JarEntry je;
            JarInputStream jis = new JarInputStream(new ByteArrayInputStream(bs));
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
        } else {
            throw new RuntimeException("Unrecognized bytecode format in "+cf);
        }
    }

    public static Class<?> loadNew(byte[] bytes, byte[] serial) {
        return new IgnoreNameClassLoader(bytes, serial, LibraryLoader.class.getClassLoader()).loadClass();
    }
    
    private static class IgnoreNameClassLoader extends ClassLoader {
        private byte[] bytes;
        private byte[] serial;
        
        public IgnoreNameClassLoader(byte[] bytes, byte[] serial, ClassLoader parent) {
            super(parent);
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
