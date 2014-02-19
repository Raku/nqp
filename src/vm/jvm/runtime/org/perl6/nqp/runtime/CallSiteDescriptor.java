package org.perl6.nqp.runtime;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.reprs.VMHashInstance;

/**
 * Contains the statically known details of a call site. These are shared rather
 * than being one for every single callsite in the code.
 */
public class CallSiteDescriptor {
    /* The various flags that can be set. */
    public static final byte ARG_OBJ = 0;
    public static final byte ARG_INT = 1;
    public static final byte ARG_NUM = 2;
    public static final byte ARG_STR = 4;
    public static final byte ARG_NAMED = 8;
    public static final byte ARG_FLAT = 16;
    
    /* Flags, one per argument that is being passed. */
    public byte[] argFlags;
    
    /* Maps string names for named params do an Integer that has
     * arg index << 3 + type flag. */
    public HashMap<String, Integer> nameMap;
    
    /* Singleton empty name map. */
    private static HashMap<String, Integer> emptyNameMap = new HashMap<String, Integer>();
    
    /* Number of normal positional arguments. */
    public int numPositionals = 0;
    
    /* Are the any flattening things? */
    public boolean hasFlattening = false;
    
    /* Original names list. */
    public String[] names;
    
    public CallSiteDescriptor(byte[] flags, String[] names) {
        argFlags = flags;
        if (names != null)
            nameMap = new HashMap<String, Integer>();
        else
            nameMap = emptyNameMap;
        this.names = names;
        
        int pos = 0, name = 0;
        for (byte af : argFlags) {
            switch (af) {
            case ARG_OBJ:
                pos++;
                numPositionals++;
                break;
            case ARG_INT:
                pos++;
                numPositionals++;
                break;
            case ARG_NUM:
                pos++;
                numPositionals++;
                break;
            case ARG_STR:
                pos++;
                numPositionals++;
                break;
            case ARG_OBJ | ARG_NAMED:
                nameMap.put(names[name++], (pos++ << 3) | ARG_OBJ);
                break;
            case ARG_INT | ARG_NAMED:
                nameMap.put(names[name++], (pos++ << 3) | ARG_INT);
                break;
            case ARG_NUM | ARG_NAMED:
                nameMap.put(names[name++], (pos++ << 3) | ARG_NUM);
                break;
            case ARG_STR | ARG_NAMED:
                nameMap.put(names[name++], (pos++ << 3) | ARG_STR);
                break;
            case ARG_OBJ | ARG_FLAT:
                pos++;
                hasFlattening = true;
                break;
            case ARG_OBJ | ARG_FLAT | ARG_NAMED:
                pos++;
                hasFlattening = true;
                break;
            default:
                new RuntimeException("Unhandld argument flag: " + af);
            }
        }
    }

    /* Explodes any flattening parts. Creates and puts in place a new callsite
     * and enlarged-as-needed argument arrays.
     */
    public CallSiteDescriptor explodeFlattening(CallFrame cf, Object[] oldArgs) {
        ArrayList<Byte> newFlags = new ArrayList<Byte>();
        ArrayList<Object> newArgs = new ArrayList<Object>();
        ArrayList<String> newNames = new ArrayList<String>();
        int oldArgsIdx = 0;
        int oldNameIdx = 0;
        
        for (byte af : argFlags) {
            switch (af) {
            case ARG_OBJ | ARG_FLAT:
                SixModelObject flatArray = (SixModelObject)oldArgs[oldArgsIdx++];
                int prim = flatArray.st.REPR.get_value_storage_spec(cf.tc, flatArray.st).boxed_primitive;
                long elems = flatArray.elems(cf.tc);
                for (long i = 0; i < elems; i++) {
                    if (prim == StorageSpec.BP_NONE) {
                        newArgs.add(flatArray.at_pos_boxed(cf.tc, i));
                        newFlags.add(ARG_OBJ);
                    } else {
                        flatArray.at_pos_native(cf.tc, i);
                        switch (prim) {
                            case StorageSpec.BP_INT:
                                newArgs.add(cf.tc.native_i);
                                newFlags.add(ARG_INT);
                                break;
                            case StorageSpec.BP_NUM:
                                newArgs.add(cf.tc.native_n);
                                newFlags.add(ARG_NUM);
                                break;
                            case StorageSpec.BP_STR:
                                newArgs.add(cf.tc.native_s);
                                newFlags.add(ARG_STR);
                                break;
                            default:
                                throw ExceptionHandling.dieInternal(cf.tc, "Unknown boxed primitive");
                        }
                    }
                }
                break;
            case ARG_OBJ | ARG_FLAT | ARG_NAMED:
                SixModelObject flatHash = (SixModelObject)oldArgs[oldArgsIdx++];
                if (flatHash instanceof VMHashInstance) {
                    HashMap<String, SixModelObject> storage = ((VMHashInstance)flatHash).storage;
                    for (String key : storage.keySet()) {
                        newNames.add(key);
                        newArgs.add(storage.get(key));
                        newFlags.add((byte)(ARG_OBJ | ARG_NAMED));
                    }
                }
                else {
                    throw ExceptionHandling.dieInternal(cf.tc, "Flattening named argument must have VMHash REPR");
                }
                break;
            case ARG_OBJ | ARG_NAMED:
            case ARG_INT | ARG_NAMED:
            case ARG_NUM | ARG_NAMED:
            case ARG_STR | ARG_NAMED:
                newArgs.add(oldArgs[oldArgsIdx++]);
                newNames.add(names[oldNameIdx++]);
                newFlags.add(af);
                break;
            default:
                newArgs.add(oldArgs[oldArgsIdx++]);
                newFlags.add(af);
            }
        }
        
        byte[] newFlagsArr = new byte[newFlags.size()];
        for (int i = 0; i < newFlagsArr.length; i++)
            newFlagsArr[i] = newFlags.get(i);
        String[] newNamesArr = new String[newNames.size()];
        for (int i = 0; i < newNamesArr.length; i++)
            newNamesArr[i] = newNames.get(i);
        CallSiteDescriptor exploded = new CallSiteDescriptor(newFlagsArr, newNamesArr);
        
        Object[] args = new Object[newArgs.size()];
        for (int i = 0; i < newArgs.size(); i++)
            args[i] = newArgs.get(i);
        cf.tc.flatArgs = args;
        
        return exploded;
    }

    /** Create a new callframe and arg list to add an invokee argument at the front. */
    public CallSiteDescriptor injectInvokee(ThreadContext tc, Object[] oldArgs, SixModelObject invokee) {
        Object[] newArgs = new Object[oldArgs.length + 1];
        System.arraycopy(oldArgs, 0, newArgs, 1, oldArgs.length);
        newArgs[0] = invokee;

        byte[] newFlags  = new byte[argFlags.length + 1];
        System.arraycopy(argFlags, 0, newFlags, 1, argFlags.length);
        newFlags[0] = ARG_OBJ;

        tc.flatArgs = newArgs;
        return new CallSiteDescriptor(newFlags, names);
    }
}
