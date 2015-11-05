// Serialization stubs
var op = {};
module.exports.op = op;

var reprs = require('./reprs.js');
var sixmodel = require('./sixmodel.js');
var SerializationContext = require('./serialization-context');
var __6MODEL_CORE__ = require('./bootstrap.js').core;
var Hash = require('./hash.js');
var Int64 = require('node-int64');
var CodeRef = require('./code-ref.js');


/** All the loaded serialization contexts using their unique IDs as keys */
var serialization_contexts = SerializationContext.contexts;

module.exports.wval = function(handle, idx) {
  return serialization_contexts[handle].root_objects[idx];
};

op.deserialize = function(blob, sc, sh, code_refs, conflict) {
  var buffer = new Buffer(blob, 'base64');
  sc.code_refs = code_refs;
  var cursor = new BinaryCursor(buffer, 0, sh, sc);

  cursor.deserialize(sc);
};

op.createsc = function(handle) {
  return (serialization_contexts[handle] = new SerializationContext(handle));
};

op.scsetdesc = function(sc, desc) {
  sc.description = desc;
  return desc;
};

op.scgetdesc = function(sc) {
  return sc.description;
};

op.scgethandle = function(sc) {
  return sc.handle;
};

op.scobjcount = function(sc) {
  return sc.root_objects.length;
};



/**
  We define a BinaryCursor class so we can read sequential things easily
  @constructor
*/
function BinaryCursor(buffer, offset, sh, sc) {
  this.buffer = buffer;
  this.offset = offset;
  this.sh = sh;
  this.sc = sc;
}

/* Export for unit testing*/
exports.BinaryCursor = BinaryCursor;


/** Clone the cursor */
BinaryCursor.prototype.clone = function() {
  if (!this.sc) {
    console.trace('at', this.sc);
    process.exit();
  }
  return new BinaryCursor(this.buffer, this.offset, this.sh, this.sc);
};


/** Return a copy of a cursor at given offset */
BinaryCursor.prototype.at = function(offset) {
  if (!this.sc) {
    console.trace('at', this.sc);
    process.exit();
  }
  return new BinaryCursor(this.buffer, offset, this.sh, this.sc);
};


/** Read a given element a number of times */
BinaryCursor.prototype.times = function(count, cb) {
  var array = [];
  for (var i = 0; i < count; i++) {
    array.push(cb(this));
  }
  return array;
};


/** Read an array of elements parsed by the callback */
BinaryCursor.prototype.array = function(readElem) {
  var elems = this.varint();
  var array = [];
  for (var i = 0; i < elems; i++) {
    array.push(readElem(this));
  }
  return array;
};

function StubedCodeRef(sc, id) {
  this.sc = sc;
  this.id = id;
}

function SerializedObjRef(sc, id) {
  this.sc = sc;
  this.id = id;
}


/** Read an entry from the objects table */
BinaryCursor.prototype.objectEntry = function(objectsData) {
  const OBJECTS_TABLE_ENTRY_SC_MASK = 0x7FF;
  const OBJECTS_TABLE_ENTRY_SC_IDX_MASK = 0x000FFFFF;
  const OBJECTS_TABLE_ENTRY_SC_MAX = 0x7FE;
  const OBJECTS_TABLE_ENTRY_SC_IDX_MAX = 0x000FFFFF;
  const OBJECTS_TABLE_ENTRY_SC_SHIFT = 20;
  const OBJECTS_TABLE_ENTRY_SC_OVERFLOW = 0x7FF;
  const OBJECTS_TABLE_ENTRY_IS_CONCRETE = 0x80000000;

  var packed = this.I32();
  var offset = this.I32();

  var sc = (packed >> OBJECTS_TABLE_ENTRY_SC_SHIFT) & OBJECTS_TABLE_ENTRY_SC_MASK;
  var sc_idx;

  if (sc == OBJECTS_TABLE_ENTRY_SC_OVERFLOW) {
    throw new Error('Objects Overflow NYI');
  } else {
    sc_idx = packed & OBJECTS_TABLE_ENTRY_SC_IDX_MASK;
  }

  return {
    STable: [sc, sc_idx],
    data: this.at(objectsData + offset),
    is_concrete: packed & OBJECTS_TABLE_ENTRY_IS_CONCRETE
  };
};

BinaryCursor.prototype.locate_thing = function(thing_type) {
  var packed;
  var sc_id;
  var index;
  var sc;

  const v15 = true;

  const PACKED_SC_SHIFT = 20;
  const PACKED_SC_OVERFLOW = 0xfff;
  const PACKED_SC_IDX_MASK = 0x000fffff;

  if (v15) {
    packed = this.U32();
    sc_id = packed >>> PACKED_SC_SHIFT;
    index = packed & PACKED_SC_IDX_MASK;

    if (sc_id != PACKED_SC_OVERFLOW) {
      index = packed & PACKED_SC_IDX_MASK;
    } else {
      sc_id = this.I32();
      index = this.I32();
    }
  } else {
    sc_id = this.I32();
    index = this.I32();
  }

  try {
    return this.sc.deps[sc_id][thing_type][index];
  } catch (e) {
    console.log(this.sc.deps.length);
    console.log(e.toString(), sc_id, thing_type, index);
    throw e;
  }
};


/**  */
BinaryCursor.prototype.objRef = function() {
  return this.locate_thing('root_objects');
};


/** Read a hash of variants */
BinaryCursor.prototype.hashOfVariants = function() {
  var elems = this.I32();
  var hash = new Hash();
  for (var i = 0; i < elems; i++) {
    var str = this.str();
    hash.content[str] = this.variant();
  }
  return hash;
};

/** Read a int of variable length */
/* TODO - make it work correctly for values bigger than 32bit integers*/
// XXX TODO - length checks
BinaryCursor.prototype.varint = function() {
  var result;
  var first;
  var need;
  var buffer = this.buffer;

  first = buffer.readUInt8(this.offset++);

  if (first & 0x80) {
    return first - 129;
  }

  need = first >> 4;

  if (!need) {
    // unrolled loop for optimization
    result =
        buffer.readUInt8(this.offset + 0) |
            buffer.readUInt8(this.offset + 1) << 8 |
            buffer.readUInt8(this.offset + 2) << 16 |
            buffer.readUInt8(this.offset + 3) << 24 |
            buffer.readUInt8(this.offset + 4) << 32 |
            buffer.readUInt8(this.offset + 5) << 40 |
            buffer.readUInt8(this.offset + 6) << 48 |
            buffer.readUInt8(this.offset + 7) << 56;
    this.offset += 8;

    return result;
  }

  result = (first & 0x0F) << 8 * need;

  var shift_places = 0;
  for (var i = 0; i < need; i++) {
    var byte = buffer.readUInt8(this.offset++);
    result |= (byte << shift_places);
    shift_places += 8;
  }

  if (need < 4) {
      result = result << (64 - 4 - 8 * need);
      result = result >> (64 - 4 - 8 * need);
  }

  return result;
};


/** Read a variant reference */
BinaryCursor.prototype.variant = function() {
  var type = this.I8();
  switch (type) {
    case 2:
      return this.objRef();
    case 1:
    case 3:
      return null;
    case 4:
      // TODO deserialize bigger integers then can fit into a 32bit number
      return this.varint();
    case 5:
      return this.double();
    case 6:
      return this.str();
    case 7:
      return this.array(function(cursor) {return cursor.variant()});
    case 8:
      return this.array(function(cursor) {return cursor.str()});
      /* TODO varints */
    /*    case 9:
      return this.array(function(cursor) {return cursor.I64()});*/
    case 10:
      return this.hashOfVariants(this);
    case 11:
    case 12:
      var codeRef = this.locate_thing('code_refs');
      if (!codeRef) {
        console.log('missing code ref while deserializing');
        console.log(this.sc.code_refs);
      }
      return codeRef;
    default:
      console.trace('unknown variant');
      throw 'unknown variant: ' + type;
  }

};

var STABLE_BOOLIFICATION_SPEC_MODE_MASK = 0x0F;
var STABLE_HAS_CONTAINER_SPEC           = 0x10;
var STABLE_HAS_INVOCATION_SPEC          = 0x20;
var STABLE_HAS_HLL_OWNER                = 0x40;

/** Read an entry from the STable table */
BinaryCursor.prototype.STable = function(STable) {
  STable.HOW = this.objRef();
  STable.WHAT = this.objRef();
  STable.WHO = this.variant();

  var method_cache = this.variant();

  if (method_cache instanceof Hash) {
    STable.setMethodCache(method_cache.content);
  }

  var type_check_cache = [];
  var type_check_cache_len = this.varint();
  for (var i = 0; i < type_check_cache_len; i++) {
    type_check_cache.push(this.variant());
  }
  STable.type_check_cache = type_check_cache;

  STable.mode_flags = this.U8();

  var flags = this.U8();
  var boolification_mode = flags & 0xF;

  if (boolification_mode != 0xF) {
    var boolification_method = this.variant();
    STable.setboolspec(boolification_mode, boolification_method);
  }

  if (flags & STABLE_HAS_CONTAINER_SPEC) {
    console.log("TODO container spec");
    /* TODO - container stuff */
   /* STable.container_class_handle = this.variant();
    STable.container_attr_name = this.str();
    STable.container_hint = this.I64();
    STable.container_fetch_method = this.variant();*/
  }

  if (flags & STABLE_HAS_INVOCATION_SPEC) {
    /* TODO */ 
    console.log("TODO invocation spec");
    /*
    STable.invocation_class_handle = this.variant();
    STable.invocation_attr_name = this.str();
    STable.invocation_hint = this.I64();
    STable.invocation_handler = this.variant();
    */
  }

  if (flags & STABLE_HAS_HLL_OWNER) {
    STable.hll_owner = this.str();
  }

  // TODO check for MVM_PARAMETRIC_TYPE mode_flags
  // TODO check for MVM_PARAMETRIC_TYPE mode_flags

  if (STable.REPR.deserialize_repr_data) {
    STable.REPR.deserialize_repr_data(this.clone(), STable);
  }


};

BinaryCursor.prototype.staticCodeRef = function() {
  var staticCode = this.locate_thing('code_refs');
  if (!staticCode) {
    console.log('Code ref has an invalid static code');
  }
  return staticCode;
};

BinaryCursor.prototype.closureEntry = function() {
  var entry = {};
  var staticScId = this.I32();
  var staticIndex = this.I32();
  entry.staticCode = this.sc.deps[staticScId].code_refs[staticIndex];
  //entry.staticCode = this.staticCodeRef();
  entry.context = this.I32();
  var hasCodeObj = this.I32();
  if (hasCodeObj) {
    //entry.codeObj = this.objRef();
    var objectScId = this.I32();
    var objectIndex = this.I32();
    entry.codeObj = this.sc.deps[objectScId].root_objects[objectIndex];
  } else {
    // we're packed along a 24-byte alignment
    this.I32();
    this.I32();
  }
  return entry;
};

BinaryCursor.prototype.contextEntry = function(contextsData) {
  var entry = {};
  var staticScId = this.I32();
  var staticIndex = this.I32();
  entry.staticCode = this.sc.deps[staticScId].code_refs[staticIndex];
  //entry.staticCode = this.staticCodeRef();
  var data = this.at(contextsData + this.I32());
  entry.outer = this.I32();
  entry.inner = [];
  entry.closures = [];

  var count = data.I64();
  var info = entry.staticCode.staticInfo;

  var lexicals = {};

  for (var i = 0; i < count; i++) {
    var name = data.str();

    if (!info[name]) {
      throw 'no static info for: ', name;
    }

    switch (info[name][0]) {
      case 0: // obj
        lexicals[name] = data.variant();
        break;
      case 1: // int
        lexicals[name] = data.I64();
        break;
      case 2: // num
        lexicals[name] = data.double();
        break;
      case 3: // str
        lexicals[name] = data.str();
    }
  }

  entry.lexicals = lexicals;

  return entry;
};


/** Read a whole serialization context */
BinaryCursor.prototype.deserialize = function(sc) {
  var version = this.I32();

  this.sc = sc;

  if (version != 16) {
    throw 'Unsupported serialization format version: ' + version;
  }

  var deps_offset = this.I32();
  var deps_number = this.I32();


  var dependencies = this.at(deps_offset).times(deps_number,
      function(cursor) { return [cursor.str32(), cursor.str32()]; });

  var deps = [sc];
  this.sc.deps = deps;

  for (var i in dependencies) {
    var dep = serialization_contexts[dependencies[i][0]];
    if (!dep) {
      //console.log(Object.keys(serialization_contexts));
      console.log(
          "Missing dependencie, can't find serialization context handle:",
          dependencies[i][0],
          'desc:', dependencies[i][1]);
      process.exit();
    }
    deps.push(dep);
  }


  var STables_offset = this.I32();
  var STables_number = this.I32();
  var STables_data = this.I32();

  var STables = this.at(STables_offset).times(STables_number,
      function(cursor) {
        return [cursor.str32(), cursor.at(STables_data + cursor.I32()), cursor.at(STables_data + cursor.I32())];
      });


  var objects_offset = this.I32();
  var objects_number = this.I32();
  var objects_data = this.I32();
  var objects = this.at(objects_offset).times(objects_number, function(cursor) {
    return cursor.objectEntry(objects_data);
  });



  /* Stub STables */
  for (var i = 0; i < STables.length; i++) {
    var repr = STables[i][0];
    if (!reprs[repr]) {
      throw 'Unknown REPR: ' + repr;
    }
    var REPR = new reprs[repr]();
    REPR.name = repr;
    var HOW = null; /* We will fill that in later once objects are stubbed */
    sc.root_stables[i] = new sixmodel.STable(REPR, HOW);
    sc.root_stables[i]._SC = sc;
  }

  /* Stub objects */
  for (var i = 0; i < objects.length; i++) {
    var STable_for_obj =
        deps[objects[i].STable[0]].root_stables[objects[i].STable[1]];
    if (!STable_for_obj) {
      console.log('Missing stable', objects[i].STable[0], objects[i].STable[1], deps[objects[i].STable[0]].root_stables);
    }

    objects[i].is_array = objects[i].is_concrete && STable_for_obj.REPR.name == 'VMArray';
    objects[i].array_repr = STable_for_obj.REPR;

    if (objects[i].is_array) {
      sc.root_objects[i] = [];
    } else {
      sc.root_objects[i] = objects[i].is_concrete
        ? new (STable_for_obj.obj_constructor)()
        : STable_for_obj.createTypeObject();
      sc.root_objects[i]._SC = sc;
    }
  }

  for (var i = 0; i < STables.length; i++) {
    STables[i][1].STable(sc.root_stables[i]);
  }

  var closures_offset = this.I32();
  var closures_number = this.I32();
  var closures = this.at(closures_offset).times(closures_number, function(cursor) {
    return cursor.closureEntry();
  });

  var closures_base = sc.code_refs.length;
  for (var i = 0; i < closures.length; i++) {
    sc.code_refs[closures_base + i] = new CodeRef(closures[i].staticCode.name);
    if (closures[i].codeObj) sc.code_refs[closures_base + i].codeObj = closures[i].codeObj;
    closures[i].index = closures_base + i;
  }

  /* Finish up objects */
  for (var i = 0; i < objects.length; i++) {
    if (objects[i].is_array) {
      var repr = objects[i].array_repr;
      repr.deserialize_array(sc.root_objects[i], objects[i].data);
    } else if (objects[i].is_concrete) {
      var repr = sc.root_objects[i]._STable.REPR;
      if (repr.deserialize_finish) {
        repr.deserialize_finish(sc.root_objects[i], objects[i].data);
      }
    }
  }

  var contexts_offset = this.I32();
  var contexts_number = this.I32();
  var contexts_data = this.I32();
  var contexts = this.at(contexts_offset).times(contexts_number, function(cursor) {
    return cursor.contextEntry(contexts_data);
  });

  for (var i = 0; i < contexts.length; i++) {
    if (contexts[i].outer) contexts[contexts[i].outer - 1].inner.push(contexts[i]);
  }

  var no_context_closures = [];


  for (var i = 0; i < closures.length; i++) {
    if (closures[i].context) {
      contexts[closures[i].context - 1].closures.push(closures[i]);
    } else {
      no_context_closures.push(closures[i]);
    }
  }

  var code = no_context_closures.map(function(closure) {
    return 'var ' + closure.staticCode.outerCtx + ' = null;\n' +
        'sc.code_refs[' + closure.index + '].block(' +
        closure.staticCode.closureTemplate +
        ');\n';
  }).join('');

  var data = [];
  for (var i = 0; i < contexts.length; i++) {
    if (contexts[i].outer == 0) {
      code += this.contextToCode(contexts[i], data) + '\n\n';
    }
  }

  var cuids = [];
  for (var cuid in CodeRef.cuids) {
    mangledCuid = cuid.replace(/\./g, '_');
    cuids.push(mangledCuid + ' = CodeRef.cuids[\"' + cuid + '\"]');
  }

  var declareCuids = 'var ' + cuids.join(',') + ';\n';

  var prelude = "var nqp = require('nqp-runtime');\n";
  if (code) {
    /* TODO reduce accidental poisoning */
    /* TODO make cuids be in scope */
    eval(prelude + declareCuids + code);
  }

  var reposTable = this.I32();
  var numRepos = this.I32();
  var paramInternsData = this.I32();
  var numParamInterns = this.I32();

  if (numParamInterns != 0) {
    // XXX do we need to care?
  }
};

BinaryCursor.prototype.contextToCode = function(context, data) {
  var outer_ctx = 'null'; // TODO
  var caller_ctx = 'null';
  var create_ctx = 'var ' + context.staticCode.ctx + ' = new nqp.Ctx(' + outer_ctx + ', ' + caller_ctx + ');\n';
  var set_vars = '';


  var lexicals = [];
  for (var name in context.lexicals) {
    data.push(context.lexicals[name]);
    set_vars += 'var ' + context.staticCode.staticInfo[name][1] + ' = data[' + (data.length - 1) + ']\n';
    console.l;
  }

  return '(function() {\n' +
      create_ctx +
      set_vars +
      context.inner.map(function(inner) {return this.contextToCode(inner, data)}).join('') +
      context.closures.map(function(closure) {
        return 'sc.code_refs[' + closure.index + '].block(' +
           closure.staticCode.closureTemplate +
           ');\n';
      }).join('') +
      '})();\n';
};


/** Read a 32bit integer */
BinaryCursor.prototype.I32 = function() {
  var ret = this.buffer.readInt32LE(this.offset);
  this.offset += 4;
  return ret;
};

BinaryCursor.prototype.U8 = function() {
  var ret = this.buffer.readUInt8(this.offset);
  this.offset += 1;
  return ret;
};

BinaryCursor.prototype.U16 = function() {
  var ret = this.buffer.readUInt16LE(this.offset);
  this.offset += 2;
  return ret;
};

BinaryCursor.prototype.U32 = function() {
  var ret = this.buffer.readUInt32LE(this.offset);
  this.offset += 4;
  return ret;
};

BinaryCursor.prototype.I8 = function() {
  var ret = this.buffer.readInt8(this.offset);
  this.offset += 1;
  return ret;
};


function int64(high, low) {
  return new Int64(high, low).toNumber();
}


/** Read a 64bit integer */
BinaryCursor.prototype.I64 = function() {
  var low = this.buffer.readUInt32LE(this.offset);
  var high = this.buffer.readUInt32LE(this.offset + 4);
  this.offset += 8;
  return int64(high, low);
};


/** Read a 64bit floating point number */
BinaryCursor.prototype.double = function() {
  var ret = this.buffer.readDoubleLE(this.offset);
  this.offset += 8;
  return ret;
};


/** Read a flag stored as a 64bit integer */
BinaryCursor.prototype.flag64 = function() {
  var low = this.buffer.readUInt32LE(this.offset);
  var high = this.buffer.readUInt32LE(this.offset + 4);
  this.offset += 8;
  if (high) {
    console.trace('here');
    throw 'the high part of a flag should be empty , got: ' + high;
  }
  if (low != 0 && low != 1) {
    console.trace('here');
    throw 'the low part of a flag should be 1 or 0, got: ' + low;
  }
  return low;
};

var STRING_HEAP_LOC_PACKED_OVERFLOW = 0x00008000;
var STRING_HEAP_LOC_PACKED_SHIFT    = 16;

/** Read a String */
BinaryCursor.prototype.str = function() {
  var offset = this.U16();
  if (offset & STRING_HEAP_LOC_PACKED_OVERFLOW) {
      offset ^= STRING_HEAP_LOC_PACKED_OVERFLOW;
      offset <<= STRING_HEAP_LOC_PACKED_SHIFT;
      offset |= this.U16();
  }
  if (!this.sh.hasOwnProperty(offset)) {
    throw "can't read str: " + offset;
  }
  return this.sh[offset];
};

BinaryCursor.prototype.str32 = function() {
  return this.sh[this.I32()];
};

exports.BinaryCursor = BinaryCursor;
