
var op = {};
exports.op = op;

var CURRENT_VERSION = 15;
var OBJECTS_TABLE_ENTRY_SC_MASK     = 0x7FF;
var OBJECTS_TABLE_ENTRY_SC_IDX_MASK = 0x000FFFFF;
var OBJECTS_TABLE_ENTRY_SC_IDX_MAX  = 0x000FFFFF;
var OBJECTS_TABLE_ENTRY_SC_MAX      = 0x7FE;
var OBJECTS_TABLE_ENTRY_SC_SHIFT    = 20;
var OBJECTS_TABLE_ENTRY_SC_OVERFLOW = 0x7FF;
var OBJECTS_TABLE_ENTRY_IS_CONCRETE = 0x80000000;

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
        var nybble = value >> 8 * rest;
        /* All the other high bits should be the same as the top bit of the
           nybble we keep. Or we have a bug.  */

        console.assert((nybble >> 3) == 0
               || (nybble >> 3) == ~0);

        this.I8((rest << 4) | (nybble & 0xF));
        console.log("TODO - writing varints that take 2-8 bytes");
        //memcpy(buffer + offset, &value, rest);
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

  var packed = !obj._type_object ? OBJECTS_TABLE_ENTRY_IS_CONCRETE : 0;

  if (sc <= OBJECTS_TABLE_ENTRY_SC_MAX && sc_idx <= OBJECTS_TABLE_ENTRY_SC_IDX_MAX) {
      packed |= (sc << OBJECTS_TABLE_ENTRY_SC_SHIFT) | sc_idx;
  } else {
      packed |= OBJECTS_TABLE_ENTRY_SC_OVERFLOW << OBJECTS_TABLE_ENTRY_SC_SHIFT;
      this.objects_data.I32(sc);
      this.objects_data.I32(sc_idx);
  }

  /* Make objects table entry. */

  //write_int32(writer->root.objects_table, offset + 0, packed);
  //write_int32(writer->root.objects_table, offset + 4, writer->objects_data_offset);

  this.objects.I32(packed);
  this.objects.I32(this.objects_data.offset);



  /* Delegate to its serialization REPR function. */
  if (!obj._type_object && obj._STable.REPR.serialize) {
    obj._STable.REPR.serialize(this.objects_data, obj);
  }

  /* Make objects table entry. */
  /*this.objects.I32(sc);
  this.objects.I32(sc_idx);
  this.objects.I32(obj._type_object ? 0 : 1);*/
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

  this.deps.string(sc.handle);
  this.deps.string(sc.description);

  return this.dependentSCs.length; /* Deliberately index + 1. */
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
  var writer = new SerializationWriter(sc, sh);
  return writer.serialize();
};

op.scsetobj = function(sc, idx, obj) {
  sc.setObj(idx, obj);
  return obj;
};

op.scgetobj = function(sc, idx) {
  return sc.root_objects[idx];
};

op.setobjsc = function(obj, sc) {
  obj._SC = sc;
  return obj;
};

