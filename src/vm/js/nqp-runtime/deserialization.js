// Serialization stubs
var op = {};
module.exports.op = op;

var reprs = require('./reprs.js');
var sixmodel = require('./sixmodel.js');
var SerializationContext = require('./serialization-context');
var __6MODEL_CORE__ = require('./bootstrap.js').core;
var Hash = require('./hash.js');


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
}


/** Clone the cursor */
BinaryCursor.prototype.clone = function() {
  return new BinaryCursor(this.buffer, this.offset, this.sh, this.sc);
};


/** Return a copy of a cursor at given offset */
BinaryCursor.prototype.at = function(offset) {
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
  return sc.deps[this.I32()].root_objects[this.I32()];
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
      return this.low + this.high * Math.pow(2, 32);
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
      return new SerializedCodeRef(this.I32(), this.I32());
    case 12:
      return new SerializedCodeRef(this.I32(), this.I32());
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
  console.log(STable);
  STable.WHO = this.variant();
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
  this.sc.deps = deps;


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


/** Read a 64bit integer */
BinaryCursor.prototype.I64 = function() {
  var low = this.buffer.readUInt32LE(this.offset);
  var high = this.buffer.readUInt32LE(this.offset + 4);
  var i = new Int64(high, low);
  this.offset += 8;
  return i.toNumber();
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

