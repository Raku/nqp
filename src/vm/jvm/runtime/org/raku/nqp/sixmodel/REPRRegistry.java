package org.raku.nqp.sixmodel;

import java.util.ArrayList;
import java.util.HashMap;

import org.raku.nqp.sixmodel.reprs.CallCapture;
import org.raku.nqp.sixmodel.reprs.CodeRefREPR;
import org.raku.nqp.sixmodel.reprs.ContextRef;
import org.raku.nqp.sixmodel.reprs.Continuation;
import org.raku.nqp.sixmodel.reprs.CArray;
import org.raku.nqp.sixmodel.reprs.CPointer;
import org.raku.nqp.sixmodel.reprs.CStr;
import org.raku.nqp.sixmodel.reprs.CStruct;
import org.raku.nqp.sixmodel.reprs.CPPStruct;
import org.raku.nqp.sixmodel.reprs.CUnion;
import org.raku.nqp.sixmodel.reprs.IOHandle;
import org.raku.nqp.sixmodel.reprs.JavaWrap;
import org.raku.nqp.sixmodel.reprs.KnowHOWAttribute;
import org.raku.nqp.sixmodel.reprs.KnowHOWREPR;
import org.raku.nqp.sixmodel.reprs.MultiCache;
import org.raku.nqp.sixmodel.reprs.NativeCall;
import org.raku.nqp.sixmodel.reprs.NFA;
import org.raku.nqp.sixmodel.reprs.P6Opaque;
import org.raku.nqp.sixmodel.reprs.P6bigint;
import org.raku.nqp.sixmodel.reprs.P6int;
import org.raku.nqp.sixmodel.reprs.P6num;
import org.raku.nqp.sixmodel.reprs.P6str;
import org.raku.nqp.sixmodel.reprs.SCRef;
import org.raku.nqp.sixmodel.reprs.Uninstantiable;
import org.raku.nqp.sixmodel.reprs.VMArray;
import org.raku.nqp.sixmodel.reprs.VMException;
import org.raku.nqp.sixmodel.reprs.VMHash;
import org.raku.nqp.sixmodel.reprs.VMIter;
import org.raku.nqp.sixmodel.reprs.VMNull;
import org.raku.nqp.sixmodel.reprs.VMThread;
import org.raku.nqp.sixmodel.reprs.ReentrantMutex;
import org.raku.nqp.sixmodel.reprs.Semaphore;
import org.raku.nqp.sixmodel.reprs.ConcBlockingQueue;
import org.raku.nqp.sixmodel.reprs.ConditionVariable;
import org.raku.nqp.sixmodel.reprs.AsyncTask;
import org.raku.nqp.sixmodel.reprs.NativeRef;
import org.raku.nqp.sixmodel.reprs.MultiDimArray;
import org.raku.nqp.sixmodel.reprs.Decoder;

public class REPRRegistry {
    private static HashMap<String, Integer> reprIdMap = new HashMap<>();
    private static ArrayList<REPR> reprs = new ArrayList<>();

    public static REPR getByName(String name) {
        Integer idx = reprIdMap.get(name);
        if (idx == null)
            throw new RuntimeException("No REPR " + name);
        return getById(idx);
    }

    public static REPR getById(int id) {
        if (id < reprs.size())
            return reprs.get(id);
        else
            throw new RuntimeException("No REPR " + id);
    }

    private static void addREPR(String name, REPR REPR) {
        REPR.ID = reprs.size();
        REPR.name = name;
        reprIdMap.put(name, reprs.size());
        reprs.add(REPR);
    }

    static {
        addREPR("KnowHOWREPR", new KnowHOWREPR());
        addREPR("KnowHOWAttribute", new KnowHOWAttribute());
        addREPR("P6opaque", new P6Opaque());
        addREPR("VMHash", new VMHash());
        addREPR("VMArray", new VMArray());
        addREPR("VMIter", new VMIter());
        addREPR("P6str", new P6str());
        addREPR("P6int", new P6int());
        addREPR("P6num", new P6num());
        addREPR("Uninstantiable", new Uninstantiable());
        addREPR("SCRef", new SCRef());
        addREPR("JavaWrap", new JavaWrap());
        addREPR("ContextRef", new ContextRef());
        addREPR("Continuation", new Continuation());
        addREPR("CodeRef", new CodeRefREPR());
        addREPR("CallCapture", new CallCapture());
        addREPR("NFA", new NFA());
        addREPR("VMException", new VMException());
        addREPR("IOHandle", new IOHandle());
        addREPR("P6bigint", new P6bigint());
        addREPR("MultiCache", new MultiCache());
        addREPR("NativeCall", new NativeCall());
        addREPR("CPointer", new CPointer());
        addREPR("CArray", new CArray());
        addREPR("CStr", new CStr());
        addREPR("CStruct", new CStruct());
        addREPR("CPPStruct", new CPPStruct());
        addREPR("CUnion", new CUnion());
        addREPR("VMNull", new VMNull());
        addREPR("VMThread", new VMThread());
        addREPR("ReentrantMutex", new ReentrantMutex());
        addREPR("Semaphore", new Semaphore());
        addREPR("ConcBlockingQueue", new ConcBlockingQueue());
        addREPR("ConditionVariable", new ConditionVariable());
        addREPR("AsyncTask", new AsyncTask());
        addREPR("NativeRef", new NativeRef());
        addREPR("MultiDimArray", new MultiDimArray());
        addREPR("Decoder", new Decoder());
    }
}
