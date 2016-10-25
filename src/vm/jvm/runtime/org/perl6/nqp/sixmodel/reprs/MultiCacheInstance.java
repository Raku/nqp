package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.CallSiteDescriptor;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;

public class MultiCacheInstance extends SixModelObject {
    private static final int MD_CACHE_MAX_ARITY = 4;
    private static final int MD_CACHE_MAX_ENTRIES = 16;
    private static final int MD_CACHE_INT  = 1;
    private static final int MD_CACHE_NUM  = 2;
    private static final int MD_CACHE_STR  = 3;
    private static final int MD_CACHE_NULL = 0;
    
    private SixModelObject zeroArity;
    private ArityCache[] arityCaches = new ArityCache[MD_CACHE_MAX_ARITY];
    
    private class ArityCache
    {
        /* The number of entries we have in the cache. */
        public int numEntries;
        
        /* This is a bunch of ST hashes, with natives special-cased. We allocate
         * it arity * MAX_ENTRIES big and go through it in arity sized chunks. */
        public long typeIds[];
        
        /* Whether the entry is allowed to have named arguments. Doesn't say
         * anything about which ones, though. Something that is ambivalent
         * about named arguments to the degree it doesn't care about them 
         * even tie-breaking (like NQP) can just throw such entries into the
         * cache. Things that do care should not make such cache entries. */
        public boolean namedOK[];

        /* The results we return from the cache. */
        public SixModelObject[] results;
    }
    
    public void add(CallCaptureInstance capture, SixModelObject result, ThreadContext tc) {
        /* If there's flattenings, we can't cache. */
        if (capture.descriptor.hasFlattening)
            return;
        
        /* If it's zero arity, just stick it in that slot. */
        Object[] args = capture.args;
        if (args.length == 0) {
            this.zeroArity = result;
            return;
        }
        
        /* Count number of positional args and build type tuple. */
        int numArgs = 0;
        byte[] argFlags = capture.descriptor.argFlags;
        long argTup[] = new long[MD_CACHE_MAX_ARITY];
        boolean hasNamed = false;
        for (int i = 0; i < argFlags.length; i++) {
            switch (argFlags[i]) {
            case CallSiteDescriptor.ARG_INT:
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return;
                argTup[numArgs++] = MD_CACHE_INT;
                break;
            case CallSiteDescriptor.ARG_NUM:
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return;
                argTup[numArgs++] = MD_CACHE_NUM;
                break;
            case CallSiteDescriptor.ARG_STR:
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return;
                argTup[numArgs++] = MD_CACHE_STR;
                break;
            case CallSiteDescriptor.ARG_OBJ:
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return;
                SixModelObject decont = Ops.decont((SixModelObject)args[i], tc);
                if ( decont == null ) {
                    argTup[numArgs++] = MD_CACHE_NULL;
                }
                else {
                    long flag = ((long)decont.st.hashCode()) << 1;
                    if (!(decont instanceof TypeObject))
                        flag |= 1;
                    argTup[numArgs++] = flag;
                }
                break;
            default:
                if ((argFlags[i] & CallSiteDescriptor.ARG_FLAT) != 0)
                    return;
                hasNamed = true;
            }
        }
        
        if (numArgs >= MD_CACHE_MAX_ARITY)
            return;

        /* If the cache is saturated, don't do anything (we could instead do a random
         * replacement). */
        ArityCache ac = this.arityCaches[numArgs];
        if (ac != null && ac.numEntries == MD_CACHE_MAX_ENTRIES)
            return;
        
        /* If there's no entries yet, need to do some allocation. */
        if (ac == null) {
            ac = new ArityCache();
            ac.typeIds = new long[numArgs * MD_CACHE_MAX_ENTRIES];
            ac.namedOK = new boolean[MD_CACHE_MAX_ENTRIES];
            ac.results = new SixModelObject[MD_CACHE_MAX_ENTRIES];
            this.arityCaches[numArgs - 1] = ac;
        }

        /* Add entry. */
        int insType = ac.numEntries * numArgs;
        for (int i = 0; i < numArgs; i++)
            ac.typeIds[insType + i] = argTup[i];
        ac.results[ac.numEntries] = result;
        ac.namedOK[ac.numEntries] = hasNamed;
        ac.numEntries++;
    }

    public SixModelObject lookup(CallCaptureInstance capture, ThreadContext tc) {
        /* If there's flattenings, we can't use the cache. */
        if (capture.descriptor.hasFlattening)
            return null;
        
        /* Count number of positional args and build type tuple. */
        int numArgs = 0;
        Object[] args = capture.args;
        byte[] argFlags = capture.descriptor.argFlags;
        long argTup[] = new long[MD_CACHE_MAX_ARITY];
        boolean hasNamed = false;
        for (int i = 0; i < argFlags.length; i++) {
            switch (argFlags[i]) {
            case CallSiteDescriptor.ARG_INT:
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return null;
                argTup[numArgs++] = MD_CACHE_INT;
                break;
            case CallSiteDescriptor.ARG_NUM:
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return null;
                argTup[numArgs++] = MD_CACHE_NUM;
                break;
            case CallSiteDescriptor.ARG_STR:
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return null;
                argTup[numArgs++] = MD_CACHE_STR;
                break;
            case CallSiteDescriptor.ARG_OBJ:
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return null;
                SixModelObject decont = Ops.decont((SixModelObject)args[i], tc);
                if ( decont == null ) {
                    argTup[numArgs++] = MD_CACHE_NULL;
                }
                else {
                    long flag = ((long)decont.st.hashCode()) << 1;
                    if (!(decont instanceof TypeObject))
                        flag |= 1;
                    argTup[numArgs++] = flag;
                }
                break;
            default:
                if ((argFlags[i] & CallSiteDescriptor.ARG_FLAT) != 0)
                    return null;
                hasNamed = true;
            }
        }
        
        /* If it's zero-arity, return result right off. */
        if (numArgs == 0)
            return hasNamed ? null : this.zeroArity;

        /* Look through entries. */
        ArityCache ac = this.arityCaches[numArgs - 1];
        if (ac == null)
            return null;
        int tPos = 0;
        for (int i = 0; i < ac.numEntries; i++) {
            boolean match = true;
            for (int j = 0; j < numArgs; j++) {
                if (ac.typeIds[tPos + j] != argTup[j]) {
                    match = false;
                    break;
                }
            }
            if (match) {
                if (hasNamed == ac.namedOK[i])
                    return ac.results[i];
            }
            tPos += numArgs;
        }

        return null;
    }
}
