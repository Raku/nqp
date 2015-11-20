package org.perl6.nqp.sixmodel;
import org.perl6.nqp.runtime.CodeRef;
import org.perl6.nqp.runtime.CompilationUnit;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.reprs.KnowHOWREPRInstance;

import java.util.Map;

public class KnowHOWBootstrapper {
    public static void bootstrap(ThreadContext tc)
    {
        CompilationUnit knowhowUnit = new KnowHOWMethods();
        knowhowUnit.initializeCompilationUnit(tc);
        bootstrapKnowHOW(tc, knowhowUnit);
        bootstrapKnowHOWAttribute(tc, knowhowUnit);
        
        tc.gc.BOOTArray = bootType(tc, "BOOTArray", "VMArray");
        tc.gc.BOOTHash = bootType(tc, "BOOTHash", "VMHash");
        tc.gc.BOOTIter = bootType(tc, "BOOTIter", "VMIter");
        tc.gc.BOOTInt = bootType(tc, "BOOTInt", "P6int");
        tc.gc.BOOTNum = bootType(tc, "BOOTNum", "P6num");
        tc.gc.BOOTStr = bootType(tc, "BOOTStr", "P6str");
        tc.gc.BOOTCode = bootType(tc, "BOOTCode", "CodeRef");
        tc.gc.SCRef = bootType(tc, "SCRef", "SCRef");
        tc.gc.ContextRef = bootType(tc, "ContextRef", "ContextRef");
        tc.gc.CallCapture = bootType(tc, "CallCapture", "CallCapture");
        tc.gc.BOOTException = bootType(tc, "BOOTException", "VMException");
        tc.gc.BOOTIO = bootType(tc, "BOOTIO", "IOHandle");
        tc.gc.Thread = bootType(tc, "Thread", "VMThread");
        
        tc.gc.BOOTArray.st.hllRole = HLLConfig.ROLE_ARRAY;
        tc.gc.BOOTHash.st.hllRole = HLLConfig.ROLE_HASH;
        tc.gc.BOOTInt.st.hllRole = HLLConfig.ROLE_INT;
        tc.gc.BOOTNum.st.hllRole = HLLConfig.ROLE_NUM;
        tc.gc.BOOTStr.st.hllRole = HLLConfig.ROLE_STR;
        tc.gc.BOOTCode.st.hllRole = HLLConfig.ROLE_CODE;
        
        tc.gc.BOOTIntArray = bootTypedArray(tc, "BOOTIntArray", tc.gc.BOOTInt);
        tc.gc.BOOTNumArray = bootTypedArray(tc, "BOOTNumArray", tc.gc.BOOTNum);
        tc.gc.BOOTStrArray = bootTypedArray(tc, "BOOTStrArray", tc.gc.BOOTStr);
        
        tc.gc.MultiCache = bootType(tc, "MultiCache", "MultiCache");

        tc.gc.Continuation = bootType(tc, "Continuation", "Continuation");
        tc.gc.Lexotic = bootType(tc, "Lexotic", "Lexotic");
        tc.gc.BOOTJava = bootType(tc, "BOOTJavaObject", "JavaWrap");
        
        // fixup missing STable for knowhow_how methods
        for (Map.Entry<String,SixModelObject> cr : ((KnowHOWREPRInstance)tc.gc.KnowHOW.st.HOW).methods.entrySet()) {
            cr.getValue().st = tc.gc.BOOTCode.st;
        }

        Ops.setboolspec(tc.gc.BOOTIter, BoolificationSpec.MODE_ITER, null, tc);
        Ops.setboolspec(tc.gc.BOOTInt, BoolificationSpec.MODE_UNBOX_INT, null, tc);
        Ops.setboolspec(tc.gc.BOOTNum, BoolificationSpec.MODE_UNBOX_NUM, null, tc);
        Ops.setboolspec(tc.gc.BOOTStr, BoolificationSpec.MODE_UNBOX_STR_NOT_EMPTY, null, tc);
        Ops.setboolspec(tc.gc.BOOTArray, BoolificationSpec.MODE_HAS_ELEMS, null, tc);
        Ops.setboolspec(tc.gc.BOOTIntArray, BoolificationSpec.MODE_HAS_ELEMS, null, tc);
        Ops.setboolspec(tc.gc.BOOTNumArray, BoolificationSpec.MODE_HAS_ELEMS, null, tc);
        Ops.setboolspec(tc.gc.BOOTStrArray, BoolificationSpec.MODE_HAS_ELEMS, null, tc);
        Ops.setboolspec(tc.gc.BOOTHash, BoolificationSpec.MODE_HAS_ELEMS, null, tc);
    }

    private static void bootstrapKnowHOW(ThreadContext tc, CompilationUnit knowhowUnit) {
        /* Create our KnowHOW type object. Note we don't have a HOW just yet, so
         * pass in NULL. */
        REPR REPR = REPRRegistry.getByName("KnowHOWREPR");
        SixModelObject knowhow = REPR.type_object_for(tc, null);

        /* We create a KnowHOW instance that can describe itself. This means
         * (once we tie the knot) that .HOW.HOW.HOW.HOW etc will always return
         * that, which closes the model up. */
        STable st = new STable(REPR, null);
        st.WHAT = knowhow;
        KnowHOWREPRInstance knowhow_how = (KnowHOWREPRInstance)REPR.allocate(tc, st);
        st.HOW = knowhow_how;
        knowhow_how.st = st;
        
        /* Add various methods to the KnowHOW's HOW. */
        knowhow_how.methods.put("new_type", knowhowUnit.lookupCodeRef("new_type"));
        knowhow_how.methods.put("add_method", knowhowUnit.lookupCodeRef("add_method"));
        knowhow_how.methods.put("add_attribute", knowhowUnit.lookupCodeRef("add_attribute"));
        knowhow_how.methods.put("compose", knowhowUnit.lookupCodeRef("compose"));
        knowhow_how.methods.put("attributes", knowhowUnit.lookupCodeRef("attributes"));
        knowhow_how.methods.put("methods", knowhowUnit.lookupCodeRef("methods"));
        knowhow_how.methods.put("name", knowhowUnit.lookupCodeRef("name"));
        
        /* Set name KnowHOW for the KnowHOW's HOW. */
        knowhow_how.name = "KnowHOW";

        /* Set this built up HOW as the KnowHOW's HOW. */
        knowhow.st.HOW = knowhow_how;
        
        /* Give it an authoritative method cache; this in turn will make the
         * method dispatch bottom out. */
        knowhow.st.MethodCache = knowhow_how.methods;
        knowhow.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;
        knowhow_how.st.MethodCache = knowhow_how.methods;
        knowhow_how.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;
        
        /* Associate the created objects with the initial core serialization
         * context. */
        SerializationContext sc = new SerializationContext("__6MODEL_CORE__");
        tc.gc.scs.put("__6MODEL_CORE__", sc);
        sc.addObject(knowhow);
        knowhow.sc = sc;
        sc.addObject(knowhow_how);
        knowhow_how.sc = sc;
        sc.addSTable(knowhow.st);
        knowhow.st.sc = sc;
        sc.addSTable(knowhow_how.st);
        knowhow_how.st.sc = sc;

        /* Stash the created KnowHOW. */
        tc.gc.KnowHOW = knowhow;
    }

    private static void bootstrapKnowHOWAttribute(ThreadContext tc, CompilationUnit knowhowUnit) {        
        /* Create meta-object. */
        SixModelObject knowhow_how = tc.gc.KnowHOW.st.HOW;
        KnowHOWREPRInstance meta_obj = (KnowHOWREPRInstance)knowhow_how.st.REPR.allocate(tc, knowhow_how.st);
        
        /* Add methods. */
        meta_obj.methods.put("new", knowhowUnit.lookupCodeRef("attr_new"));
        meta_obj.methods.put("compose", knowhowUnit.lookupCodeRef("attr_compose"));
        meta_obj.methods.put("name", knowhowUnit.lookupCodeRef("attr_name"));
        meta_obj.methods.put("type", knowhowUnit.lookupCodeRef("attr_type"));
        meta_obj.methods.put("box_target", knowhowUnit.lookupCodeRef("attr_box_target"));
        
        /* Set name. */
        meta_obj.name = "KnowHOWAttribute";
        
        /* Create a new type object with the correct REPR. */
        REPR repr = REPRRegistry.getByName("KnowHOWAttribute");
        SixModelObject type_obj = repr.type_object_for(tc, meta_obj);
        
        /* Set up method dispatch cache. */
        type_obj.st.MethodCache = meta_obj.methods;
        type_obj.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;
        
        /* Associate the created object with the intial core serialization
         * context. */
        SerializationContext sc =  tc.gc.scs.get("__6MODEL_CORE__");
        sc.addObject(type_obj);
        type_obj.sc = sc;
        sc.addSTable(type_obj.st);
        type_obj.st.sc = sc;
        
        /* Stash the created type object. */
        tc.gc.KnowHOWAttribute = type_obj;
    }
    
    private static SixModelObject bootType(ThreadContext tc, String typeName, String reprName) {
        SixModelObject knowhow_how = tc.gc.KnowHOW.st.HOW;
        KnowHOWREPRInstance meta_obj = (KnowHOWREPRInstance)knowhow_how.st.REPR.allocate(tc, knowhow_how.st);
        meta_obj.name = typeName;
        REPR repr = REPRRegistry.getByName(reprName);
        SixModelObject type_obj = repr.type_object_for(tc, meta_obj);
        type_obj.st.MethodCache = meta_obj.methods;
        type_obj.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;
        
        SerializationContext sc = tc.gc.scs.get("__6MODEL_CORE__");
        sc.addObject(type_obj);
        type_obj.sc = sc;
        sc.addObject(type_obj.st.HOW);
        type_obj.st.HOW.sc = sc;
        sc.addSTable(type_obj.st);
        type_obj.st.sc = sc;
        
        return type_obj;
    }

    private static SixModelObject bootTypedArray(ThreadContext tc, String name, SixModelObject type) {
        SixModelObject booted = bootType(tc, name, "VMArray");
        
        SixModelObject BOOTHash = tc.gc.BOOTHash;
        SixModelObject repr_info = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);
        SixModelObject repr_array_info = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);
        repr_array_info.bind_key_boxed(tc, "type", type);
        repr_info.bind_key_boxed(tc, "array", repr_array_info);
        booted.st.REPR.compose(tc, booted.st, repr_info);
        
        return booted;
    }
}
