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
var constants = require('./constants.js');
var NQPArray = require('./array.js');

var containerSpecs = require('./container-specs.js');

var hll = require('./hll.js');


/** All the loaded serialization contexts using their unique IDs as keys */
var serializationContexts = SerializationContext.contexts;

module.exports.wval = function(handle, idx) {
  return serializationContexts[handle].rootObjects[idx];
};

op.deserialize = function(blob, sc, sh, codeRefs, conflict) {
  var buffer = new Buffer(blob, 'base64');
  sc.codeRefs = codeRefs.array;

  for (var i = 0; i < sc.codeRefs.length; i++) {
    sc.codeRefs[i].isStatic = true;
    sc.codeRefs[i]._SC = sc;
    sc.rootCodes.push(sc.codeRefs[i]);
  }

  sh = sh.array;
  var cursor = new BinaryCursor(buffer, 0, sh, sc);

  cursor.deserialize(sc);
};

op.createsc = function(handle) {
  return (serializationContexts[handle] = new SerializationContext(handle));
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
  return sc.rootObjects.length;
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
  return new NQPArray(array);
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
  var scIdx;

  if (sc == OBJECTS_TABLE_ENTRY_SC_OVERFLOW) {
    throw new Error('Objects Overflow NYI');
  } else {
    scIdx = packed & OBJECTS_TABLE_ENTRY_SC_IDX_MASK;
  }

  return {
    STable: [sc, scIdx],
    data: this.at(objectsData + offset),
    isConcrete: packed & OBJECTS_TABLE_ENTRY_IS_CONCRETE
  };
};

BinaryCursor.prototype.locateThing = function(thingType) {
  var packed;
  var scId;
  var index;
  var sc;

  const PACKED_SC_SHIFT = 20;
  const PACKED_SC_OVERFLOW = 0xfff;
  const PACKED_SC_IDX_MASK = 0x000fffff;

  packed = this.U32();
  scId = packed >>> PACKED_SC_SHIFT;
  index = packed & PACKED_SC_IDX_MASK;

  if (scId != PACKED_SC_OVERFLOW) {
    index = packed & PACKED_SC_IDX_MASK;
  } else {
    scId = this.I32();
    index = this.I32();
  }

  try {
    return this.sc.deps[scId][thingType][index];
  } catch (e) {
    console.log(this.sc.deps.length);
    console.log(e.toString(), scId, thingType, index);
    throw e;
  }
};


/**  */
BinaryCursor.prototype.objRef = function() {
  return this.locateThing('rootObjects');
};


/** Read a hash of variants */
BinaryCursor.prototype.hashOfVariants = function() {
  var elems = this.I32();
  var hash = new Hash();
  for (var i = 0; i < elems; i++) {
    var str = this.str();
    hash.content.set(str, this.variant());
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

  var shiftPlaces = 0;
  for (var i = 0; i < need; i++) {
    var byte = buffer.readUInt8(this.offset++);
    result |= (byte << shiftPlaces);
    shiftPlaces += 8;
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
      var codeRef = this.locateThing('codeRefs');
      if (!codeRef) {
        console.log('missing code ref while deserializing');
        console.log(this.sc.codeRefs);
      }
      return codeRef;
    default:
      console.trace('unknown variant');
      throw 'unknown variant: ' + type;
  }

};

var STABLE_BOOLIFICATION_SPEC_MODE_MASK = 0x0F;
var STABLE_HAS_CONTAINER_SPEC = 0x10;
var STABLE_HAS_INVOCATION_SPEC = 0x20;
var STABLE_HAS_HLL_OWNER = 0x40;


/** Read an entry from the STable table */
BinaryCursor.prototype.STable = function(STable) {
  STable.HOW = this.objRef();
  STable.WHAT = this.objRef();
  STable.WHO = this.variant();

  var methodCache = this.variant();

  if (methodCache instanceof Hash) {
    STable.setMethodCache(methodCache.$$toObject());
  }

  var typeCheckCache = [];
  var typeCheckCacheLen = this.varint();
  for (var i = 0; i < typeCheckCacheLen; i++) {
    typeCheckCache.push(this.variant());
  }

  if (typeCheckCache.length != 0) {
    STable.typeCheckCache = typeCheckCache;
  }

  STable.modeFlags = this.U8();

  var flags = this.U8();
  var boolificationMode = flags & 0xF;

  if (boolificationMode != 0xF) {
    var boolificationMethod = this.variant();
    STable.setboolspec(boolificationMode, boolificationMethod);
  }

  if (flags & STABLE_HAS_CONTAINER_SPEC) {
    var specType = this.str();
    STable.containerSpec = new containerSpecs[specType](STable);
    STable.containerSpec.deserialize(this);
  }

  if (flags & STABLE_HAS_INVOCATION_SPEC) {
    var classHandle = this.variant();
    var attrName = this.str();
    this.varint(); // hint
    var invocationHandler = this.variant();

    this.variant(); // md_class_handle
    this.str(); // md_cache_attr_name
    this.varint(); // md_cache_hint
    this.str(); // md_valid_attr_name
    this.varint(); // md_valid_hint

  }

  if (flags & STABLE_HAS_HLL_OWNER) {
    STable.hllOwner = hll.getHLL(this.str());
  }

  if (STable.modeFlags & constants.PARAMETRIC_TYPE) {
    STable.parameterizer = this.variant();

    if (!STable.parameterizerCache) {
      STable.parameterizerCache = [];
    }

  }

  if (STable.modeFlags & constants.PARAMETERIZED_TYPE) {
    STable.parametricType = this.variant();
    var count = this.varint();
    var params = [];
    for (var i = 0; i < count; i++) {
      params[i] = this.variant();
    }

    var ptable = STable.parametricType._STable;

    if (!ptable.parameterizerCache) {
      ptable.parameterizerCache = [];
    }

    STable.parameters = new NQPArray(params);

    ptable.parameterizerCache.push({type: STable.WHAT, params: params});
  }

  STable.debugName = this.cstr();

  if (STable.REPR.deserializeReprData) {
    STable.REPR.deserializeReprData(this.clone(), STable);
  }

  if (flags & STABLE_HAS_INVOCATION_SPEC) {
    STable.setinvokespec(classHandle, attrName, invocationHandler);
  }


};

BinaryCursor.prototype.staticCodeRef = function() {
  var staticCode = this.locateThing('codeRefs');
  if (!staticCode) {
    console.log('Code ref has an invalid static code');
  }
  return staticCode;
};

BinaryCursor.prototype.closureEntry = function() {
  var entry = {};
  var staticScId = this.I32();
  var staticIndex = this.I32();
  entry.staticCode = this.sc.deps[staticScId].codeRefs[staticIndex];
  entry.context = this.I32();
  var hasCodeObj = this.I32();
  if (hasCodeObj) {
    var objectScId = this.I32();
    var objectIndex = this.I32();
    entry.codeObj = this.sc.deps[objectScId].rootObjects[objectIndex];
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
  entry.staticCode = this.sc.deps[staticScId].codeRefs[staticIndex];
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

  if (version != 18) {
    throw 'Unsupported serialization format version: ' + version;
  }

  var depsOffset = this.I32();
  var depsNumber = this.I32();


  var dependencies = this.at(depsOffset).times(depsNumber,
      function(cursor) { return [cursor.str32(), cursor.str32()]; });

  var deps = [sc];
  this.sc.deps = deps;

  for (var i in dependencies) {
    var dep = serializationContexts[dependencies[i][0]];
    if (!dep) {
      //console.log(Object.keys(serializationContexts));
      console.log(
          "Missing dependencie, can't find serialization context handle:",
          dependencies[i][0],
          'desc:', dependencies[i][1]);
      process.exit();
    }
    deps.push(dep);
  }


  var STablesOffset = this.I32();
  var STablesNumber = this.I32();
  var STablesData = this.I32();

  var STables = this.at(STablesOffset).times(STablesNumber,
      function(cursor) {
        return [cursor.str32(), cursor.at(STablesData + cursor.I32()), cursor.at(STablesData + cursor.I32())];
      });


  var objectsOffset = this.I32();
  var objectsNumber = this.I32();
  var objectsData = this.I32();
  var objects = this.at(objectsOffset).times(objectsNumber, function(cursor) {
    return cursor.objectEntry(objectsData);
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
    sc.rootStables[i] = new sixmodel.STable(REPR, HOW);
    sc.rootStables[i]._SC = sc;
  }

  /* Stub objects */
  for (var i = 0; i < objects.length; i++) {
    var STableForObj =
        deps[objects[i].STable[0]].rootStables[objects[i].STable[1]];
    if (!STableForObj) {
      console.log('Missing stable', objects[i].STable[0], objects[i].STable[1], deps[objects[i].STable[0]].rootStables);
    }

    objects[i].isArray = objects[i].isConcrete && STableForObj.REPR.name == 'VMArray';
    objects[i].arrayRepr = STableForObj.REPR;

    if (objects[i].isArray) {
      sc.rootObjects[i] = new NQPArray([]);
    } else {
      sc.rootObjects[i] = objects[i].isConcrete ?
          new (STableForObj.objConstructor)() :
          STableForObj.createTypeObject();
      sc.rootObjects[i]._SC = sc;
    }
  }


  var closuresOffset = this.I32();
  var closuresNumber = this.I32();
  var closures = this.at(closuresOffset).times(closuresNumber, function(cursor) {
    return cursor.closureEntry();
  });

  var closuresBase = sc.codeRefs.length;
  for (var i = 0; i < closures.length; i++) {
    sc.codeRefs[closuresBase + i] = new CodeRef(closures[i].staticCode.name);
    if (closures[i].codeObj) sc.codeRefs[closuresBase + i].codeObj = closures[i].codeObj;
    closures[i].index = closuresBase + i;

    closures[i]._SC = sc;
    sc.rootCodes.push(closures[i]);
  }

  for (var i = 0; i < STables.length; i++) {
    STables[i][1].STable(sc.rootStables[i]);
  }

  /* Finish up objects */
  for (var i = 0; i < objects.length; i++) {
    if (objects[i].isArray) {
      var repr = objects[i].arrayRepr;
      repr.deserializeArray(sc.rootObjects[i], objects[i].data);
    } else if (objects[i].isConcrete) {
      var repr = sc.rootObjects[i]._STable.REPR;
      if (repr.deserializeFinish) {
        repr.deserializeFinish(sc.rootObjects[i], objects[i].data);
      }
    }
  }

  var contextsOffset = this.I32();
  var contextsNumber = this.I32();
  var contextsData = this.I32();
  var contexts = this.at(contextsOffset).times(contextsNumber, function(cursor) {
    return cursor.contextEntry(contextsData);
  });

  for (var i = 0; i < contexts.length; i++) {
    if (contexts[i].outer) contexts[contexts[i].outer - 1].inner.push(contexts[i]);
  }

  var noContextClosures = [];


  for (var i = 0; i < closures.length; i++) {
    if (closures[i].context) {
      contexts[closures[i].context - 1].closures.push(closures[i]);
    } else {
      noContextClosures.push(closures[i]);
    }
  }

  var code = noContextClosures.map(function(closure) {
    var type = closure.staticCode.asMethod ? 'method' : 'block';
    var codeRef = 'sc.codeRefs[' + closure.index + ']';

    return 'var ' + closure.staticCode.outerCtxVar + ' = null;\n' +
        'var $$codeRef = ' + codeRef + ';\n' +
        'sc.codeRefs[' + closure.index + '].' + type + '(' +
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
    mangledCuid = 'cuid' + cuid;
    cuids.push(mangledCuid + ' = CodeRef.cuids[\"' + cuid + '\"]');
  }

  var declareCuids = 'var ' + cuids.join(',') + ';\n';

  var prelude = ';\n';
  if (code) {
    /* TODO reduce accidental poisoning */
    /* TODO make cuids be in scope */
    var nqp = require('nqp-runtime');
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
  var outerCtx = 'null'; // TODO
  var callerCtx = 'null';
  var createCtx = 'var ' + context.staticCode.ctx + ' = new nqp.Ctx(' + outerCtx + ', ' + callerCtx + ');\n';
  var setVars = '';


  var lexicals = [];
  function addToData(value) {
    data.push(value);
    return 'data[' + (data.length - 1) + ']';
  }

  for (var name in context.lexicals) {
    var value = context.lexicals[name];
    var info = context.staticCode.staticInfo[name];

    var getData = 'data[' + (data.length - 1) + ']\n';
    if (info.length == 2) {
      setVars += ('var ' + info[1] + ' = ' + addToData(value) + '\n');
    } else {
      setVars += (context.staticCode.ctx + '[' + addToData(name) + '] = ' + addToData(value) + '\n');
    }
  }

  return '(function() {\n' +
      createCtx +
      setVars +
      context.inner.map(function(inner) {return this.contextToCode(inner, data)}).join('') +
      context.closures.map(function(closure) {
        var type = closure.staticCode.asMethod ? 'method' : 'block';
        var codeRef = 'sc.codeRefs[' + closure.index + ']';
        return 'var $$codeRef = ' + codeRef + ';\n' + codeRef + '.' + type + '(' +
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
var STRING_HEAP_LOC_PACKED_SHIFT = 16;


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


/** Read a C String */
BinaryCursor.prototype.cstr = function() {
  var len = this.varint();
  var str = this.buffer.slice(this.offset, len).toString('utf8');
  this.offset += len;
  return str;
};

BinaryCursor.prototype.str32 = function() {
  return this.sh[this.I32()];
};

exports.BinaryCursor = BinaryCursor;
