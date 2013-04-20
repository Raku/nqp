package org.perl6.nqp.sixmodel;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.runtime.CodeRef;
import org.perl6.nqp.runtime.StaticCodeInfo;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.reprs.VMHashInstance;

public class SerializationReader {
	/* The current version of the serialization format. */
	private final int CURRENT_VERSION = 4;
	
	/* Various sizes (in bytes). */
	private final int HEADER_SIZE               = 4 * 16;
	private final int DEP_TABLE_ENTRY_SIZE      = 8;
	private final int STABLES_TABLE_ENTRY_SIZE  = 12;
	private final int OBJECTS_TABLE_ENTRY_SIZE  = 16;
	private final int CLOSURES_TABLE_ENTRY_SIZE = 24;
	private final int CONTEXTS_TABLE_ENTRY_SIZE = 16;
	private final int REPOS_TABLE_ENTRY_SIZE    = 16;
	
	/* Possible reference types we can serialize. */
	private final short REFVAR_NULL               = 1;
	private final short REFVAR_OBJECT             = 2;
	private final short REFVAR_VM_NULL            = 3;
	private final short REFVAR_VM_INT             = 4;
	private final short REFVAR_VM_NUM             = 5;
	private final short REFVAR_VM_STR             = 6;
	private final short REFVAR_VM_ARR_VAR         = 7;
	private final short REFVAR_VM_ARR_STR         = 8;
	private final short REFVAR_VM_ARR_INT         = 9;
	private final short REFVAR_VM_HASH_STR_VAR    = 10;
	private final short REFVAR_STATIC_CODEREF     = 11;
	private final short REFVAR_CLONED_CODEREF     = 12;
	
	/* Starting state. */
	private ThreadContext tc;
	private SerializationContext sc;
	private String[] sh;
	private CodeRef[] cr;
	private CallFrame[] contexts;
	private ByteBuffer orig;
	
	/* The version of the serialization format we're currently reading. */
	public int version;
	
	/* Various table offsets and entry counts. */
	private int depTableOffset;
	private int depTableEntries;
	private int stTableOffset;
	private int stTableEntries;
	private int stDataOffset;
	private int objTableOffset;
	private int objTableEntries;
	private int objDataOffset;
	private int closureTableOffset;
	private int closureTableEntries;
	private int contextTableOffset;
	private int contextTableEntries;
	private int contextDataOffset;
	private int reposTableOffset;
	private int reposTableEntries;
	
	/* Serialization contexts we depend on. */
	SerializationContext[] dependentSCs;
	
	public SerializationReader(ThreadContext tc, SerializationContext sc,
			String[] sh, CodeRef[] cr, ByteBuffer orig) {
		this.tc = tc;
		this.sc = sc;
		this.sh = sh;
		this.cr = cr;
		this.orig = orig;
	}
	
	public void deserialize() {
		// Serialized data is always little endian.
		orig.order(ByteOrder.LITTLE_ENDIAN);
		
		// Split the input into the various segments.
		checkAndDisectInput();
		resolveDependencies();
		
		// Put code refs in place.
		for (int i = 0; i < cr.length; i++) {
			cr[i].isStaticCodeRef = true;
			cr[i].sc = sc;
			sc.root_codes.add(cr[i]);
		}
		
		// Handle any reposessions.
		if (reposTableEntries > 0)
			throw new RuntimeException("Reposession of SC objects NYI");
		
		// Stub all of the STables and objects.
		stubSTables();
		stubObjects();
		
		// Do first step of deserializing any closures.
		deserializeClosures();
		
		// Second passes over STables and objects.
		deserializeSTables();
		deserializeObjects();
		
		// Finish up contexts and closures.
		deserializeContexts();
		attachClosureOuters(cr.length);
		attachContextOuters();
	}
	
	/* Checks the header looks sane and all of the places it points to make sense.
	 * Also disects the input string into the tables and data segments and populates
	 * the reader data structure more fully. */
	private void checkAndDisectInput() {
		int prov_pos = 0;
		int data_len = orig.limit();

	    /* Ensure that we have enough space to read a version number and check it. */
	    if (data_len < 4)
	        throw new RuntimeException("Serialized data too short to read a version number (< 4 bytes)");
	    version = orig.getInt();
	    if (version != CURRENT_VERSION)
	    	throw new RuntimeException("Unknown serialization format version " + version);

	    /* Ensure that the data is at least as long as the header is expected to be. */
	    if (data_len < HEADER_SIZE)
	    	throw new RuntimeException("Serialized data shorter than header (< " + HEADER_SIZE + " bytes)");
	    prov_pos += HEADER_SIZE;

	    /* Get size and location of dependencies table. */
	    depTableOffset = orig.getInt();
	    depTableEntries = orig.getInt();
	    if (depTableOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (dependencies table starts before header ends)");
	    prov_pos += depTableEntries * DEP_TABLE_ENTRY_SIZE;
	    if (prov_pos > data_len)
	    	throw new RuntimeException("Corruption detected (dependencies table overruns end of data)");
	    
	    /* Get size and location of STables table. */
	    stTableOffset = orig.getInt();
	    stTableEntries = orig.getInt();
	    if (stTableOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (STables table starts before dependencies table ends)");
	    prov_pos += stTableEntries * STABLES_TABLE_ENTRY_SIZE;
	    if (prov_pos > data_len)
	    	throw new RuntimeException("Corruption detected (STables table overruns end of data)");

	    /* Get location of STables data. */
	    stDataOffset = orig.getInt();
	    if (stDataOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (STables data starts before STables table ends)");
	    prov_pos = stDataOffset;
	    if (stDataOffset > data_len)
	    	throw new RuntimeException("Corruption detected (STables data starts after end of data)");

	    /* Get size and location of objects table. */
	    objTableOffset = orig.getInt();
	    objTableEntries = orig.getInt();
	    if (objTableOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (objects table starts before STables data ends)");
	    prov_pos = objTableOffset + objTableEntries * OBJECTS_TABLE_ENTRY_SIZE;
	    if (prov_pos > data_len)
	    	throw new RuntimeException("Corruption detected (objects table overruns end of data)");

	    /* Get location of objects data. */
	    objDataOffset = orig.getInt();
	    if (objDataOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (objects data starts before objects table ends)");
	    prov_pos = objDataOffset;
	    if (prov_pos > data_len)
	    	throw new RuntimeException("Corruption detected (objects data starts after end of data)");
	    
	    /* Get size and location of closures table. */
	    closureTableOffset = orig.getInt();
	    closureTableEntries = orig.getInt();
	    if (closureTableOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (Closures table starts before objects data ends)");
	    prov_pos = closureTableOffset + closureTableEntries * CLOSURES_TABLE_ENTRY_SIZE;
	    if (prov_pos > data_len)
	    	throw new RuntimeException("Corruption detected (Closures table overruns end of data)");
	    
	    /* Get size and location of contexts table. */
	    contextTableOffset = orig.getInt();
	    contextTableEntries = orig.getInt();
	    if (contextTableOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (contexts table starts before closures table ends)");
	    prov_pos = contextTableOffset + contextTableEntries * CONTEXTS_TABLE_ENTRY_SIZE;
	    if (prov_pos > data_len)
	    	throw new RuntimeException("Corruption detected (contexts table overruns end of data)");
	    
	    /* Get location of contexts data. */
	    contextDataOffset = orig.getInt();
	    if (contextDataOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (contexts data starts before contexts table ends)");
	    prov_pos = contextDataOffset;
	    if (prov_pos > data_len)
	    	throw new RuntimeException("Corruption detected (contexts data starts after end of data)");

	    /* Get size and location of repossessions table. */
	    reposTableOffset = orig.getInt();
	    reposTableEntries = orig.getInt();
	    if (reposTableOffset < prov_pos)
	    	throw new RuntimeException("Corruption detected (repossessions table starts before contexts data ends)");
	    prov_pos = reposTableOffset + reposTableEntries * REPOS_TABLE_ENTRY_SIZE;
	    if (prov_pos > data_len)
	    	throw new RuntimeException("Corruption detected (repossessions table overruns end of data)");
	}
	
	private void resolveDependencies() {
		dependentSCs = new SerializationContext[depTableEntries];
		orig.position(depTableOffset);
		for (int i = 0; i < depTableEntries; i++) {
	        String handle = lookupString(orig.getInt());
	        String desc = lookupString(orig.getInt());
	        SerializationContext sc = tc.gc.scs.get(handle);
	        if (sc == null) {
	            if (desc == null)
	            	desc = handle;
	        	throw new RuntimeException(
	                "Missing or wrong version of dependency '" + desc + "'");
	        }
	        dependentSCs[i] = sc;
	    }
	}
	
	private void stubSTables() {
		for (int i = 0; i < stTableEntries; i++) {
			// Look up representation.
			orig.position(stTableOffset + i * STABLES_TABLE_ENTRY_SIZE);
			REPR repr = REPRRegistry.getByName(lookupString(orig.getInt()));
			
			// Create STable stub and add it to the root STable set.
			STable st = new STable(repr, null);
			st.sc = sc;
			sc.root_stables.add(st);
		}
	}
	
	private void stubObjects() {
		for (int i = 0; i < objTableEntries; i++) {
			// Look up STable.
			orig.position(objTableOffset + i * OBJECTS_TABLE_ENTRY_SIZE);
			STable st = lookupSTable(orig.getInt(), orig.getInt());
			
			// Now go by object flags.
			SixModelObject stubObj;
			orig.position(orig.position() + 4);
			int flags = orig.getInt();
			if (flags == 0) {
				// Type object.
				stubObj = new TypeObject();
				stubObj.st = st;
			}
			else {
				// Concrete object; defer to the REPR.
				stubObj = st.REPR.deserialize_stub(tc, st);
			}
			
			// Place object in SC root set.
			stubObj.sc = sc;
			sc.root_objects.add(stubObj);
		}
	}
	
	private void deserializeClosures() {
		for (int i = 0; i < closureTableEntries; i++) {
			/* Seek to the closure's table row. */
			orig.position(closureTableOffset + i * CLOSURES_TABLE_ENTRY_SIZE);
			
			/* Resolve the reference to the static code object. */
			CodeRef staticCode = readCodeRef();
			
			/* Clone it and add it to this SC's code refs list. */
			CodeRef closure = (CodeRef)staticCode.clone(tc);
			closure.sc = sc;
			sc.root_codes.add(closure);
			
			/* See if there's a code object we need to attach. */
			orig.position(orig.position() + 4);
			if (orig.getInt() != 0)
				closure.codeObject = readObjRef();
		}
	}

	private void deserializeSTables() {
		for (int i = 0; i < stTableEntries; i++) {
			// Seek to the right position in the data chunk.
			orig.position(stTableOffset + i * STABLES_TABLE_ENTRY_SIZE + 4);
			orig.position(stDataOffset + orig.getInt());
			
			// Get the STable we need to deserialize into.
			STable st = sc.root_stables.get(i); 
			
			// Read the HOW, WHAT and WHO.
		    st.HOW = readObjRef();
		    st.WHAT = readObjRef();
		    st.WHO = readRef();
		    
		    /* Method cache and v-table. */
		    SixModelObject methodCache = readRef();
		    if (methodCache != null)
		    	st.MethodCache = ((VMHashInstance)methodCache).storage;
		    st.VTable = new SixModelObject[(int)orig.getLong()];
		    for (int j = 0; j < st.VTable.length; j++)
		        st.VTable[j] = readRef();
		    
		    /* Type check cache. */
		    st.TypeCheckCache = new SixModelObject[(int)orig.getLong()];
		    for (int j = 0; j < st.TypeCheckCache.length; j++)
		    	st.TypeCheckCache[j] = readRef();
		    
		    /* Mode flags. */
		    st.ModeFlags = (int)orig.getLong();
		    
		    /* Boolification spec. */
		    if (orig.getLong() != 0) {
		        st.BoolificationSpec = new BoolificationSpec();
		        st.BoolificationSpec.Mode = (int)orig.getLong();
		    	st.BoolificationSpec.Method = readRef();
		    }

		    /* Container spec. */
		    if (orig.getLong() != 0) {
		        st.ContainerSpec = new ContainerSpec();
		        st.ContainerSpec.ClassHandle = readRef();
		        st.ContainerSpec.AttrName = lookupString(orig.getInt());
		        st.ContainerSpec.Hint = (int)orig.getLong();
		        st.ContainerSpec.FetchMethod = readRef();
		    }

		    /* If the REPR has a function to deserialize representation data, call it. */
		    st.REPR.deserialize_repr_data(tc, st, this);
		}
	}
	
	private void deserializeObjects() {
		for (int i = 0; i < objTableEntries; i++) {
			// Can skip if it's a type object.
			SixModelObject obj = sc.root_objects.get(i);
			if (obj instanceof TypeObject)
				continue;
			
			// Seek reader to object data offset.
			orig.position(objTableOffset + i * OBJECTS_TABLE_ENTRY_SIZE + 8);
			orig.position(objDataOffset + orig.getInt());
			
			// Complete the object's deserialization.
			obj.st.REPR.deserialize_finish(tc, obj.st, this, obj);
		}
	}
	
	private void deserializeContexts() {
		contexts = new CallFrame[contextTableEntries];
		for (int i = 0; i < contextTableEntries; i++) {
			/* Seek to the context's table row. */
			orig.position(contextTableOffset + i * CONTEXTS_TABLE_ENTRY_SIZE);
			
			/* Resolve the reference to the static code object this context is for. */
		    CodeRef staticCode = readCodeRef();
		    
		    /* Create a context and set it up. */
		    CallFrame ctx = new CallFrame();
		    ctx.tc = tc;
		    ctx.codeRef = staticCode;
		    StaticCodeInfo sci = staticCode.staticInfo;
		    if (sci.oLexicalNames != null)
	            ctx.oLex = sci.oLexStatic.clone();
	        if (sci.iLexicalNames != null)
	            ctx.iLex = new long[sci.iLexicalNames.length];
	        if (sci.nLexicalNames != null)
	            ctx.nLex = new double[sci.nLexicalNames.length];
	        if (sci.sLexicalNames != null)
	            ctx.sLex = new String[sci.sLexicalNames.length];
	        
		    /* Set context data read position, and set current read buffer to the correct thing. */
	        orig.position(contextDataOffset + orig.getInt());
		    
	        /* Deserialize lexicals. */
	        long syms = orig.getLong();
	        for (long j = 0; j < syms; j++) {
		        String sym = readStr();
		        Integer idx;
		        if ((idx = sci.oTryGetLexicalIdx(sym)) != null)
		        	ctx.oLex[idx] = readRef();
		        else if ((idx = sci.iTryGetLexicalIdx(sym)) != null)
		        	ctx.iLex[idx] = orig.getLong();
		        else if ((idx = sci.nTryGetLexicalIdx(sym)) != null)
		        	ctx.nLex[idx] = orig.getDouble();
		        else if ((idx = sci.sTryGetLexicalIdx(sym)) != null)
		        	ctx.sLex[idx] = readStr();
		        else
		        	throw new RuntimeException("Failed to deserialize lexical " + sym);
	        }
	        
		    /* Put context in place. */
		    contexts[i] = ctx;
		}
	}
	
	private void attachClosureOuters(int closureBaseIdx) {
		for (int i = 0; i < closureTableEntries; i++) {
			orig.position(closureTableOffset + i * CLOSURES_TABLE_ENTRY_SIZE + 8);
			int idx = orig.getInt();
			if (idx > 0)
				sc.root_codes.get(closureBaseIdx + i).outer = contexts[idx - 1];
	    }
	}
	
	private void attachContextOuters() {
		for (int i = 0; i < contextTableEntries; i++) {
			orig.position(contextTableOffset + i * CONTEXTS_TABLE_ENTRY_SIZE + 12);
			int idx = orig.getInt();
			if (idx > 0)
				contexts[i].outer = contexts[idx - 1];
		}
	}
	
	public SixModelObject readRef() {
		short discrim = orig.getShort();
		int elems;
		switch (discrim) {
		case REFVAR_NULL:
		case REFVAR_VM_NULL:
			return null;
		case REFVAR_OBJECT:
			return readObjRef();
		case REFVAR_VM_INT:
			SixModelObject BOOTInt = tc.gc.BOOTInt;
			SixModelObject iResult = BOOTInt.st.REPR.allocate(tc, BOOTInt.st);
			iResult.set_int(tc, orig.getLong());
			return iResult;
		case REFVAR_VM_NUM:
			SixModelObject BOOTNum = tc.gc.BOOTNum;
			SixModelObject nResult = BOOTNum.st.REPR.allocate(tc, BOOTNum.st);
			nResult.set_num(tc, orig.getDouble());
			return nResult;
		case REFVAR_VM_STR:
			SixModelObject BOOTStr = tc.gc.BOOTStr;
			SixModelObject sResult = BOOTStr.st.REPR.allocate(tc, BOOTStr.st);
			sResult.set_str(tc, lookupString(orig.getInt()));
			return sResult;
		case REFVAR_VM_ARR_VAR: {
			SixModelObject BOOTArray = tc.gc.BOOTArray;
			SixModelObject resArray = BOOTArray.st.REPR.allocate(tc, BOOTArray.st);
			resArray.initialize(tc);
			elems = orig.getInt();
			for (int i = 0; i < elems; i++)
				resArray.bind_pos_boxed(tc, i, readRef());
			resArray.sc = sc;
			return resArray;
		}
		case REFVAR_VM_ARR_STR: {
			SixModelObject BOOTStrArray = tc.gc.BOOTStrArray;
			SixModelObject resArray = BOOTStrArray.st.REPR.allocate(tc, BOOTStrArray.st);
			resArray.initialize(tc);
			elems = orig.getInt();
			for (int i = 0; i < elems; i++) {
				tc.native_s = readStr();
				resArray.bind_pos_native(tc, i);
			}
			resArray.sc = sc;
			return resArray;
		}
		case REFVAR_VM_ARR_INT: {
			SixModelObject BOOTIntArray = tc.gc.BOOTIntArray;
			SixModelObject resArray = BOOTIntArray.st.REPR.allocate(tc, BOOTIntArray.st);
			resArray.initialize(tc);
			elems = orig.getInt();
			for (int i = 0; i < elems; i++) {
				tc.native_i = readLong();
				resArray.bind_pos_native(tc, i);
			}
			resArray.sc = sc;
			return resArray;
		}
		case REFVAR_VM_HASH_STR_VAR:
			SixModelObject BOOTHash = tc.gc.BOOTHash;
			SixModelObject resHash = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);
			resHash.initialize(tc);
			elems = orig.getInt();
			for (int i = 0; i < elems; i++) {
				String key = lookupString(orig.getInt());
				resHash.bind_key_boxed(tc, key, readRef());
			}
			resHash.sc = sc;
			return resHash;
		case REFVAR_STATIC_CODEREF:
        case REFVAR_CLONED_CODEREF:
        	return readCodeRef();
		default:
			throw new RuntimeException("Unimplemented case of read_ref");
		}
	}
	
	public SixModelObject readObjRef() {
	    SerializationContext sc = locateSC(orig.getInt());
	    int idx = orig.getInt();
	    if (idx < 0 || idx >= sc.root_objects.size())
	    	throw new RuntimeException("Invalid SC object index " + idx);
	    return sc.root_objects.get(idx);
	}
	
	public STable readSTableRef() {
		return lookupSTable(orig.getInt(), orig.getInt());
	}
	
	public CodeRef readCodeRef() {
		SerializationContext sc = locateSC(orig.getInt());
    	int idx = orig.getInt();
	    if (idx < 0 || idx >= sc.root_codes.size())
	    	throw new RuntimeException("Invalid SC code index " + idx);
	    return sc.root_codes.get(idx);
	}
	
	public long readLong() {
		return orig.getLong();
	}
	
	public int readInt32() {
		return orig.getInt();
	}
	
	public double readDouble() {
		return orig.getDouble();
	}
	
	public String readStr() {
		return lookupString(orig.getInt());
	}

	private STable lookupSTable(int scIdx, int idx) {
	    SerializationContext sc = locateSC(scIdx);
	    if (idx < 0 || idx >= sc.root_stables.size())
	    	throw new RuntimeException("Invalid STable index (scIdx=" + scIdx + ",idx=" + idx + ")");
		return sc.root_stables.get(idx);
	}
	
	private SerializationContext locateSC(int scIdx) {
	    if (scIdx == 0)
	        return sc;
	    if (scIdx < 1 || scIdx > dependentSCs.length)
	        throw new RuntimeException("Invalid dependencies table index encountered (index " + scIdx + ")");
	    return dependentSCs[scIdx - 1];
	}
	
	private String lookupString(int idx) {
		if (idx >= sh.length)
	        throw new RuntimeException("Attempt to read past end of string heap (index " + idx + ")");
	    return sh[idx];
	}
}
