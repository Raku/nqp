package org.perl6.nqp.sixmodel;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.sixmodel.reprs.CallCapture;
import org.perl6.nqp.sixmodel.reprs.CodeRefREPR;
import org.perl6.nqp.sixmodel.reprs.ContextRef;
import org.perl6.nqp.sixmodel.reprs.Continuation;
import org.perl6.nqp.sixmodel.reprs.CArray;
import org.perl6.nqp.sixmodel.reprs.CPointer;
import org.perl6.nqp.sixmodel.reprs.CStr;
import org.perl6.nqp.sixmodel.reprs.CStruct;
import org.perl6.nqp.sixmodel.reprs.CUnion;
import org.perl6.nqp.sixmodel.reprs.IOHandle;
import org.perl6.nqp.sixmodel.reprs.JavaWrap;
import org.perl6.nqp.sixmodel.reprs.KnowHOWAttribute;
import org.perl6.nqp.sixmodel.reprs.KnowHOWREPR;
import org.perl6.nqp.sixmodel.reprs.Lexotic;
import org.perl6.nqp.sixmodel.reprs.MultiCache;
import org.perl6.nqp.sixmodel.reprs.NativeCall;
import org.perl6.nqp.sixmodel.reprs.NFA;
import org.perl6.nqp.sixmodel.reprs.P6Opaque;
import org.perl6.nqp.sixmodel.reprs.P6bigint;
import org.perl6.nqp.sixmodel.reprs.P6int;
import org.perl6.nqp.sixmodel.reprs.P6num;
import org.perl6.nqp.sixmodel.reprs.P6str;
import org.perl6.nqp.sixmodel.reprs.SCRef;
import org.perl6.nqp.sixmodel.reprs.Uninstantiable;
import org.perl6.nqp.sixmodel.reprs.VMArray;
import org.perl6.nqp.sixmodel.reprs.VMException;
import org.perl6.nqp.sixmodel.reprs.VMHash;
import org.perl6.nqp.sixmodel.reprs.VMIter;
import org.perl6.nqp.sixmodel.reprs.VMThread;
import org.perl6.nqp.sixmodel.reprs.ReentrantMutex;
import org.perl6.nqp.sixmodel.reprs.Semaphore;
import org.perl6.nqp.sixmodel.reprs.ConcBlockingQueue;
import org.perl6.nqp.sixmodel.reprs.ConditionVariable;
import org.perl6.nqp.sixmodel.reprs.AsyncTask;
import org.perl6.nqp.sixmodel.reprs.NativeRef;

public class REPRRegistry {
    private static HashMap<String, Integer> reprIdMap = new HashMap<String, Integer>();
    private static ArrayList<REPR> reprs = new ArrayList<REPR>();
    
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
            throw new RuntimeException("No REPR " + new Integer(id).toString());
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
        addREPR("Lexotic", new Lexotic());
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
        addREPR("CUnion", new CUnion());
        addREPR("VMThread", new VMThread());
        addREPR("ReentrantMutex", new ReentrantMutex());
        addREPR("Semaphore", new Semaphore());
        addREPR("ConcBlockingQueue", new ConcBlockingQueue());
        addREPR("ConditionVariable", new ConditionVariable());
        addREPR("AsyncTask", new AsyncTask());
        addREPR("NativeRef", new NativeRef());
    }
}
