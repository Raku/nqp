// Serialization stubs
var op = {};
module.exports.op = op;

var reprs = require('./reprs.js');
var sixmodel = require('./sixmodel.js');
var SerializationContext = require('./serialization-context');
var __6MODEL_CORE__ = require('./bootstrap.js').core;
var Hash = require('./hash.js');
var Int64 = require('node-int64');


/** All the loaded serialization contexts using their unique IDs as keys */
var serialization_contexts = {'__6MODEL_CORE__': __6MODEL_CORE__};

module.exports.wval = function(handle, idx) {
  return serialization_contexts[handle].root_objects[idx];
};

op.deserialize = function(blob, sc, sh, cr, conflict) {
  var buffer = new Buffer(blob, 'base64');
  var cursor = new BinaryCursor(buffer, 0, sh, sc);

  cursor.deserialize(sc);
};

op.createsc = function(handle) {
  return (serialization_contexts[handle] = new SerializationContext(handle));
};

op.scsetdesc = function(sc, desc) {
  sc.description = desc;
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


/** Clone the cursor */
BinaryCursor.prototype.clone = function() {
  if (!this.sc) {
    console.trace("at", this.sc);
    process.exit();
  }
  return new BinaryCursor(this.buffer, this.offset, this.sh, this.sc);
};


/** Return a copy of a cursor at given offset */
BinaryCursor.prototype.at = function(offset) {
  if (!this.sc) {
    console.trace("at", this.sc);
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
  var elems = this.I32();
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
  return {
    STable: [this.I32(), this.I32()],
    data: this.at(objectsData + this.I32()),
    is_concrete: this.I32()
  };
};

/**  */
BinaryCursor.prototype.objRef = function() {
  return this.sc.deps[this.I32()].root_objects[this.I32()];
};

/** Read a hash of variants */
BinaryCursor.prototype.hashOfVariants = function() {
  var elems = this.I32();
  var hash = new Hash();
  for (var i = 0; i < elems; i++) {
    var str = this.str();
    hash[str] = this.variant();
  }
  return hash;
};

/** Read a variant reference */
BinaryCursor.prototype.variant = function() {
  var type = this.buffer.readUInt16LE(this.offset);
  this.offset += 2;
  switch (type) {
    case 2:
      return this.objRef();
    case 1:
    case 3:
      return null;
    case 4:
      //TODO: think about that
      //FIXME: negative
      var low = this.I32();
      var high = this.I32();
      return int64(high, low);
    case 5:
      return this.double();
    case 6:
      return this.str();
    case 7:
      return this.array(function(cursor) {return cursor.variant()});
    case 8:
      return this.array(function(cursor) {return cursor.str()});
    case 9:
      return this.array(function(cursor) {return cursor.I64()});
    case 10:
      return this.hashOfVariants(this);
    case 11:
      return new StubedCodeRef(this.I32(), this.I32());
    case 12:
      return new StubedCodeRef(this.I32(), this.I32());
    default:
      console.trace('unknown variant');
      throw 'unknown variant: ' + type;
  }

};

/** Read an entry from the STable table */
BinaryCursor.prototype.STable = function(STable) {
  var STable = {};
  STable.HOW = this.objRef();
  STable.WHAT = this.objRef();
  STable.WHO = this.variant();

  var method_cache = this.variant();

//  console.log("method_cache", method_cache);

  //TODO: maybe we should just get rid of the vtable
  var vtable = [];
  var vtable_len = this.I64();
  if (vtable_len != 0) {
    console.log("obsolete vtable leftovers", vtable_len);
    process.exit();
  }

  var type_check_cache = [];
  var type_check_cache_len = this.I64();
  for (var i = 0; i < type_check_cache_len; i++) {
    type_check_cache.push(this.variant());
  }

  STable.mode_flags = this.I64();

  var boolification_flag = this.flag64();
  if (boolification_flag) {
    STable.boolification_mode = this.I64();
    STable.boolification_method = this.variant();
  }
  var container_flag = this.flag64();
  if (container_flag) {
    STable.container_class_handle = this.variant();
    STable.container_attr_name = this.str();
    STable.container_hint = this.I64();
    STable.container_fetch_method = this.variant();
  }

  var invocation_spec = this.flag64();
  if (invocation_spec) {
    STable.invocation_class_handle = this.variant();
    STable.invocation_attr_name = this.str();
    STable.invocation_hint = this.I64();
    STable.invocation_handler = this.variant();
  }
}

/** Read a whole serialization context */
BinaryCursor.prototype.deserialize = function(sc) {


  var version = this.I32();

  this.sc = sc;

  if (version != 11) {
    throw 'Unsupported serialization format version: ' + version;
  }

  var deps_offset = this.I32();
  var deps_number = this.I32();


  var dependencies = this.at(deps_offset).times(deps_number,
      function(cursor) { return [cursor.str(), cursor.str()]; });

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
        return [cursor.str(), cursor.at(STables_data + cursor.I32()), cursor.at(STables_data + cursor.I32())];
  });


  var objects_offset = this.I32();
  var objects_number = this.I32();
  var objects_data = this.I32();
  var objects =
      this.at(objects_offset).times(objects_number, function(cursor) {
    return cursor.objectEntry(objects_data);
  });



  /* Stub STables */
  for (var i = 0; i < STables.length; i++) {
    var repr = STables[i][0];
    if (!reprs[repr]) {
      throw 'Unknown REPR: ' + repr;
    }
    var REPR = new reprs[repr]();
    var HOW = null; /* We will fill that in later once objects are stubbed */
    sc.root_stables[i] = new sixmodel.STable(REPR, HOW);
    sc.root_stables[i]._SC = sc;
  }

  /* Stub objects */
  for (var i = 0; i < objects.length; i++) {
    //console.log(objects[i]);
    //console.log(objects[i].STable);
    var STable_for_obj =
        deps[objects[i].STable[0]].root_stables[objects[i].STable[1]];
    sc.root_objects[i] = new (STable_for_obj.obj_constructor)();
    sc.root_objects[i]._SC = sc;
  }

  for (var i = 0; i < STables.length; i++) {
    STables[i][1].STable(sc.root_stables[i]);
  }

  /*
  var closures_offset = this.I32();
  var closures_number = this.I32();
  header.closures =
      this.at(closures_offset).times(closures_number, function(cursor) {
    return cursor.closureEntry();
  });


  var contexts_offset = this.I32();
  var contexts_number = this.I32();
  var contexts_data = this.I32();
  header.contexts =
      this.at(contexts_offset).times(contexts_number, function(cursor) {
    return cursor.contextEntry(contexts_data);
  });

  var repossessions_offset = this.I32();
  var repossessions_number = this.I32();
  */
};

/** Read a 32bit integer */
BinaryCursor.prototype.I32 = function() {
  var ret = this.buffer.readInt32LE(this.offset);
  this.offset += 4;
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

/** Read a String */
BinaryCursor.prototype.str = function() {
  return this.sh[this.I32()];
};

