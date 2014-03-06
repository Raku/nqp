var Hash = require('./hash.js');
var Null = require('./null.js');
var serialization = require('./serialization.js');
var CodeRef = require('./code_ref.js');
/* The current version of the serialization format. */
var CURRENT_VERSION = 6;

/* Various sizes (in bytes). */
var HEADER_SIZE = 4 * 16;
var STABLES_TABLE_ENTRY_SIZE = 12;
var OBJECTS_TABLE_ENTRY_SIZE = 16;
var CLOSURES_TABLE_ENTRY_SIZE = 24;
var CONTEXTS_TABLE_ENTRY_SIZE = 16;
var REPOS_TABLE_ENTRY_SIZE = 16;

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

BinaryWriteCursor.prototype.string = function(str) {
  if (str === undefined) {
    console.trace('undefined string');
    str = '?';
  }
  this.I32(this.writer.stringIndex(str));
};

BinaryWriteCursor.prototype.I32 = function(value) {
  this.growToHold(4);
  this.buffer.writeInt32LE(value, this.offset);
  this.offset += 4;
};

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
    ref._SC = 123;
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
  this.I32(this.writer.getSCId(sc));
  this.I32(sc.root_objects.indexOf(ref));
};

/* Writing function for references to STables. */
BinaryWriteCursor.prototype.STableRef = function(st) {
  var idxs = this.writer.getSTableRefInfo(st);
  this.I32(idxs[0]);
  this.I32(idxs[1]);
};

BinaryWriteCursor.prototype.ref = function(ref) {
  /* Work out what kind of thing we have and determine the discriminator. */
  //  cnsole.log('got to ref',value);
  var discrim = 0;

  if (ref == Null) {
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
//  else if (ref.st.WHAT == tc.gc.BOOTInt) {
//      discrim = REFVAR_VM_INT;
//  }
  else if (typeof ref == 'number') {
    discrim = REFVAR_VM_NUM;
  }
  else if (typeof ref == 'string') {
    discrim = REFVAR_VM_STR;
  }
  else if (ref instanceof Array) {
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
    if (ref._SC && ref.isStaticCodeRef) {
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

  this.I16(discrim);

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
      this.I64(ref);
      break;
    case REFVAR_VM_NUM:
      this.double(ref);
      //          writeNum(ref.get_num(tc));
      break;
    case REFVAR_VM_STR:
      this.string(ref);
      break;
    //      case REFVAR_VM_ARR_INT:
    //      case REFVAR_VM_ARR_STR:
    //          ref.st.REPR.serialize(tc, this, ref);
    case REFVAR_VM_ARR_VAR:
      this.I32(ref.length);
      for (var i = 0; i < ref.length; i++) {
        this.ref(ref[i]);
      }
      break;
    case REFVAR_VM_HASH_STR_VAR:
      var count = 0;
      for (var key in ref) {
        count++;
      }
      this.I32(count);
      for (var key in ref) {
        if (key === undefined) {
          console.log(ref);
        }
        this.string(key);
        this.ref(ref[key]);
      }
      break;
    case REFVAR_STATIC_CODEREF:
    case REFVAR_CLONED_CODEREF:
      var scId = this.writer.getSCId(ref._SC);
      var idx = ref._SC.root_codes.indexOf(ref);
      this.I32(scId);
      this.I32(idx);
      break;
    default:
      throw 'Serialization Error: Unimplemented object type: ' + discrim;
  }
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

SerializationWriter.prototype.concatenateOutputs = function() {
  var output_size = 0;
  this.header_offset = 0;
  this.offset = HEADER_SIZE;
  //
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


SerializationWriter.prototype.stringIndex = function(str) {
  /* The first entry in the heap represents the null string */
  var idx = this.sh.indexOf(str);
  if (idx == -1) {
    this.sh.push(str);
    idx = this.sh.length - 1;
  }
  return idx;
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

  this.deps.string(sc.handle);
  this.deps.string(sc.description);

  return this.dependentSCs.length; /* Deliberately index + 1. */
};

SerializationWriter.prototype.serializeSTable = function(st) {

  /* Make STables table entry. */
  this.stables.string(st.REPR.constructor.name);
  this.stables.I32(this.stables_data.offset);

  /* Write HOW, WHAT and WHO. */

  if (!st.HOW) {
    console.log('!.HOW', st, st.HOW);
  }
  this.stables_data.objRef(st.HOW);
  this.stables_data.objRef(st.WHAT);
  this.stables_data.ref(st.WHO || Null);

  /* Method cache and v-table. */
  if (st.method_cache) {
    this.stables_data.ref(st.method_cache);
  }
  else {
    this.stables_data.ref(Null);
  }

  var vtl = !st.VTable ? 0 : st.VTable.length;

  this.stables_data.I64(vtl);
  for (var i = 0; i < vtl; i++) {
    this.stables_data.ref(st.VTable[i]);
  }

  /* Type check cache. */
  var tcl = !st.type_check_cache ? 0 : st.type_check_cache.length;
  this.stables_data.I64(tcl);
  for (var i = 0; i < tcl; i++) {
    this.stables_data.ref(st.type_check_cache[i]);
  }

  /* Mode flags. */
  //    writeInt(st.ModeFlags);
  this.stables_data.I64(0);

  /* Boolification spec. */
  this.stables_data.I64(0);

  /*writeInt(st.BoolificationSpec == null ? 0 : 1);
    if (st.BoolificationSpec != null) {
        writeInt(st.BoolificationSpec.Mode);
        writeRef(st.BoolificationSpec.Method);
    }*/

  /* Container spec. */
  this.stables_data.I64(0);

  /*this.stables_data.writeInt(st.ContainerSpec == null ? 0 : 1);
    if (st.ContainerSpec != null) {
        writeStr(st.ContainerSpec.name());
        st.ContainerSpec.serialize(tc, st, this);
    }*/

  /* Invocation spec. */
  this.stables_data.I64(0);

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

  /* Location of REPR data. */
  this.stables.I32(this.stables_data.offset);

  /* If the REPR has a function to serialize representation data, call it. */
  if (st.REPR.serialize_repr_data) {
    st.REPR.serialize_repr_data(st, this.stables_data);
  }

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

SerializationWriter.prototype.attachStaticInfo = function(ctx, info) {
  do {
    ctx.static_info = info;
    info = info.outer;
    ctx = ctx.outer;
  } while (info && ctx);
};

SerializationWriter.prototype.getSerializedContextIdx = function(ctx, code_ref) {
  if (!ctx._SC) {
    /* Make sure we should chase a level down. */
    if (ctx.fake_static_ctx) {
      return 0;
    }
    else {
      this.attachStaticInfo(ctx, code_ref.static_info);
      this.contexts.push(ctx);
      ctx._SC = this._SC;
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
  if (closure.isCompilerStub) {
    return 0;
  }
  if (!closure.outer) {
    console.log('serializing a closure with no outer');
    return 0;
  }
  return this.getSerializedContextIdx(closure.outer, closure);
};

SerializationWriter.prototype.closureToStaticCodeRef = function(closure, fatal) {
  var staticCode = closure.static_coderef();
  if (!staticCode) {
    if (fatal) {
      throw 'Serialization Error: missing static code ref for closure ';
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


  /* Get the index of the context (which will add it to the todo list if
   * needed). */
  var contextIdx = this.getSerializedOuterContextIdx(closure);

  /* Add an entry to the closures table. */
  var staticSCId = this.getSCId(staticCodeSC);
  var staticIdx = staticCodeSC.root_codes.indexOf(staticCodeRef);
  this.closures.I32(staticSCId);
  this.closures.I32(staticIdx);
  this.closures.I32(contextIdx);

  /* Check if it has a static code object. */
  if (closure.obj) {
    this.closure.I32(1);
    console.log('serializing the code object');
    if (!closure.obj._SC) {
      closure.obj._SC = this.sc;
      console.log('pushing it');
      this.sc.root_objects.push(closure.obj);
    }
    console.log('serializing as', this.getSCId(closure.obj._SC), closure.obj._SC.root_objects.indexOf(closure.obj));
    this.I32(this.getSCId(closure.obj._SC));
    this.I32(closure.obj._SC.root_objects.indexOf(closure.obj));
  }
  else {
    this.closures.I32(0);
    //    this.closures.I32(0); //pad
    //    this.closures.I32(0); // pad
  }

  /* Increment count of closures in the table. */
  this.numClosures++;

  /* Add the closure to this SC, and mark it as as being in it. */
  this.sc.root_codes.push(closure);
  closure._SC = this.sc;
};

SerializationWriter.prototype.serializeContext = function(ctx) {

  /* Locate the static code ref this context points to. */
  var staticCodeRef = CodeRef.create_static_coderef(ctx.static_info);
  var staticSCId = this.getSCId(staticCodeRef._SC);
  var staticIdx = staticCodeRef._SC.root_codes.indexOf(staticCodeRef);



  /* Make contexts table entry. */

  this.contexts_headers.I32(staticSCId);
  this.contexts_headers.I32(staticIdx);
  this.contexts_headers.I32(this.contexts_data.offset);

  /* See if there's any relevant outer context, and if so set it up to
   * be serialized. */
  if (ctx.outer) {
    this.contexts_headers.I32(this.getSerializedContextIdx(ctx.outer));
  } else {
    this.contexts_headers.I32(0);
  }


  var numLexicals = 0;

  for (var name in ctx.static_info.vars) {
    if (ctx[name] !== undefined) {
      numLexicals++;
    }
  }
  this.contexts_data.I64(numLexicals);

  for (var name in ctx.static_info.vars) {
    if (ctx.static_info.vars[name] == 0 && ctx[name]) {
      this.contexts_data.string(name);
      this.contexts_data.ref(ctx[name]);
    }
  }


  /* Set up writer. */
  //currentBuffer = CONTEXT_DATA;

  /* Serialize lexicals. */
  /*int numLexicals = 0;
  numLexicals += cf.oLex == null ? 0 : cf.oLex.length;
  numLexicals += cf.iLex == null ? 0 : cf.iLex.length;
  numLexicals += cf.nLex == null ? 0 : cf.nLex.length;
  numLexicals += cf.sLex == null ? 0 : cf.sLex.length;
  writeInt(numLexicals);
  if (cf.oLex != null) {
      String[] names = cf.codeRef.staticInfo.oLexicalNames;
      for (int i = 0; i < cf.oLex.length; i++) {
          writeStr(names[i]);
          writeRef(cf.oLex[i]);
      }
  }
  if (cf.iLex != null) {
      String[] names = cf.codeRef.staticInfo.iLexicalNames;
      for (int i = 0; i < cf.iLex.length; i++) {
          writeStr(names[i]);
          writeInt(cf.iLex[i]);
      }
  }
  if (cf.nLex != null) {
      String[] names = cf.codeRef.staticInfo.nLexicalNames;
      for (int i = 0; i < cf.nLex.length; i++) {
          writeStr(names[i]);
          writeNum(cf.nLex[i]);
      }
  }
  if (cf.sLex != null) {
      String[] names = cf.codeRef.staticInfo.sLexicalNames;
      for (int i = 0; i < cf.sLex.length; i++) {
          writeStr(names[i]);
          writeStr(cf.sLex[i]);
      }
  }*/
};

SerializationWriter.prototype.getSTableRefInfo = function(st) {
  /* Add to this SC if needed. */
  if (!st._SC) {
    st._SC = this.sc;
    this.sc.root_stables.push(st);
  }

  /* Work out SC reference. */
  if (st.sc) {
    console.log(st);
  }
  return [this.getSCId(st._SC), st._SC.root_stables.indexOf(st)];
};

SerializationWriter.prototype.serializeObject = function(obj) {
  //console.log("serializing obj",obj,obj.constructor,obj._STable);
  /* Get index of SC that holds the STable and its index. */
  if (!obj._STable) {
    console.log('obj:', obj.constructor.name, obj);
    console.trace("can't serialize");
    //process.exit();
  }
  var ref = this.getSTableRefInfo(obj._STable);
  var sc = ref[0];
  var sc_idx = ref[1];

  /* Make objects table entry. */
  this.objects.I32(sc);
  this.objects.I32(sc_idx);
  this.objects.I32(this.objects_data.offset);
  this.objects.I32(obj._type_object ? 0 : 1);

  /* Delegate to its serialization REPR function. */
  if (!obj._type_object && obj._STable.REPR.serialize) {
    obj._STable.REPR.serialize(this.objects_data, obj);
  }
};

SerializationWriter.prototype.serializeRepossessions = function() {
};

SerializationWriter.prototype.serialize = function() {
  this.serializationLoop();
  return this.concatenateOutputs();
};


module.exports = SerializationWriter;
