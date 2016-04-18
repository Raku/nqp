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
var STABLE_HAS_CONTAINER_SPEC           = 0x10;
var STABLE_HAS_INVOCATION_SPEC          = 0x20;
var STABLE_HAS_HLL_OWNER                = 0x40;

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

  var heap_loc = this.writer.stringIndex(str);

  if (!(heap_loc >= 0 && heap_loc <= STRING_HEAP_LOC_MAX)) {
    throw 'Serialization error: string offset ' + heap_loc + "can't be serialized";
  }

  if (heap_loc <= STRING_HEAP_LOC_PACKED_MAX) {
    this.U16(heap_loc);
  } else {
    this.U16((heap_loc >> STRING_HEAP_LOC_PACKED_SHIFT) |
        STRING_HEAP_LOC_PACKED_OVERFLOW);
    this.U16(heap_loc & STRING_HEAP_LOC_PACKED_LOW_MASK);
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
  var storage_needed;

  if (value >= -1 && value <= 126) {
    storage_needed = 1;
  } else {
    var abs_val = value < 0 ? -value - 1 : value;

    if (abs_val <= 0x7FF)
      storage_needed = 2;
    else if (abs_val <= 0x000000000007FFFF)
      storage_needed = 3;
    else if (abs_val <= 0x0000000007FFFFFF)
      storage_needed = 4;
    else if (abs_val <= 0x00000007FFFFFFFF)
      storage_needed = 5;
    else console.log('TODO serializing bigger integers');

    /* TODO bigger numbers */
    /*else if (abs_val <= 0x000007FFFFFFFFFFLL)
            storage_needed = 6;
        else if (abs_val <= 0x0007FFFFFFFFFFFFLL)
            storage_needed = 7;
        else if (abs_val <= 0x07FFFFFFFFFFFFFFLL)
            storage_needed = 8;
        else
            storage_needed = 9;*/
  }

  if (storage_needed == 1) {
    this.U8(0x80 | (value + 129));
  } else if (storage_needed == 9) {
    this.I8(0x00);
    this.I64(value);
  } else {
    var rest = storage_needed - 1;
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
  var sc_idx = ref[1];

  var packed = !obj.type_object_ ? OBJECTS_TABLE_ENTRY_IS_CONCRETE : 0;

  if (sc <= OBJECTS_TABLE_ENTRY_SC_MAX && sc_idx <= OBJECTS_TABLE_ENTRY_SC_IDX_MAX) {
    packed |= (sc << OBJECTS_TABLE_ENTRY_SC_SHIFT) | sc_idx;
  } else {
    packed |= OBJECTS_TABLE_ENTRY_SC_OVERFLOW << OBJECTS_TABLE_ENTRY_SC_SHIFT;
    this.objects_data.I32(sc);
    this.objects_data.I32(sc_idx);
  }

  /* Make objects table entry. */

  this.objects.I32(packed);
  this.objects.I32(this.objects_data.offset);



  /* Delegate to its serialization REPR function. */
  if (!obj.type_object_) {
    if (!obj._STable.REPR.serialize) {
      console.trace("don't know how to serialize");
    } else {
      obj._STable.REPR.serialize(this.objects_data, obj);
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
BinaryWriteCursor.prototype.idIdx = function(sc_id, idx) {
  if (sc_id <= PACKED_SC_MAX && idx <= PACKED_SC_IDX_MAX) {
    var packed = (sc_id << PACKED_SC_SHIFT) | (idx & PACKED_SC_IDX_MASK);
    this.I32(packed);
  } else {
    var packed = PACKED_SC_OVERFLOW << PACKED_SC_SHIFT;

    this.I32(packed);
    this.I32(sc_id);
    this.I32(idx);
  }
};

BinaryWriteCursor.prototype.objRef = function(ref) {
  var writer_sc = this.writer.sc;
  if (!ref._STable) {
    console.log(ref);
    console.trace("can't serialize this for sure");
    console.log(typeof ref);
    console.log(ref.code_ref);
    process.exit();
  }
  if (!ref._SC) {
    /* This object doesn't belong to an SC yet, so it must be serialized
     * as part of this compilation unit. Add it to the work list. */
    ref._SC = writer_sc;

    this.writer.sc.root_objects.push(ref);
  }

  var sc = ref._SC;
  if (!sc) {
    console.log('!sc', !ref._SC, ref._SC);
    console.trace('!sc');
    //process.exit();
  }
  /* Write SC index, then object index. */
  this.idIdx(this.writer.getSCId(sc), sc.root_objects.indexOf(ref));
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
      var idx = ref._SC.root_codes.indexOf(ref);
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
  this.stables.I32(this.stables_data.offset);

  /* Write HOW, WHAT and WHO. */

  if (!st.HOW) {
    console.log('!.HOW', st, st.HOW);
  }

  /* TODO lazy HOW loading */

  this.stables_data.objRef(st.HOW);
  this.stables_data.objRef(st.WHAT);
  this.stables_data.ref(st.WHO || null);

  /* Method cache*/
  if (st.method_cache) {
    var hash = new Hash();
    for (var key in st.method_cache) {
      hash.content.set(key, st.method_cache[key]);
    }
    this.stables_data.ref(hash);
  }
  else {
    this.stables_data.ref(null);
  }

  /* Type check cache. */
  var tcl = !st.type_check_cache ? 0 : st.type_check_cache.length;
  this.stables_data.varint(tcl);
  for (var i = 0; i < tcl; i++) {
    this.stables_data.ref(st.type_check_cache[i]);
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

  /* TODO */
  this.stables_data.U8(0);

  /* Boolification spec. */
  /* As this only needs 4 bits, also use the same byte to store various
     NULL/not-NULL flag bits. */

  /*TODO serialize boolifcation spec*/
  var flags;

  if (st.boolificationSpec) {
    var mode = st.boolificationSpec.mode;
    if (mode >= 0xF) {
      throw "Serialization error: boolification spec mode " + mode + " out of range and can't be serialized";
    }
    flags = mode;
  } else {
    flags = 0xF;
  }

  /*
  if (st->container_spec != NULL)
      flags |= STABLE_HAS_CONTAINER_SPEC;
  if (st->invocation_spec != NULL)
      flags |= STABLE_HAS_INVOCATION_SPEC;
  if (st->hll_owner != NULL)
      flags |= STABLE_HAS_HLL_OWNER;
  */

  this.stables_data.U8(flags);

  /* Boolification spec. */

  if (st.boolificationSpec) {
    this.stables_data.ref(st.boolificationSpec.method);
  }

  /*this.stables_data.writeInt(st.ContainerSpec == null ? 0 : 1);
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

  /* HLL info. */
  /*this.stables_data.str(st.hllOwner ? st.hllOwner.name : "");
    this.stables_data.I32(hllRole);
    writeStr(st.hllOwner == null ? "" : st.hllOwner.name);
    writeInt(st.hllRole);
    */

  /* TODO - HLL owner */

  //this.stables_data.str(null);

  // TODO debug_name
  this.stables_data.cstr(st.debug_name);

  /* Location of REPR data. */
  this.stables.I32(this.stables_data.offset);

  /* If the REPR has a function to serialize representation data, call it. */
  if (st.REPR.serialize_repr_data) {
    st.REPR.serialize_repr_data(st, this.stables_data);
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
  this.contexts_headers.I32(staticSCId);
  this.contexts_headers.I32(staticIdx);
  this.contexts_headers.I32(this.contexts_data.offset);

  /* See if there's any relevant outer context, and if so set it up to
   * be serialized. */
  if (ctx.outer != null) {
    this.contexts_headers.I32(this.getSerializedContextIdx(ctx.outer));
  } else {
    this.contexts_headers.I32(0);
  }



  var staticInfo = staticCodeRef.staticInfo;

  var lexicals = 0;
  for (var name in staticInfo) lexicals++;

  this.contexts_data.I64(lexicals);

  for (var name in staticInfo) {
    this.contexts_data.str(name);
    switch (staticInfo[name][0]) {
      case 0: // obj
        this.contexts_data.ref(ctx[name]);
        break;
      case 1: // int
        this.contexts_data.I64(ctx[name]);
        break;
      case 2: // num
        this.contexts_data.double(ctx[name]);
        break;
      case 3: // str
        this.contexts_data.str(ctx[name]);
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
  var staticCode = closure.staticInfo ? closure : closure.staticCode;
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
      this.writer.sc.root_objects.push(ref);
    }

    this.closures.I32(this.getSCId(codeObj._SC));
    this.closures.I32(codeObj._SC.root_objects.indexOf(codeObj));
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
  this.sc.root_codes.push(closure);
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
    var sTablesTodo = this.sc.root_stables.length;
    var objectsTodo = this.sc.root_objects.length;
    var contextsTodo = this.contexts.length;

    /* Reset todo flag - if we do some work we'll go round again as it
       * may have generated more. */
    workTodo = false;

    /* Serialize any STables on the todo list. */
    while (sTablesListPos < sTablesTodo) {
      this.serializeSTable(this.sc.root_stables[sTablesListPos]);
      sTablesListPos++;
      workTodo = true;
    }

    /* Serialize any objects on the todo list. */
    while (objectsListPos < objectsTodo) {
      this.serializeObject(this.sc.root_objects[objectsListPos]);
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
  this.stables_data = new BinaryWriteCursor(this);
  this.objects = new BinaryWriteCursor(this);
  this.objects_data = new BinaryWriteCursor(this);
  this.deps = new BinaryWriteCursor(this);
  this.closures = new BinaryWriteCursor(this);
  this.contexts_headers = new BinaryWriteCursor(this);
  this.contexts_data = new BinaryWriteCursor(this);
}

var HEADER_SIZE = 4 * 18;

SerializationWriter.prototype.header_I32 = function(value) {
  this.buffer.writeUInt32LE(value, this.header_offset);
  this.header_offset += 4;
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
    this.sc.root_stables.push(st);
  }

  return [this.getSCId(st._SC), st._SC.root_stables.indexOf(st)];
};


SerializationWriter.prototype.concatenateOutputs = function() {
  var output_size = 0;

  this.header_offset = 0;
  this.offset = HEADER_SIZE;

  /* Calculate total size. */
  output_size += HEADER_SIZE;
  output_size += this.stables.offset;
  output_size += this.stables_data.offset;
  output_size += this.objects.offset;
  output_size += this.objects_data.offset;
  output_size += this.deps.offset;
  output_size += this.closures.offset;
  output_size += this.contexts_data.offset;
  output_size += this.contexts_headers.offset;

  this.buffer = new Buffer(output_size);

  /* Write version into header. */
  this.header_I32(CURRENT_VERSION);

  /* Put dependencies table in place and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.dependentSCs.length);


  this.writeChunk(this.deps);

  /* Put STables table in place, and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.sc.root_stables.length);

  this.writeChunk(this.stables);

  /* Put STables data in place. */
  this.header_I32(this.offset);

  this.writeChunk(this.stables_data);

  /* Put objects table in place, and set location/rows in header. */

  this.header_I32(this.offset);
  this.header_I32(this.sc.root_objects.length);

  this.writeChunk(this.objects);

  /* Put objects data in place. */
  this.header_I32(this.offset);

  this.writeChunk(this.objects_data);

  /* Put closures table in place, and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.numClosures);

  this.writeChunk(this.closures);

  /* Put contexts table in place, and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.contexts.length);

  this.writeChunk(this.contexts_headers);

  /* Put contexts data in place. */
  this.header_I32(this.offset);

  this.writeChunk(this.contexts_data);

  /* Put repossessions table in place, and set location/rows in header. */
  this.header_I32(this.offset);
  this.header_I32(this.sc.rep_scs.length);


  //  /* Sanity check. */
  if (this.offset != output_size)
    throw 'Serialization sanity check failed: offset != output_size (' + offset + ' != ' + output_size + ')';

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
  return sc.root_objects[idx];
};

op.getobjsc = function(obj) {
  return obj._SC || null;
};

op.scgetobjidx = function(sc, obj) {
  var idx = sc.root_objects.indexOf(obj);
  if (idx < 0)
    throw 'Object does not exist in this SC';
  return idx;
};

op.setobjsc = function(obj, sc) {
  obj._SC = sc;
  return obj;
};

op.scsetcode = function(sc, idx, obj) {
  sc.root_codes[idx] = obj;
  obj._SC = sc;
  return obj;
};

exports.BinaryWriteCursor = BinaryWriteCursor;
