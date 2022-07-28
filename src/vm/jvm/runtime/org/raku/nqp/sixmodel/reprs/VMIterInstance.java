package org.raku.nqp.sixmodel.reprs;

import java.util.Iterator;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class VMIterInstance extends SixModelObject {
    /**
     * Target of the iteration.
     */
    public SixModelObject target;

    /**
     * State for array iteration.
     */
    public long idx;
    public long limit;

    /**
     * State for hash iteration.
     */
    public Iterator<String> hashKeyIter;
    public String curKey;
    public SixModelObject curValue;
    private boolean beforeStart = true;
    private boolean afterEnd = false;

    /**
     * Iteration mode.
     */
    public byte iterMode;

    /**
     * Possible modes.
     */
    public final static byte MODE_ARRAY = 1;
    public final static byte MODE_ARRAY_INT = 2;
    public final static byte MODE_ARRAY_NUM = 3;
    public final static byte MODE_ARRAY_STR = 4;
    public final static byte MODE_HASH = 5;

    /**
     * Iterators work like things you can shift from. This is mostly because
     * Parrot did it that way, and we have a load of code that expect them to
     * work in this kind of way.
     */
    @Override
    public SixModelObject shift_boxed(ThreadContext tc) {
        switch (iterMode) {
        case MODE_ARRAY:
            idx++;
            if (idx >= limit)
                throw ExceptionHandling.dieInternal(tc, "Iteration past end of iterator");
            return target.at_pos_boxed(tc, idx);
        case MODE_ARRAY_INT:
            idx++;
            if (idx >= limit)
                throw ExceptionHandling.dieInternal(tc, "Iteration past end of iterator");
            target.at_pos_native(tc, idx);
            return Ops.box_i(tc.native_i, tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType, tc);
        case MODE_ARRAY_NUM:
            idx++;
            if (idx >= limit)
                throw ExceptionHandling.dieInternal(tc, "Iteration past end of iterator");
            target.at_pos_native(tc, idx);
            return Ops.box_n(tc.native_n, tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.numBoxType, tc);
        case MODE_ARRAY_STR:
            idx++;
            if (idx >= limit)
                throw ExceptionHandling.dieInternal(tc, "Iteration past end of iterator");
            target.at_pos_native(tc, idx);
            return Ops.box_s(tc.native_s, tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType, tc);
        case MODE_HASH:
            if (!hashKeyIter.hasNext()) {
                afterEnd = true;
                throw ExceptionHandling.dieInternal(tc, "Iteration past end of iterator");
            }
            curKey = hashKeyIter.next();
            curValue = target.at_key_boxed(tc, curKey);
            beforeStart = false;
            return this;
        default:
            throw ExceptionHandling.dieInternal(tc, "Unknown iteration mode");
        }
    }

    /**
     * Not part of the 6model API, just keeps some code in here.
     */
    public boolean boolify() {
        switch (iterMode) {
        case MODE_ARRAY:
        case MODE_ARRAY_INT:
        case MODE_ARRAY_NUM:
        case MODE_ARRAY_STR:
            return idx + 1 < limit;
        case MODE_HASH:
            return hashKeyIter.hasNext();
        default:
            throw new RuntimeException("Unknown iteration mode");
        }
    }
    public String key_s(ThreadContext tc) {
        switch (iterMode) {
        case MODE_ARRAY:
            return Long.valueOf(idx).toString();
        case MODE_HASH:
            if (beforeStart || afterEnd)
                throw ExceptionHandling.dieInternal(tc, "You have not advanced to the first item of the hash iterator, or have gone past the end");
            return curKey;
        default:
            throw ExceptionHandling.dieInternal(tc, "Unknown iteration mode");
        }
    }
    public SixModelObject val(ThreadContext tc) {
        switch (iterMode) {
        case MODE_ARRAY:
            return target.at_pos_boxed(tc, idx);
        case MODE_HASH:
            if (beforeStart || afterEnd)
                throw ExceptionHandling.dieInternal(tc, "You have not advanced to the first item of the hash iterator, or have gone past the end");
            return curValue;
        default:
            throw ExceptionHandling.dieInternal(tc, "Unknown iteration mode");
        }
    }
}
