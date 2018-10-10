package org.perl6.nqp.sixmodel;

import org.perl6.nqp.runtime.CompilationUnit;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.reprs.KnowHOWREPRInstance;

public class KnowHOWBootstrapper {

    public static void bootstrap(ThreadContext tc) {

        final CompilationUnit knowhowUnit = new KnowHOWMethods();
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
        tc.gc.BOOTJava = bootType(tc, "BOOTJavaObject", "JavaWrap");

        // fixup missing STable for knowhow_how methods
        ((KnowHOWREPRInstance)tc.gc.KnowHOW.st.HOW).methods
            .forEach((k, v) -> v.st = tc.gc.BOOTCode.st);

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
        // create our KnowHOW type object

        // note we do not have a HOW just yet,
        // so pass in NULL.
        final REPR REPR = REPRRegistry.getByName("KnowHOWREPR");
        final SixModelObject knowhow = REPR.type_object_for(tc, null);

        // create a KnowHOW instance that can describe itself

        // this means (once we tie the knot) that .HOW.HOW.HOW.HOW etc
        // will always return that, which closes the model up
        final STable st = new STable(REPR, null);
        st.WHAT = knowhow;

        final KnowHOWREPRInstance knowhowHow = (KnowHOWREPRInstance)REPR.allocate(tc, st);
        st.HOW = knowhowHow;
        knowhowHow.st = st;

        // add various methods to the KnowHOW's HOW
        knowhowHow.methods.put("new_type", knowhowUnit.lookupCodeRef("new_type"));
        knowhowHow.methods.put("add_method", knowhowUnit.lookupCodeRef("add_method"));
        knowhowHow.methods.put("add_attribute", knowhowUnit.lookupCodeRef("add_attribute"));
        knowhowHow.methods.put("compose", knowhowUnit.lookupCodeRef("compose"));
        knowhowHow.methods.put("attributes", knowhowUnit.lookupCodeRef("attributes"));
        knowhowHow.methods.put("methods", knowhowUnit.lookupCodeRef("methods"));
        knowhowHow.methods.put("name", knowhowUnit.lookupCodeRef("name"));

        // set name KnowHOW for the KnowHOW's HOW
        knowhowHow.name = "KnowHOW";

        // set this built up HOW as the KnowHOW's HOW
        knowhow.st.HOW = knowhowHow;

        // give it an authoritative method cache;
        // this in turn will make the method dispatch bottom out
        knowhow.st.MethodCache = knowhowHow.methods;
        knowhow.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;
        knowhowHow.st.MethodCache = knowhowHow.methods;
        knowhowHow.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;

        // associate the created objects with the initial core serialization context
        final SerializationContext sc = new SerializationContext("__6MODEL_CORE__");
        tc.gc.scs.put("__6MODEL_CORE__", sc);
        sc.addObject(knowhow);
        knowhow.sc = sc;
        sc.addObject(knowhowHow);
        knowhowHow.sc = sc;
        sc.addSTable(knowhow.st);
        knowhow.st.sc = sc;
        sc.addSTable(knowhowHow.st);
        knowhowHow.st.sc = sc;

        // stash the created KnowHOW
        tc.gc.KnowHOW = knowhow;
    }

    private static void bootstrapKnowHOWAttribute(ThreadContext tc, CompilationUnit knowhowUnit) {
        // create meta-object
        final SixModelObject knowhowHow = tc.gc.KnowHOW.st.HOW;
        final KnowHOWREPRInstance metaObj = (KnowHOWREPRInstance)knowhowHow.st.REPR.allocate(tc, knowhowHow.st);

        /* Add methods. */
        metaObj.methods.put("new", knowhowUnit.lookupCodeRef("attr_new"));
        metaObj.methods.put("compose", knowhowUnit.lookupCodeRef("attr_compose"));
        metaObj.methods.put("name", knowhowUnit.lookupCodeRef("attr_name"));
        metaObj.methods.put("type", knowhowUnit.lookupCodeRef("attr_type"));
        metaObj.methods.put("box_target", knowhowUnit.lookupCodeRef("attr_box_target"));

        // set name
        metaObj.name = "KnowHOWAttribute";

        // create a new type object with the correct REPR
        final REPR repr = REPRRegistry.getByName("KnowHOWAttribute");
        final SixModelObject typeObj = repr.type_object_for(tc, metaObj);

        // set up method dispatch cache
        typeObj.st.MethodCache = metaObj.methods;
        typeObj.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;

        // associate the created object with the initial core serialization context
        final SerializationContext sc =  tc.gc.scs.get("__6MODEL_CORE__");
        sc.addObject(typeObj);
        typeObj.sc = sc;
        sc.addSTable(typeObj.st);
        typeObj.st.sc = sc;

        // stash the created type object
        tc.gc.KnowHOWAttribute = typeObj;
    }

    private static SixModelObject bootType(ThreadContext tc, String typeName, String reprName) {
        final SixModelObject knowhowHow = tc.gc.KnowHOW.st.HOW;
        final KnowHOWREPRInstance metaObj = (KnowHOWREPRInstance)knowhowHow.st.REPR.allocate(tc, knowhowHow.st);

        metaObj.name = typeName;

        final REPR repr = REPRRegistry.getByName(reprName);
        final SixModelObject typeObj = repr.type_object_for(tc, metaObj);
        typeObj.st.MethodCache = metaObj.methods;
        typeObj.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;

        final SerializationContext sc = tc.gc.scs.get("__6MODEL_CORE__");
        sc.addObject(typeObj);
        typeObj.sc = sc;
        sc.addObject(typeObj.st.HOW);
        typeObj.st.HOW.sc = sc;
        sc.addSTable(typeObj.st);
        typeObj.st.sc = sc;

        return typeObj;
    }

    private static SixModelObject bootTypedArray(ThreadContext tc, String name, SixModelObject type) {
        final SixModelObject booted = bootType(tc, name, "VMArray");

        final SixModelObject BOOTHash = tc.gc.BOOTHash;
        final SixModelObject REPRInfo = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);
        final SixModelObject REPRArrayInfo = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);

        REPRArrayInfo.bind_key_boxed(tc, "type", type);
        REPRInfo.bind_key_boxed(tc, "array", REPRArrayInfo);
        booted.st.REPR.compose(tc, booted.st, REPRInfo);

        return booted;
    }
}
