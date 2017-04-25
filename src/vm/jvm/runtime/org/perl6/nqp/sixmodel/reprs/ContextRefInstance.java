package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.StaticCodeInfo;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class ContextRefInstance extends SixModelObject {
    public CallFrame context;
    
    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        Integer idx = context.codeRef.staticInfo.oTryGetLexicalIdx(key);
        return idx == null ? null : context.oLex[idx];
    }
    
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
    
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        Integer idx = context.codeRef.staticInfo.oTryGetLexicalIdx(key);
        if (idx == null)
            throw ExceptionHandling.dieInternal(tc, "No lexical " + key + " in this lexpad");
        context.oLex[idx] = value;
    }
    
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

    public long elems(ThreadContext tc) {
        StaticCodeInfo info = context.codeRef.staticInfo;
        return (info.oLexicalNames != null ? info.oLexicalNames.length : 0) +
               (info.iLexicalNames != null ? info.iLexicalNames.length : 0) +
               (info.nLexicalNames != null ? info.nLexicalNames.length : 0) +
               (info.sLexicalNames != null ? info.sLexicalNames.length : 0);
    }
    
    public long exists_key(ThreadContext tc, String key) {
        StaticCodeInfo sci = context.codeRef.staticInfo;
        return sci.oTryGetLexicalIdx(key) != null ||
               sci.iTryGetLexicalIdx(key) != null ||
               sci.nTryGetLexicalIdx(key) != null ||
               sci.sTryGetLexicalIdx(key) != null
               ? 1 : 0;
    }
}
