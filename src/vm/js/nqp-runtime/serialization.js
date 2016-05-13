var Hash = require('./hash.js');
var CodeRef = require('./code-ref.js');
var NQPInt = require('./nqp-int.js');
var Int64 = require('node-int64');
var NQPArray = require('./array.js');

var op = {};
exports.op = op;

var CURRENT_VERSION = 18;
var OBJECTS_TABLE_ENTRY_SC_MASK = 0x7FF;
var OBJECTS_TABLE_ENTRY_SC_IDX_MASK = 0x000FFFFF;
var OBJECTS_TABLE_ENTRY_SC_IDX_MAX = 0x000FFFFF;
var OBJECTS_TABLE_ENTRY_SC_MAX = 0x7FE;
var OBJECTS_TABLE_ENTRY_SC_SHIFT = 20;
var OBJECTS_TABLE_ENTRY_SC_OVERFLOW = 0x7FF;
var OBJECTS_TABLE_ENTRY_IS_CONCRETE = 0x80000000;

var STRING_HEAP_LOC_MAX = 0x7FFFFFFF;
var STRING_HEAP_LOC_PACKED_MAX = 0x00007FFF;
var STRING_HEAP_LOC_PACKED_OVERFLOW = 0x00008000;
var STRING_HEAP_LOC_PACKED_LOW_MASK = 0x0000FFFF;
var STRING_HEAP_LOC_PACKED_SHIFT = 16;

/* Possible reference types we can serialize. */
var REFVAR_NULL = 1;
var REFVAR_OBJECT = 2;
var REFVAR_VM_NULL = 3;
var REFVAR_VM_INT = 4;
var REFVAR_VM_NUM = 5;
var REFVAR_VM_STR = 6;
var REFVAR_VM_ARR_VAR = 7;
var REFVAR_VM_ARR_STR = 8;
var REFVAR_VM_ARR_INT = 9;
var REFVAR_VM_HASH_STR_VAR = 10;
var REFVAR_STATIC_CODEREF = 11;
var REFVAR_CLONED_CODEREF = 12;

var STABLE_BOOLIFICATION_SPEC_MODE_MASK = 0x0F;
var STABLE_HAS_CONTAINER_SPEC = 0x10;
var STABLE_HAS_INVOCATION_SPEC = 0x20;
var STABLE_HAS_HLL_OWNER = 0x40;

function BinaryWriteCursor(writer) {
  this.buffer = new Buffer(1024);
  this.writer = writer;
  this.offset = 0;
}

BinaryWriteCursor.prototype.growToHold = function(space) {
  if (this.offset + space > this.buffer.length) {
    var old = this.buffer;
    this.buffer = new Buffer(old.length * 2);
    old.copy(this.buffer);
  }
};

BinaryWriteCursor.prototype.str = function(str) {
  if (str === undefined) {
    console.trace('undefined string');
    str = '?';
  }

  var heapLoc = this.writer.stringIndex(str);

  if (!(heapLoc >= 0 && heapLoc <= STRING_HEAP_LOC_MAX)) {
    throw 'Serialization error: string offset ' + heapLoc + "can't be serialized";
  }

  if (heapLoc <= STRING_HEAP_LOC_PACKED_MAX) {
    this.U16(heapLoc);
  } else {
    this.U16((heapLoc >> STRING_HEAP_LOC_PACKED_SHIFT) |
        STRING_HEAP_LOC_PACKED_OVERFLOW);
    this.U16(heapLoc & STRING_HEAP_LOC_PACKED_LOW_MASK);
  }
};


/** Write a C String */
BinaryWriteCursor.prototype.cstr = function(string) {
  if (string === undefined) {
    this.varint(0);
  } else {
    this.varint(Buffer.byteLength(string));
    this.offset += this.buffer.write(string, this.offset);
  }
};

BinaryWriteCursor.prototype.str32 = function(str) {
  this.I32(this.writer.stringIndex(str));
};

/* Writing function for variable sized integers. Writes out a 64 bit value
   using between 1 and 9 bytes. */
BinaryWriteCursor.prototype.varint = function(value) {
  var storageNeeded;

  if (value >= -1 && value <= 126) {
    storageNeeded = 1;
  } else {
    var absVal = value < 0 ? -value - 1 : value;

    if (absVal <= 0x7FF)
      storageNeeded = 2;
    else if (absVal <= 0x000000000007FFFF)
      storageNeeded = 3;
    else if (absVal <= 0x0000000007FFFFFF)
      storageNeeded = 4;
    else if (absVal <= 0x00000007FFFFFFFF)
      storageNeeded = 5;
    else console.log('TODO serializing bigger integers');

    /* TODO bigger numbers */
    /*else if (absVal <= 0x000007FFFFFFFFFFLL)
            storageNeeded = 6;
        else if (absVal <= 0x0007FFFFFFFFFFFFLL)
            storageNeeded = 7;
        else if (absVal <= 0x07FFFFFFFFFFFFFFLL)
            storageNeeded = 8;
        else
            storageNeeded = 9;*/
  }

  if (storageNeeded == 1) {
    this.U8(0x80 | (value + 129));
  } else if (storageNeeded == 9) {
    this.I8(0x00);
    this.I64(value);
  } else {
    var rest = storageNeeded - 1;
    var nybble = rest == 4 ? 0 : value >> 8 * rest;

    /* All the other high bits should be the same as the top bit of the
           nybble we keep. Or we have a bug.  */

    console.assert((nybble >> 3) == 0 || (nybble >> 3) == ~0);

    this.I8((rest << 4) | (nybble & 0xF));

    var tmp = new Int64(value).toBuffer();
    this.growToHold(rest);
    for (var i = 0; i < rest; i++) {
      this.buffer[this.offset + i] = tmp[8 - (i + 1)];
    }

    this.offset += rest;
  }
};

SerializationWriter.prototype.stringIndex = function(str) {
  /* The first entry in the heap represents the null string */
  var idx = this.sh.indexOf(str);
  if (idx == -1) {
    this.sh.push(str);
    idx = this.sh.length - 1;
  }
  return idx;
};

BinaryWriteCursor.prototype.I8 = function(value) {
  this.growToHold(1);
  this.buffer.writeInt8(value, this.offset);
  this.offset += 1;
};

BinaryWriteCursor.prototype.U8 = function(value) {
  this.growToHold(1);
  this.buffer.writeUInt8(value, this.offset);
  this.offset += 1;
};

BinaryWriteCursor.prototype.U16 = function(value) {
  this.growToHold(2);
  this.buffer.writeUInt16LE(value, this.offset);
  this.offset += 2;
};


BinaryWriteCursor.prototype.I32 = function(value) {
  this.growToHold(4);
  this.buffer.writeInt32LE(value, this.offset);
  this.offset += 4;
};


/* TODO - numbers bigger than 32bit */
BinaryWriteCursor.prototype.I64 = function(value) {
  this.growToHold(8);
  this.buffer.writeInt32LE(value, this.offset);
  this.buffer.writeInt32LE(0, this.offset + 4);
  this.offset += 8;
};

BinaryWriteCursor.prototype.I16 = function(value) {
  this.growToHold(2);
  this.buffer.writeInt16LE(value, this.offset);
  this.offset += 2;
};

BinaryWriteCursor.prototype.double = function(value) {
  this.growToHold(8);
  this.buffer.writeDoubleLE(value, this.offset);
  this.offset += 8;
};

SerializationWriter.prototype.serializeObject = function(obj) {
  /* Get index of SC that holds the STable and its index. */
  if (!obj._STable) {
    console.log('obj:', obj.constructor.name, obj);
    console.trace("can't serialize");
    //process.exit();
  }
  var ref = this.getSTableRefInfo(obj._STable);
  var sc = ref[0];
  var scIdx = ref[1];

  var packed = !obj.typeObject_ ? OBJECTS_TABLE_ENTRY_IS_CONCRETE : 0;

  if (sc <= OBJECTS_TABLE_ENTRY_SC_MAX && scIdx <= OBJECTS_TABLE_ENTRY_SC_IDX_MAX) {
    packed |= (sc << OBJECTS_TABLE_ENTRY_SC_SHIFT) | scIdx;
  } else {
    packed |= OBJECTS_TABLE_ENTRY_SC_OVERFLOW << OBJECTS_TABLE_ENTRY_SC_SHIFT;
    this.objectsData.I32(sc);
    this.objectsData.I32(scIdx);
  }

  /* Make objects table entry. */

  this.objects.I32(packed);
  this.objects.I32(this.objectsData.offset);



  /* Delegate to its serialization REPR function. */
  if (!obj.typeObject_) {
    if (!obj._STable.REPR.serialize) {
      console.trace("don't know how to serialize");
    } else {
      obj._STable.REPR.serialize(this.objectsData, obj);
    }
  }
};

var PACKED_SC_IDX_MASK = 0x000FFFFF;
var PACKED_SC_MAX = 0xFFE;
var PACKED_SC_IDX_MAX = 0x000FFFFF;
var PACKED_SC_SHIFT = 20;
var PACKED_SC_OVERFLOW = 0xFFF;

/* Writes the ID, index pair that identifies an entry in a Serialization
   context. */
BinaryWriteCursor.prototype.idIdx = function(scId, idx) {
  if (scId <= PACKED_SC_MAX && idx <= PACKED_SC_IDX_MAX) {
    var packed = (scId << PACKED_SC_SHIFT) | (idx & PACKED_SC_IDX_MASK);
    this.I32(packed);
  } else {
    var packed = PACKED_SC_OVERFLOW << PACKED_SC_SHIFT;

    this.I32(packed);
    this.I32(scId);
    this.I32(idx);
  }
};

BinaryWriteCursor.prototype.objRef = function(ref) {
  var writerSc = this.writer.sc;
  if (!ref._STable) {
    console.log(ref);
    console.trace("can't serialize this for sure");
    console.log(typeof ref);
    console.log(ref.codeRef);
    process.exit();
  }
  if (!ref._SC) {
    /* This object doesn't belong to an SC yet, so it must be serialized
     * as part of this compilation unit. Add it to the work list. */
    ref._SC = writerSc;

    this.writer.sc.rootObjects.push(ref);
  }

  var sc = ref._SC;
  if (!sc) {
    console.log('!sc', !ref._SC, ref._SC);
    console.trace('!sc');
    //process.exit();
  }
  /* Write SC index, then object index. */
  this.idIdx(this.writer.getSCId(sc), sc.rootObjects.indexOf(ref));
};

BinaryWriteCursor.prototype.STableRef = function(STable) {
  var ref = this.writer.getSTableRefInfo(STable);
  this.idIdx(ref[0], ref[1]);
};

BinaryWriteCursor.prototype.ref = function(ref) {
  /* Work out what kind of thing we have and determine the discriminator. */
  //  cnsole.log('got to ref',value);
  var discrim = 0;

  if (ref == null) {
    discrim = REFVAR_VM_NULL;
  }
//  else if (ref.st.REPR instanceof IOHandle) {
//      /* Can't serialize handles. */
//      discrim = REFVAR_VM_NULL;
//  }
//  else if (ref.st.REPR instanceof CallCapture) {
//      /* This is a hack for Rakudo's sake; it keeps a CallCapture around in
//       * the lexpad, for no really good reason. */
//      discrim = REFVAR_VM_NULL;
//  }
//  else if (ref.st.REPR instanceof MultiCache) {
//      /* These are re-computed each time. */
//      discrim = REFVAR_VM_NULL;
//  }
  else if (ref instanceof NQPInt) {
    discrim = REFVAR_VM_INT;
  }
  else if (typeof ref == 'number') {
    discrim = REFVAR_VM_NUM;
  }
  else if (typeof ref == 'string') {
    discrim = REFVAR_VM_STR;
  }
  else if (ref instanceof NQPArray) {
    discrim = REFVAR_VM_ARR_VAR;
  }
//  else if (ref.st.WHAT == tc.gc.BOOTIntArray) {
//      discrim = REFVAR_VM_ARR_INT;
//  }
//  else if (ref.st.WHAT == tc.gc.BOOTStrArray) {
//      discrim = REFVAR_VM_ARR_STR;
//  }
  else if (ref instanceof Hash) {
    discrim = REFVAR_VM_HASH_STR_VAR;
  }
  else if (ref instanceof CodeRef || typeof ref == 'function') {
    //      console.log("serializing code ref");
    discrim = REFVAR_VM_NULL;
    if (ref._SC && ref.isStatic) {
      /* Static code reference. */
      discrim = REFVAR_STATIC_CODEREF;
    }
    else if (ref._SC) {
      /* Closure, but already seen and serialization already handled. */
      discrim = REFVAR_CLONED_CODEREF;
    }
    else {
      /* Closure but didn't see it yet. Take care of it serialization, which
           * gets it marked with this SC. Then it's just a normal code ref that
           * needs serializing. */
      this.writer.serializeClosure(ref);
      discrim = REFVAR_CLONED_CODEREF;
    }
  }
  else {
    /* Just a normal object, with no special serialization needs. */
    discrim = REFVAR_OBJECT;
  }


  this.I8(discrim);

  /* Now take appropriate action. */
  switch (discrim) {
    case REFVAR_NULL:
    case REFVAR_VM_NULL:
      /* Nothing to do for these. */
      break;
    case REFVAR_OBJECT:
      this.objRef(ref);
      break;
    case REFVAR_VM_INT:
      this.varint(ref.value);
      break;
    case REFVAR_VM_NUM:
      this.double(ref);
      //          writeNum(ref.get_num(tc));
      break;
    case REFVAR_VM_STR:
      this.str(ref);
      break;
    //      case REFVAR_VM_ARR_INT:
    //      case REFVAR_VM_ARR_STR:
    //          ref.st.REPR.serialize(tc, this, ref);
    case REFVAR_VM_ARR_VAR:
      this.varint(ref.array.length);
      for (var i = 0; i < ref.array.length; i++) {
        this.ref(ref.array[i]);
      }
      break;
    case REFVAR_VM_HASH_STR_VAR:
      var count = 0;
      this.I32(ref.$$elems());
      ref.content.forEach(function(value, key, map) {
        this.str(key);
        this.ref(value);
      }, this);
      break;
    case REFVAR_STATIC_CODEREF:
    case REFVAR_CLONED_CODEREF:
      var scId = this.writer.getSCId(ref._SC);
      var idx = ref._SC.rootCodes.indexOf(ref);
      if (idx == -1) {
        throw "can't write code ref";
      }
      this.idIdx(scId, idx);
      break;
    default:
      throw 'Serialization Error: Unimplemented object type: ' + discrim;
  }
};

/* This handles the serialization of an STable, and calls off to serialize
 * its representation data also. */

SerializationWriter.prototype.serializeSTable = function(st) {

  /* Make STables table entry. */
  this.stables.str32(st.REPR.constructor.name);
  this.stables.I32(this.stablesData.offset);

  /* Write HOW, WHAT and WHO. */

  if (!st.HOW) {
    console.log('!.HOW', st, st.HOW);
  }

  /* TODO lazy HOW loading */

  this.stablesData.objRef(st.HOW);
  this.stablesData.objRef(st.WHAT);
  this.stablesData.ref(st.WHO || null);

  /* Method cache*/
  if (st.methodCache) {
    var hash = new Hash();
    for (var key in st.methodCache) {
      hash.content.set(key, st.methodCache[key]);
    }
    this.stablesData.ref(hash);
  }
  else {
    this.stablesData.ref(null);
  }

  /* Type check cache. */
  var tcl = !st.typeCheckCache ? 0 : st.typeCheckCache.length;
  this.stablesData.varint(tcl);
  for (var i = 0; i < tcl; i++) {
    this.stablesData.ref(st.typeCheckCache[i]);
  }


  /* Mode flags.
     These are stored as MVMuint16, but currently only the bottom 6 bits are
     used. Whilst we could store these as 2 bytes, we don't actually gain any
     future-proofing from that, because if we start assigning meaning to
     currently unused bits, then we have to bump the serialisation version
     *anyway*. If we didn't, older readers would encounter files with the
     newly used bits, but ignore whatever semantics those bits were meant to
     convey, and hence show buggy behaviour. And if we're bumping the
     serialisation version, then we can increase the storage size.  */

  this.stablesData.U8(this.modeFlags);

  /* Boolification spec. */
  /* As this only needs 4 bits, also use the same byte to store various
     NULL/not-NULL flag bits. */

  /*TODO serialize boolifcation spec*/
  var flags;

  if (st.boolificationSpec) {
    var mode = st.boolificationSpec.mode;
    if (mode >= 0xF) {
      throw 'Serialization error: boolification spec mode ' + mode + " out of range and can't be serialized";
    }
    flags = mode;
  } else {
    flags = 0xF;
  }

  /*
  if (st->containerSpec != NULL)
      flags |= STABLE_HAS_CONTAINER_SPEC;
  */

  if (st.invocationSpec) {
    flags |= STABLE_HAS_INVOCATION_SPEC;
  }

  /*
  if (st->hll_owner != NULL)
      flags |= STABLE_HAS_HLL_OWNER;
  */

  this.stablesData.U8(flags);

  /* Boolification spec. */

  if (st.boolificationSpec) {
    this.stablesData.ref(st.boolificationSpec.method);
  }

  /*this.stablesData.writeInt(st.ContainerSpec == null ? 0 : 1);
    if (st.ContainerSpec != null) {
        writeStr(st.ContainerSpec.name());
        st.ContainerSpec.serialize(tc, st, this);
    }*/

  /* Invocation spec. */

  /*writeInt(st.InvocationSpec == null ? 0 : 1);
    if (st.InvocationSpec != null) {
        writeRef(st.InvocationSpec.ClassHandle);
        writeStr(st.InvocationSpec.AttrName);
        writeInt(st.InvocationSpec.Hint);
        writeRef(st.InvocationSpec.InvocationHandler);
    }*/

  if (st.invocationSpec) {
    /* cached stuff from the MoarVM backend is just ignored */
    this.stablesData.ref(st.invocationSpec.classHandle);
    this.stablesData.str(st.invocationSpec.attrName);
    this.stablesData.varint(0); // hint
    this.stablesData.ref(st.invocationSpec.invocationHandler);
    this.stablesData.ref(null); // md_class_handle
    this.stablesData.str(''); // md_cache_attr_name
    this.stablesData.varint(0); // md_cache_hint
    this.stablesData.str(''); // md_valid_attr_name
    this.stablesData.varint(0); // md_valid_hint
  }

  /* HLL info. */
  /*this.stablesData.str(st.hllOwner ? st.hllOwner.name : "");
    this.stablesData.I32(hllRole);
    writeStr(st.hllOwner == null ? "" : st.hllOwner.name);
    writeInt(st.hllRole);
    */

  /* TODO - HLL owner */

  //this.stablesData.str(null);

  // TODO debugName
  this.stablesData.cstr(st.debugName);

  /* Location of REPR data. */
  this.stables.I32(this.stablesData.offset);

  /* If the REPR has a function to serialize representation data, call it. */
  if (st.REPR.serializeReprData) {
    st.REPR.serializeReprData(st, this.stablesData);
  }

};


SerializationWriter.prototype.serializeContext = function(ctx) {
  /* Locate the static code ref this context points to. */
  var staticCodeRef = this.closureToStaticCodeRef(ctx.codeRef, true);
  var staticCodeSC = staticCodeRef._SC;
  if (staticCodeSC == null) {
    throw 'Serialization Error: closure outer is a code object not in an SC';
  }
  var staticSCId = this.getSCId(staticCodeSC);
  var staticIdx = staticCodeSC.getCodeIndex(staticCodeRef);


  /* Make contexts table entry. */
  this.contextsHeaders.I32(staticSCId);
  this.contextsHeaders.I32(staticIdx);
  this.contextsHeaders.I32(this.contextsData.offset);

  /* See if there's any relevant outer context, and if so set it up to
   * be serialized. */
  if (ctx.outer != null) {
    this.contextsHeaders.I32(this.getSerializedContextIdx(ctx.outer));
  } else {
    this.contextsHeaders.I32(0);
  }



  var staticInfo = staticCodeRef.staticInfo;

  var lexicals = 0;
  for (var name in staticInfo) lexicals++;

  this.contextsData.I64(lexicals);

  for (var name in staticInfo) {
    this.contextsData.str(name);
    switch (staticInfo[name][0]) {
      case 0: // obj
        this.contextsData.ref(ctx[name]);
        break;
      case 1: // int
        this.contextsData.I64(ctx[name]);
        break;
      case 2: // num
        this.contextsData.double(ctx[name]);
        break;
      case 3: // str
        this.contextsData.str(ctx[name]);
    }
  }
};

SerializationWriter.prototype.getSerializedContextIdx = function(ctx) {
  if (!ctx._SC) {
    /* Make sure we should chase a level down. */
    if (this.closureToStaticCodeRef(ctx.codeRef, false) == null) {
      return 0;
    }
    else {
      this.contexts.push(ctx);
      ctx._SC = this.sc;
      return this.contexts.length;
    }
  }
  else {
    if (ctx._SC != this.sc) {
      throw 'Serialization Error: reference to context outside of SC';
    }
    var idx = this.contexts.indexOf(ctx);
    if (idx < 0) {
      throw 'Serialization Error: could not locate outer context in current SC';
    }
    return idx + 1;
  }
};

SerializationWriter.prototype.getSerializedOuterContextIdx = function(closure) {
  if (closure.isCompilerStub)
    return 0;
  if (closure.outerCtx == null)
    return 0;
  return this.getSerializedContextIdx(closure.outerCtx);
};

SerializationWriter.prototype.closureToStaticCodeRef = function(closure, fatal) {
  var staticCode = closure.staticCode;
  if (!staticCode) {
    if (fatal) {
      throw 'Serialization Error: missing static code ref for closure';
    } else {
      return null;
    }
  }

  if (!staticCode._SC) {
    if (fatal) {
      throw 'Serialization Error: could not locate static code ref for closure';
    } else {
      return null;
    }
  }

  return staticCode;
};

SerializationWriter.prototype.serializeClosure = function(closure) {
  /* Locate the static code object. */
  var staticCodeRef = this.closureToStaticCodeRef(closure, true);
  var staticCodeSC = staticCodeRef._SC;

  /* Add an entry to the closures table. */
  var staticSCId = this.getSCId(staticCodeSC);
  var staticIdx = staticCodeSC.getCodeIndex(staticCodeRef);

  /* Get the index of the context (which will add it to the todo list if
   * needed). */
  var contextIdx = this.getSerializedOuterContextIdx(closure);

  this.closures.I32(staticSCId);
  this.closures.I32(staticIdx);
  this.closures.I32(contextIdx);


  /* Check if it has a static code object. */
  if (closure.codeObj) {
    var codeObj = closure.codeObj;
    this.closures.I32(1);

    if (!codeObj._SC) {
    }
    if (!codeObj._SC) {
      codeObj._SC = this.sc;
      this.writer.sc.rootObjects.push(ref);
    }

    this.closures.I32(this.getSCId(codeObj._SC));
    this.closures.I32(codeObj._SC.rootObjects.indexOf(codeObj));
  }
  else {
    this.closures.I32(0);
    this.closures.I32(0);
    this.closures.I32(0);
  }

  /* Increment count of closures in the table. */
  this.numClosures++;


  /* Add the closure to this SC, and mark it as as being in it. */
  closure._SC = this.sc;
  this.sc.rootCodes.push(closure);
};

/* This is the overall serialization loop. It keeps an index into the list of
 * STables and objects in the SC. As we discover new ones, they get added. We
 * finished when we've serialized everything. */
SerializationWriter.prototype.serializationLoop = function() {
  var workTodo = true;

  var sTablesListPos = 0;
  var objectsListPos = 0;
  var contextsListPos = 0;
  while (workTodo) {
    /* Current work list sizes. */
    var sTablesTodo = this.sc.rootStables.length;
    var objectsTodo = this.sc.rootObjects.length;
    var contextsTodo = this.contexts.length;

    /* Reset todo flag - if we do some work we'll go round again as it
       * may have generated more. */
    workTodo = false;

    /* Serialize any STables on the todo list. */
    while (sTablesListPos < sTablesTodo) {
      this.serializeSTable(this.sc.rootStables[sTablesListPos]);
      sTablesListPos++;
      workTodo = true;
    }

    /* Serialize any objects on the todo list. */
    while (objectsListPos < objectsTodo) {
      this.serializeObject(this.sc.rootObjects[objectsListPos]);
      objectsListPos++;
      workTodo = true;
    }

    /* Serialize any contexts on the todo list. */
    while (contextsListPos < contextsTodo) {
      this.serializeContext(this.contexts[contextsListPos]);
      contextsListPos++;
      workTodo = true;
    }
  }

  /* Finally, serialize repossessions table (this can't make any more
   * work, so is done as a separate step here at the end). */
  this.serializeRepossessions();
};


SerializationWriter.prototype.serializeRepossessions = function() {
  /* TODO */
};

function SerializationWriter(sc, sh) {
  this.dependentSCs = [];
  this.contexts = [];
  this.sc = sc;
  this.sh = sh;
  this.sh.push(null);
  this.numClosures = 0;

  this.stables = new BinaryWriteCursor(this);
  this.stablesData = new BinaryWriteCursor(this);
  this.objects = new BinaryWriteCursor(this);
  this.objectsData = new BinaryWriteCursor(this);
  this.deps = new BinaryWriteCursor(this);
  this.closures = new BinaryWriteCursor(this);
  this.contextsHeaders = new BinaryWriteCursor(this);
  this.contextsData = new BinaryWriteCursor(this);
}

var HEADER_SIZE = 4 * 18;

SerializationWriter.prototype.header_I32 = function(value) {
  this.buffer.writeUInt32LE(value, this.headerOffset);
  this.headerOffset += 4;
};

SerializationWriter.prototype.writeChunk = function(cursor) {
  if (cursor.offset) {
    cursor.buffer.copy(this.buffer, this.offset, 0, cursor.offset);
  }
  this.offset += cursor.offset;
};

SerializationWriter.prototype.getSCId = function(sc) {
  if (!sc) {
    console.trace('undefined sc');
    process.exit();
  }
  /* Easy if it's in the current SC. */
  if (sc == this.sc)
    return 0;

  /* If not, try to find it in our dependencies list. */
  var found = this.dependentSCs.indexOf(sc);
  if (found >= 0)
    return found + 1;

  /* Otherwise, need to add it to our dependencies list. */
  this.dependentSCs.push(sc);

  this.deps.str32(sc.handle);
  this.deps.str32(sc.description);

  return this.dependentSCs.length; /* Deliberately index + 1. */
};

SerializationWriter.prototype.getSTableRefInfo = function(st) {
  /* Add to this SC if needed. */
  if (!st._SC) {
    st._SC = this.sc;
    this.sc.rootStables.push(st);
  }

  return [this.getSCId(st._SC), st._SC.rootStables.indexOf(st)];
};


SerializationWriter.prototype.concatenateOutputs = function() {
  var outputSize = 0;

  this.headerOffset = 0;
  this.offset = HEADER_SIZE;

  /* Calculate total size. */
  outputSize += HEADER_SIZE;
  outputSize += this.stables.offset;
  outputSize += this.stablesData.offset;
  outputSize += this.objects.offset;
  outputSize += this.objectsData.offset;
  outputSize += this.deps.offset;
  outputSize += this.closures.offset;
  outputSize += this.contextsData.offset;
  outputSize += this.contextsHeaders.offset;

  this.buffer = new Buffer(outputSize);

  /* Write version into header. */
  this.header_I32(CURRENT_VERSION);

  /* Put dependencies table in place and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.dependentSCs.length);


  this.writeChunk(this.deps);

  /* Put STables table in place, and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.sc.rootStables.length);

  this.writeChunk(this.stables);

  /* Put STables data in place. */
  this.header_I32(this.offset);

  this.writeChunk(this.stablesData);

  /* Put objects table in place, and set location/rows in header. */

  this.header_I32(this.offset);
  this.header_I32(this.sc.rootObjects.length);

  this.writeChunk(this.objects);

  /* Put objects data in place. */
  this.header_I32(this.offset);

  this.writeChunk(this.objectsData);

  /* Put closures table in place, and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.numClosures);

  this.writeChunk(this.closures);

  /* Put contexts table in place, and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.contexts.length);

  this.writeChunk(this.contextsHeaders);

  /* Put contexts data in place. */
  this.header_I32(this.offset);

  this.writeChunk(this.contextsData);

  /* Put repossessions table in place, and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.sc.repScs.length);


  //  /* Sanity check. */
  if (this.offset != outputSize)
    throw 'Serialization sanity check failed: offset != outputSize (' + offset + ' != ' + outputSize + ')';

  return this.buffer.toString('base64');
};

SerializationWriter.prototype.serialize = function() {
  this.serializationLoop();
  return this.concatenateOutputs();
};

op.serialize = function(sc, sh) {
  var writer = new SerializationWriter(sc, sh.array);
  return writer.serialize();
};

op.scsetobj = function(sc, idx, obj) {
  sc.setObj(idx, obj);
  return obj;
};

op.scgetobj = function(sc, idx) {
  return sc.rootObjects[idx];
};

op.getobjsc = function(obj) {
  return obj._SC || null;
};

op.scgetobjidx = function(sc, obj) {
  var idx = sc.rootObjects.indexOf(obj);
  if (idx < 0)
    throw 'Object does not exist in this SC';
  return idx;
};

op.setobjsc = function(obj, sc) {
  obj._SC = sc;
  return obj;
};

op.scsetcode = function(sc, idx, obj) {
  sc.rootCodes[idx] = obj;
  obj._SC = sc;
  return obj;
};

op.neverrepossess = function(obj) {
  return obj;
};

exports.BinaryWriteCursor = BinaryWriteCursor;
