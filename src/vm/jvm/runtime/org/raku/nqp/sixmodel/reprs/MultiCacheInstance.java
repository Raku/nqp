package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.CallSiteDescriptor;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.TypeObject;

public class MultiCacheInstance extends SixModelObject {
    private static final int MD_CACHE_MAX_ARITY = 4;
    private static final int MD_CACHE_MAX_ENTRIES = 32;
    private static final int MD_CACHE_NULL = 0;
    private static final int MD_CACHE_INT = 1;
    private static final int MD_CACHE_NUM = 2;
    private static final int MD_CACHE_STR = 3;

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

        Object[] args = capture.args;
        /* If it's zero arity, just stick it in that slot. */
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
            if (denotesPositionalArgument(argFlags[i])) {
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return;
                argTup[numArgs++] = getTypeId(argFlags[i], args[i], tc);
            }
            else {
                if ((argFlags[i] & CallSiteDescriptor.ARG_FLAT) != 0)
                    return;
                hasNamed = true;
            }
        }

        /* Again, if it's zero arity, just stick it in that slot. */
        if (numArgs == 0) {
            this.zeroArity = result;
            return;
        }

        /* If number of positional args exceeds arity limit, don't do anything. */
        if (numArgs >= MD_CACHE_MAX_ARITY)
            return;

        /* The zero arity case was handled above.
         * At index 0 we have the cache for arity 1 */
        ArityCache ac = this.arityCaches[numArgs - 1];

        /* If the cache is saturated, don't do anything (we could instead do a random
         * replacement). */
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
            if (denotesPositionalArgument(argFlags[i])) {
                if (numArgs >= MD_CACHE_MAX_ARITY)
                    return null;
                argTup[numArgs++] = getTypeId(argFlags[i], args[i], tc);
            }
            else {
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

    private boolean denotesPositionalArgument(byte argFlag) {
        return argFlag == CallSiteDescriptor.ARG_INT || argFlag == CallSiteDescriptor.ARG_NUM
            || argFlag == CallSiteDescriptor.ARG_STR || argFlag == CallSiteDescriptor.ARG_OBJ;
    }

    private long getTypeId(byte flag, Object arg, ThreadContext tc) {
        switch (flag) {
        case CallSiteDescriptor.ARG_INT:
            return MD_CACHE_INT;
        case CallSiteDescriptor.ARG_NUM:
            return MD_CACHE_NUM;
        case CallSiteDescriptor.ARG_STR:
            return MD_CACHE_STR;
        case CallSiteDescriptor.ARG_OBJ:
            if (Ops.isnull((SixModelObject)arg) == 1)
                return MD_CACHE_NULL;
            SixModelObject cont = (SixModelObject)arg;
            SixModelObject decont = Ops.decont(cont, tc);
            long typeId = ((long)decont.st.hashCode()) << 3;
            if (Ops.iscont_i(cont) == 1 || Ops.iscont_n(cont) == 1 || Ops.iscont_s(cont) == 1) {
                typeId |= 4;    /* Native ref vs. non-native ref */
                typeId |= 2;    /* Native refs are always writable. */
            }
            else if (Ops.isrwcont(cont, tc) == 1)
                typeId |= 2;
            if (!(decont instanceof TypeObject))
                typeId |= 1;
            return typeId;
        default:
            return -1;
        }
    }
}
