/*
   This module contains deserialization support.
   Read doc/serialization_format.markdown,
       for a (partial) description of the serialization format.
*/

var Hash = require('./hash.js');
var CodeRef = require('./code_ref.js');
var reprs = require('./reprs.js');
var sixmodel = require('./sixmodel.js');
var Ctx = require('./ctx.js');
var Int64 = require('node-int64');
var Null = require('./null.js');
var SerializationContext = require('./serialization_context.js');


/** All the loaded serialization contexts using their unique IDs as keys */
var serialization_contexts = {};



/**
  We define a BinaryCursor class so we can read sequential things easily
  @constructor
*/
function BinaryCursor(buffer, offset, sh) {
  this.buffer = buffer;
  this.offset = offset;
  this.sh = sh;
}


/** Clone the cursor */
BinaryCursor.prototype.clone = function() {
  return new BinaryCursor(this.buffer, this.offset, this.sh);
};


/** Return a copy of a cursor at given offset */
BinaryCursor.prototype.at = function(offset) {
  return new BinaryCursor(this.buffer, offset, this.sh);
};


/** Read a given element a number of times */
BinaryCursor.prototype.times = function(count, cb) {
  var array = [];
  for (var i = 0; i < count; i++) {
    array.push(cb(this));
  }
  return array;
};


/** Read the serialization format header */
BinaryCursor.prototype.header = function() {
  var header = {
    version: this.I32()
  };

  if (header.version != 6) {
    throw 'Unsupported serialization format version: ' + header.version;
  }

  var deps_offset = this.I32();
  var deps_number = this.I32();


  header.dependencies = this.at(deps_offset).times(deps_number,
      function(cursor) { return [cursor.str(), cursor.str()]; });


  var STables_offset = this.I32();
  var STables_number = this.I32();
  var STables_data = this.I32();



  header.STables = this.at(STables_offset).times(STables_number,
      function(cursor) {
        return [cursor.str(), cursor.at(STables_data + cursor.I32()).STable(), cursor.at(STables_data + cursor.I32())];
      });

  var objects_offset = this.I32();
  var objects_number = this.I32();
  var objects_data = this.I32();
  header.objects =
      this.at(objects_offset).times(objects_number, function(cursor) {
    return cursor.objectEntry(objects_data);
  });

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

  return header;
};


/** Read an entry from the objects table */
BinaryCursor.prototype.objectEntry = function(objectsData) {
  return {
    STable: [this.I32(), this.I32()],
    data: this.at(objectsData + this.I32()),
    is_concrete: this.I32()
  };
};


BinaryCursor.prototype.staticCodeRef = function() {
  return {
    sc: this.I32(),
    index: this.I32()
  };
};


/** Read an entry from the closures table */
BinaryCursor.prototype.closureEntry = function() {
  var closure = {};
  closure.code_ref = this.staticCodeRef();
  closure.outer = this.I32();
  var has_code_object = this.I32();
  if (has_code_object) {
    closure.code_object = this.objRef();
  }
  return closure;
};


/** Read an entry from the context table */
BinaryCursor.prototype.contextEntry = function(contextsData) {
  return {
    code_ref: this.staticCodeRef(),
    data: this.at(contextsData + this.I32()),
    outer: this.I32()
  };
};


/** Read an entry from the STable table */
BinaryCursor.prototype.STable = function() {
  var STable = {};
  STable.HOW = this.objRef();
  STable.WHAT = this.objRef();
  STable.WHO = this.variant();
  STable.method_cache = this.variant();

  STable.vtable = [];
  var vtable_len = this.I64();
  for (var i = 0; i < vtable_len; i++) {
    STable.vtable.push(this.variant());
  }

  STable.type_check_cache = [];
  var type_check_cache_len = this.I64();
  for (var i = 0; i < type_check_cache_len; i++) {
    STable.type_check_cache.push(this.variant());
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

  STable.rest = this.clone();
  return STable;
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


/** Read an object reference */
BinaryCursor.prototype.objRef = function() {
  return new SerializedObjRef(this.I32(), this.I32());
};


/** Read an array of elements parsed by the callback */
BinaryCursor.prototype.array = function(readElem) {
  var elems = this.I32();
  var array = [];
  for (var i = 0; i < elems; i++) {
    array.push(readElem(this));
  }
  return new SerializedArray(array);
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
      return new SerializedValue(Null);
    case 4:
      return new SerializedInteger(this.I32(), this.I32());
    case 5:
      return new SerializedValue(this.double());
    case 6:
      return new SerializedValue(this.str());
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


/** Read a hash of variants */
BinaryCursor.prototype.hashOfVariants = function() {
  var elems = this.I32();
  var hash = new SerializedHashOfVariants();
  for (var i = 0; i < elems; i++) {
    var str = this.str();
    hash.hash[str] = this.variant();
  }
  return hash;
};


/** Read a String */
BinaryCursor.prototype.str = function() {
  return this.sh[this.I32()];
};


function SerializedInteger(low, high) {
  this.low = low;
  this.high = high;
}

SerializedInteger.prototype.deserialize = function() {
  //FIXME: negative
  return this.low + this.high * Math.pow(2, 32);
};
function SerializedValue(value) {
  this.value = value;
}
SerializedValue.prototype.deserialize = function() {
  return this.value;
};

function SerializedObjRef(sc, id) {
  this.sc = sc;
  this.id = id;
}
SerializedObjRef.prototype.deserialize = function(deps) {
  return deps[this.sc].root_objects[this.id];
};

function SerializedCodeRef(sc, id) {
  this.sc = sc;
  this.id = id;
}
SerializedCodeRef.prototype.deserialize = function(deps) {
  if (!deps[this.sc].root_codes[this.id]) {
    deps[this.sc].root_codes[this.id] = new CodeRef();
    deps[this.sc].root_codes[this.id].code = {code: 'Code not set yet (' + this.sc + ',' + this.id + ')'};
    deps[this.sc].root_codes[this.id].info = {code: 'Code not set yet (' + this.sc + ',' + this.id + ')'};
  }
  return deps[this.sc].root_codes[this.id];
};

function SerializedHashOfVariants() {
  this.hash = {};
}
SerializedHashOfVariants.prototype.deserialize = function(deps) {
  var ret = new Hash();
  for (var key in this.hash) {
    if (this.hash.hasOwnProperty(key)) {
      ret[key] = this.hash[key].deserialize(deps);
    }
  }
  return ret;
};
function SerializedArray(array) {
  this.array = array;
}
SerializedArray.prototype.deserialize = function(deps) {
  return this.array.map(function(elem) {return elem.deserialize(deps)});
};



function SerializationContext(objects, STables, code_refs) {
  this.root_objects = objects;
  this.root_stables = STables;
  this.root_codes = code_refs;
}

SerializationContext.prototype.deserializeClosures = function(start) {
  var j = start;
  for (var i in this.header.closures) {
    var closure = this.header.closures[i];
    var code_ref = this.deps[closure.code_ref.sc].root_codes[closure.code_ref.index];
    var context = this.contexts[closure.outer - 1];
    var gen = code_ref.static_info;
    assign_to_code_ref(this.root_codes, j, {code: gen.closure(context)});
    if (closure.code_object) {
      assign_to_code_ref(this.root_codes, j, {obj: closure.code_object.deserialize(this.deps)});
    }
    j++;
  }
};

SerializationContext.prototype.deserializeContexts = function() {
  this.contexts = [];
  for (var i in this.header.contexts) {
    var ctx = new Ctx(null, null);
    this.contexts.push(ctx);
    var context = this.header.contexts[i];
    var count = context.data.I64();
    for (var j = 0; j < count; j++) {
      var name = context.data.str();
      var code_ref = this.deps[context.code_ref.sc].root_codes[context.code_ref.index];
      if (!code_ref.static_info.vars.hasOwnProperty(name)) {
        throw 'unknown lexical in context: ' + name;
      }
      var type = code_ref.static_info.vars[name];
      switch (type) {
        case 0: // obj
          ctx[name] = context.data.variant().deserialize(this.deps);
          break;
        case 1: // int
          ctx[name] = context.data.I64();
          break;
        case 2: // num
          ctx[name] = context.data.double();
          break;
        case 3: // str
          ctx[name] = context.data.str();
          break;
        default:
          throw 'Unknown type of lexical ' + name + ': ' + type;
      }
    }
  }
};

function assign_to_code_ref(root_codes, i, attrs) {
  if (!root_codes[i]) root_codes[i] = new CodeRef();
  for (var attr in attrs) {
    root_codes[i][attr] = attrs[attr];
  }

  /* so we can get the code ref from the js function, needed for nqp::callercode */
  if (attrs.code) {
    attrs.code.code_ref = root_codes[i];
  }
}

exports.set_code_refs = function(root_codes, code_refs_data) {
  for (var i = 0; i < code_refs_data.length; i++) {
    var staticCtx = new Ctx(null, null);
    if (code_refs_data[i].setting) {
      staticCtx.get_setting(code_refs_data[i].setting);
    }
    if (code_refs_data[i].code_ref) {
      root_codes[i] = code_refs_data[i].code_ref;
    }

    assign_to_code_ref(root_codes, i, {
      code: code_refs_data[i].closure(staticCtx),
      static_info: {closure: code_refs_data[i].closure, vars: code_refs_data[i].vars},
      code_name: code_refs_data[i].name});
    root_codes[i].info = 'static code ref: ' + i;
  }
};

SerializationContext.prototype.update_code_ref = function(index, code_ref) {
  this.root_codes[index].code = code_ref;
  this.root_codes[index].info += ' updated';
  return code_ref;
};

function deserializeObjects(sc, header, sh, code_refs) {
  sc.root_codes = code_refs;
  var deps = [sc];
  for (var i in header.dependencies) {
    var dep = serialization_contexts[header.dependencies[i][0]];
    if (!dep) {
      console.log(
          "Missing dependencie, can't find serialization context handle:",
          header.dependencies[i][0],
          'desc:', header.dependencies[i][1]);
      process.exit();
    }
    deps.push(dep);
  }
  sc.deps = deps;

  for (var i in header.STables) {
    var repr = header.STables[i][0];
    if (!reprs[repr]) {
      throw 'Unknown REPR: ' + repr;
    }
    var REPR = new reprs[repr]();
    var HOW = null; /* We will fill that in later once objects are stubbed */
    sc.root_stables[i] = new sixmodel.STable(REPR, HOW);
    sc.root_stables[i]._SC = sc;
  }
  for (var i in header.objects) {
    var STable_for_obj =
        deps[header.objects[i].STable[0]].root_stables[header.objects[i].STable[1]];
    sc.root_objects[i] = new (STable_for_obj.obj_constructor)();
    sc.root_objects[i]._SC = sc;
  }
  for (var i in header.STables) {
    (function() {
      var method_cache = header.STables[i][1].method_cache.deserialize(deps);
      var proto = sc.root_stables[i].obj_constructor.prototype;
      proto._STable = sc.root_stables[i];
      proto._STable.HOW = header.STables[i][1].HOW.deserialize(deps);

      proto._STable.WHO = header.STables[i][1].WHO.deserialize(deps);
      proto._STable.WHAT = header.STables[i][1].WHAT.deserialize(deps);

      proto._STable.type_check_cache = header.STables[i][1].type_check_cache.map(
          function(v) {return v.deserialize(deps)});

      if (sc.root_stables[i].REPR.deserialize_repr_data) {
        sc.root_stables[i].REPR.deserialize_repr_data(
            header.STables[i][1].rest, deps, sc.root_stables[i]);
      }

      proto._STable.setMethodCache(method_cache);
    })();
  }

  for (var i in header.objects) {
    var STable_for_object =
        deps[header.objects[i].STable[0]].root_stables[header.objects[i].STable[1]];
    if (header.objects[i].is_concrete) {
      STable_for_object.REPR.deserialize_finish(
          sc.root_objects[i], header.objects[i].data, deps);
    } else {
      sixmodel.mark_as_type_object(sc.root_objects[i]);
    }
  }

  sc.header = header;

  return sc;
}
/*exports.deserialize = function(description, handle, sc, sh, code_refs) {
  var buffer = new Buffer(sc, 'base64');
  var header = (new BinaryCursor(buffer, 0, sh)).header();
  var sc = deserializeObjects(header, sh, code_refs);
  serialization_contexts[handle] = sc;
  return sc;
};*/

exports.deserialize_op = function(ctx, blob, sc, sh, code_refs, conflict) {
  var buffer = new Buffer(blob, 'base64');
  var header = (new BinaryCursor(buffer, 0, sh)).header();
  var numer_of_static_code_refs = code_refs.length;
  deserializeObjects(sc, header, sh, code_refs);
  serialization_contexts[sc.handle] = sc;
  sc.deserializeContexts();
  sc.deserializeClosures(numer_of_static_code_refs);
};


exports.sc = function(handle, index) {
  //HACK till we get proper serialization in the boostraped nqp
  if (handle == '?') return Null;
  if (!serialization_contexts[handle]) {
    console.log(handle, Object.keys(serialization_contexts));
  }
  return serialization_contexts[handle].root_objects[index];
};
exports.SC = SerializationContext;
exports.serialization_contexts = serialization_contexts;
