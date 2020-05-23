package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.CallFrame;
import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.StaticCodeInfo;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class ContextRefInstance extends SixModelObject {
    public CallFrame context;

    @Override
    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        Integer idx = context.codeRef.staticInfo.oTryGetLexicalIdx(key);
        return idx == null ? Ops.createNull(tc) : context.oLex[idx];
    }

    @Override
    public void at_key_native(ThreadContext tc, String key) {
        Integer idx = context.codeRef.staticInfo.iTryGetLexicalIdx(key);
        if (idx != null) {
            tc.native_i = context.iLex[idx];
            tc.native_type = ThreadContext.NATIVE_INT;
            return;
        }
        idx = context.codeRef.staticInfo.nTryGetLexicalIdx(key);
        if (idx != null) {
            tc.native_n = context.nLex[idx];
            tc.native_type = ThreadContext.NATIVE_NUM;
            return;
        }
        idx = context.codeRef.staticInfo.sTryGetLexicalIdx(key);
        if (idx != null) {
            tc.native_s = context.sLex[idx];
            tc.native_type = ThreadContext.NATIVE_STR;
            return;
        }
        throw ExceptionHandling.dieInternal(tc, "No lexical " + key + " in this lexpad");
    }

    @Override
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        Integer idx = context.codeRef.staticInfo.oTryGetLexicalIdx(key);
        if (idx == null)
            throw ExceptionHandling.dieInternal(tc, "No lexical " + key + " in this lexpad");
        context.oLex[idx] = value;
    }

    @Override
    public void bind_key_native(ThreadContext tc, String key) {
        Integer idx = context.codeRef.staticInfo.iTryGetLexicalIdx(key);
        if (idx != null) {
            context.iLex[idx] = tc.native_i;
            tc.native_type = ThreadContext.NATIVE_INT;
            return;
        }
        idx = context.codeRef.staticInfo.nTryGetLexicalIdx(key);
        if (idx != null) {
            context.nLex[idx] = tc.native_n;
            tc.native_type = ThreadContext.NATIVE_NUM;
            return;
        }
        idx = context.codeRef.staticInfo.sTryGetLexicalIdx(key);
        if (idx != null) {
            context.sLex[idx] = tc.native_s;
            tc.native_type = ThreadContext.NATIVE_STR;
            return;
        }
        throw ExceptionHandling.dieInternal(tc, "No lexical " + key + " in this lexpad");
    }

    @Override
    public long elems(ThreadContext tc) {
        StaticCodeInfo info = context.codeRef.staticInfo;
        return (info.oLexicalNames != null ? info.oLexicalNames.length : 0) +
               (info.iLexicalNames != null ? info.iLexicalNames.length : 0) +
               (info.nLexicalNames != null ? info.nLexicalNames.length : 0) +
               (info.sLexicalNames != null ? info.sLexicalNames.length : 0);
    }

    @Override
    public long exists_key(ThreadContext tc, String key) {
        StaticCodeInfo sci = context.codeRef.staticInfo;
        return sci.oTryGetLexicalIdx(key) != null ||
               sci.iTryGetLexicalIdx(key) != null ||
               sci.nTryGetLexicalIdx(key) != null ||
               sci.sTryGetLexicalIdx(key) != null
               ? 1 : 0;
    }
}
