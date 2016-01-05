var sixmodel = require('./sixmodel.js');
var Hash = require('./hash.js');
var NQPInt = require('./nqp-int.js');

function basic_type_object_for(HOW) {
  var st = new sixmodel.STable(this, HOW);
  this._STable = st;

  var obj = st.createTypeObject();
  this._STable.WHAT = obj;

  return obj;
}

function basic_allocate(STable) {
  return new STable.obj_constructor();
}

function noop_compose(obj, repr_info) {
}


function basic_constructor(STable) {
  var obj_constructor = function() {};
  obj_constructor.prototype._STable = STable;
  return obj_constructor;
}

function P6opaque() {
}

P6opaque.prototype.create_obj_constructor = basic_constructor;

P6opaque.prototype.allocate = function(STable) {
  var obj = new STable.obj_constructor();

  /* TODO take classes into account when storing attributes */
  for (var i in this.name_to_index_mapping) {
    for (var j in this.name_to_index_mapping[i].slots) {
      var name = this.name_to_index_mapping[i].names[j];
      obj[name] = null;
    }
  }

  if (this.autovived) {
    for (var attr in this.autovived) {
      obj[attr] = this.autovived[attr];
    }
  }

  return obj;
};

P6opaque.prototype.calculate_autoviv = function() {
  var autovived = {};
  if (this.auto_viv_values) {
    for (var i in this.name_to_index_mapping) {
      for (var j in this.name_to_index_mapping[i].slots) {
        var name = this.name_to_index_mapping[i].names[j];
        var slot = this.name_to_index_mapping[i].slots[j];
        if (this.auto_viv_values[slot]) {
          if (!this.auto_viv_values[slot].type_object_) {
            console.log('autoviv', name, slot, this.auto_viv_values[slot]);
            throw 'We currently only implement autoviv with type object values';
          }
          /* TODO autoviving things that aren't typeobjects */
          /* TODO we need to store attributes better */
          autovived[name] = this.auto_viv_values[slot];
        } else if (this.flattened_stables[slot]) {
          if (this.flattened_stables[slot].REPR.flattened_default !== undefined) {
            autovived[name] = this.flattened_stables[slot].REPR.flattened_default;
          }
        }
      }
    }
  }

  if (Object.keys(autovived).length != 0) {
    this.autovived = autovived;
  }
};

P6opaque.prototype.deserialize_repr_data = function(cursor, STable) {
  this.deserialized = 1;
  var num_attributes = cursor.varint();
  this.flattened_stables = [];
  for (var i = 0; i < num_attributes; i++) {
    var not_null = cursor.varint();
    this.flattened_stables.push(not_null != 0 ? cursor.locate_thing('root_stables') : null);
  }
  this.mi = cursor.varint();
  var has_auto_viv_values = cursor.varint();
  if (has_auto_viv_values != 0) {
    this.auto_viv_values = [];
    for (var i = 0; i < num_attributes; i++) {
      this.auto_viv_values.push(cursor.variant());
    }
  }

  this.unbox_int_slot = cursor.varint();
  this.unbox_num_slot = cursor.varint();
  this.unbox_str_slot = cursor.varint();



  var has_unbox_slots = cursor.varint();

  if (has_unbox_slots != 0) {
    this.unbox_slots = [];
    for (var i = 0; i < num_attributes; i++) {
      var repr_id = cursor.varint();
      var slot = cursor.varint();
      this.unbox_slots.push({slot: slot, repr_id: repr_id});
    }
  }

  var num_classes = cursor.varint();
  this.name_to_index_mapping = [];

  var slots = [];

  for (var i = 0; i < num_classes; i++) {
    this.name_to_index_mapping[i] = {slots: [], names: [], class_key: cursor.variant()};

    var num_attrs = cursor.varint();

    for (var j = 0; j < num_attrs; j++) {
      var name = cursor.str();
      var slot = cursor.varint(); 

      this.name_to_index_mapping[i].names[j] = name;
      this.name_to_index_mapping[i].slots[j] = slot ;


      slots[slot] = name;
    }
  }


  this.calculate_autoviv();

  this.positional_delegate_slot = cursor.varint();
  this.associative_delegate_slot = cursor.varint();

  if (this.positional_delegate_slot != -1) {
    STable.setPositionalDelegate(slots[this.positional_delegate_slot]);
  }
  if (this.associative_delegate_slot != -1) {
    STable.setAssociativeDelegate(slots[this.associative_delegate_slot]);
  }

  /* TODO make auto viv values work */
};

P6opaque.prototype.serialize_repr_data = function(st, cursor) {
  var numAttrs = st.REPR.flattened_stables.length;
  cursor.varint(numAttrs);

  STARTING_OFFSET = cursor.offset;

  for (var i = 0; i < numAttrs; i++) {
    if (st.REPR.flattened_stables[i] == null) {
      cursor.varint(0);
    }
    else {
      cursor.varint(1);
      throw 'NYI';
      cursor.STableRef(st.REPR.flattened_stables[i]);
    }
  }

  cursor.varint(st.REPR.mi ? 1 : 0);


  //TODO
  //  if (st.REPR.auto_viv_values != null) {
  //  }
  //  else {
  //  }

  if (st.REPR.auto_viv_values) {
    cursor.varint(1);
    for (var i = 0; i < numAttrs; i++) {
      cursor.ref(st.REPR.auto_viv_values[i]);
    }
  } else {
    cursor.varint(0);
  }


  cursor.varint(st.REPR.unbox_int_slot);
  cursor.varint(st.REPR.unbox_str_slot);
  cursor.varint(st.REPR.unbox_str_slot);

  // TODO: Unbox slots
  cursor.varint(0);

  cursor.varint(this.name_to_index_mapping.length);
  for (var i = 0; i < this.name_to_index_mapping.length; i++) {
    cursor.ref(this.name_to_index_mapping[i].class_key);

    var num_attrs = this.name_to_index_mapping[i].names.length;

    cursor.varint(num_attrs);

    for (var j = 0; j < num_attrs; j++) {
      cursor.str(this.name_to_index_mapping[i].names[j]);
      cursor.varint(this.name_to_index_mapping[i].slots[j]);
    }
  }

  cursor.varint(this.positional_delegate_slot);
  cursor.varint(this.associative_delegate_slot);
};

P6opaque.prototype.deserialize_finish = function(object, data) {
  var attrs = [];

  var names = {};

  for (var i in this.name_to_index_mapping) {
    for (var j in this.name_to_index_mapping[i].slots) {
      var name = this.name_to_index_mapping[i].names[j];
      var slot = this.name_to_index_mapping[i].slots[j];
      // TODO take class key into account with attribute storage
      names[slot] = name;
    }
  }

  for (var i = 0; i < this.flattened_stables.length; i++) {
    if (this.flattened_stables[i]) {
      var STable = this.flattened_stables[i];
      var flattened_object = STable.REPR.allocate(STable);
      STable.REPR.deserialize_finish(flattened_object, data);

      attrs.push(flattened_object);
    } else {
      attrs.push(data.variant());
    }
  }

  for (var i in this.name_to_index_mapping) {
    for (var j in this.name_to_index_mapping[i].slots) {
      var name = this.name_to_index_mapping[i].names[j];
      var slot = this.name_to_index_mapping[i].slots[j];
      // TODO take class key into account with attribute storage
      object[name] = attrs[slot];
    }
  }
};

P6opaque.prototype.serialize = function(cursor, obj) {
  var flattened = obj._STable.REPR.flattened_stables;
  var nqp = require('nqp-runtime');
  if (!flattened) {
    throw 'Representation must be composed before it can be serialized';
  }

  var attrs = [];

  var names = [];

  for (var i in this.name_to_index_mapping) {
    for (var j in this.name_to_index_mapping[i].slots) {
      var name = this.name_to_index_mapping[i].names[j];
      var slot = this.name_to_index_mapping[i].slots[j];

      // TODO take class key into account with attribute storage
      attrs[slot] = obj[name];
      names[slot] = name;
    }
  }

  for (var i = 0; i < flattened.length; i++) {
    if (flattened[i] == null || !flattened[i]) {
      // TODO - think about what happens when we get an undefined value here
      cursor.ref(attrs[i]);
    }
    else {
      // HACK different kinds of numbers etc.
      var attr = typeof attrs[i] == 'object' ? attrs[i] : {value: attrs[i]}; // HACK - think if that's a correct way of serializing a native attribute
      this.flattened_stables[i].REPR.serialize(cursor, attr);
    }
  }
};

P6opaque.prototype.type_object_for = basic_type_object_for;


P6opaque.prototype.change_type = function(obj, new_type) {
  // TODO some sanity checks for the new mro being a subset and new_type being also a P6opaque
  // HACK usage of __proto__ which is not fully portable and might interfere with the optimizer
  obj.__proto__ = new_type._STable.obj_constructor.prototype;
};


P6opaque.prototype.compose = function(STable, repr_info_hash) {
  // TODO

  /* Get attribute part of the protocol from the hash. */
  var repr_info = repr_info_hash.content.get('attribute');

  /* Go through MRO and find all classes with attributes and build up
   * mapping info hashes. Note, reverse order so indexes will match
   * those in parent types. */

  this.unbox_int_slot = -1;
  this.unbox_num_slot = -1;
  this.unbox_str_slot = -1;

  this.positional_delegate_slot = -1;
  this.associative_delegate_slot = -1;

  var curAttr = 0;
  /*
  List<SixModelObject> autoVivs = new ArrayList<SixModelObject>();
  List<AttrInfo> attrInfoList = new ArrayList<AttrInfo>();
  long mroLength = repr_info.elems(tc);
  */
  this.name_to_index_mapping = [];
  this.flattened_stables = [];
  var mi = false;

  this.auto_viv_values = [];

  for (var i = repr_info.length - 1; i >= 0; i--) {
    var entry = repr_info[i];
    var type = entry[0];
    var attrs = entry[1];
    var parents = entry[2];

    /* If it has any attributes, give them each indexes and put them
       * in the list to add to the layout. */
    var numAttrs = attrs.length;
    if (numAttrs > 0) {
      var names = [];
      var slots = [];

      for (var j = 0; j < numAttrs; j++) {
        var attr = attrs[j].content;

        /* old boxing method generation */
        if (attr.get('box_target')) {
          attr.get('type')._STable.REPR.generateBoxingMethods(this, attr);
        }

        /* TODO */
        //              if (attrType == Null)
        //                  attrType = tc.gc.KnowHOW;

        slots.push(curAttr);
        names.push(attr.get('name'));

        /*              AttrInfo info = new AttrInfo();

              info.st = attrType.st;*/

        this.flattened_stables.push(null);

        if (attr.get('positional_delegate')) {
          this.positional_delegate_slot = curAttr;
          this._STable.setPositionalDelegate(attr.get('name'));
        }

        if (attr.get('associative_delegate')) {
          this.associative_delegate_slot = curAttr;
          this._STable.setAssociativeDelegate(attr.get('name'));
        }

        /* TODO think if we want to flatten some things */
        /*if (attrType.st.REPR.get_storage_spec(tc, attrType.st).inlineable == StorageSpec.INLINED)
                  flattenedSTables.add(attrType.st);
              else
                  flattenedSTables.add(null);*/

        if (attr.get('auto_viv_container')) {
          this.auto_viv_values[curAttr] = attr.get('auto_viv_container');
        }

        /* info.boxTarget = attrHash.exists_key(tc, "box_target") != 0;
              SixModelObject autoViv = attrHash.at_key_boxed(tc, "auto_viv_container");
              autoVivs.add(autoViv);
              if (autoViv != null)
                  info.hasAutoVivContainer = true;
              info.posDelegate = attrHash.exists_key(tc, "positional_delegate") != 0;
              info.assDelegate = attrHash.exists_key(tc, "associative_delegate") != 0;
              attrInfoList.add(info);*/

        /* TODO
              if (info.boxTarget) {
                  switch (info.st.REPR.get_storage_spec(tc, info.st).boxed_primitive) {
                  case StorageSpec.BP_INT:
                      ((P6OpaqueREPRData)st.REPRData).unboxIntSlot = curAttr;
                      break;
                  case StorageSpec.BP_NUM:
                      ((P6OpaqueREPRData)st.REPRData).unboxNumSlot = curAttr;
                      break;
                  case StorageSpec.BP_STR:
                      ((P6OpaqueREPRData)st.REPRData).unboxStrSlot = curAttr;
                      break;
                  }
              }*/
        curAttr++;
      }
      this.name_to_index_mapping.push({class_key: type, slots: slots, names: names});
    }

    /* Multiple parents means it's multiple inheritance. */
    if (parents.length > 1) {
      mi = true;
    }
  }

  /* Populate some REPR data. */
  /*((P6OpaqueREPRData)st.REPRData).classHandles = classHandles.toArray(new SixModelObject[0]);
  ((P6OpaqueREPRData)st.REPRData).nameToHintMap = attrIndexes.toArray(new HashMap[0]);
  ((P6OpaqueREPRData)st.REPRData).autoVivContainers = autoVivs.toArray(new SixModelObject[0]);
  ((P6OpaqueREPRData)st.REPRData).flattenedSTables = flattenedSTables.toArray(new STable[0]);
  ((P6OpaqueREPRData)st.REPRData).mi = mi;
  */
  this.mi = mi ? 1 : 0;

  this.calculate_autoviv();
};

P6opaque.name = 'P6opaque';

module.exports.P6opaque = P6opaque;

function KnowHOWREPR() {
}

KnowHOWREPR.prototype.create_obj_constructor = basic_constructor;

KnowHOWREPR.prototype.deserialize_finish = function(object, data) {
  object.__name = data.str();
  object.__attributes = data.variant();
  object.__methods = data.variant();
};

KnowHOWREPR.prototype.serialize = function(data, object) {
  data.str(object.__name);
  data.ref(object.__attributes);
  data.ref(object.__methods);
};

KnowHOWREPR.prototype.type_object_for = basic_type_object_for;

KnowHOWREPR.prototype.allocate = function(STable) {
  var obj = new STable.obj_constructor();
  obj.__methods = new Hash();
  obj.__attributes = [];
  obj.__name = '<anon>';
  return obj;
};


KnowHOWREPR.name = 'KnowHOWREPR';
module.exports.KnowHOWREPR = KnowHOWREPR;

function KnowHOWAttribute() {
}
KnowHOWAttribute.prototype.create_obj_constructor = basic_constructor;

KnowHOWAttribute.prototype.deserialize_finish = function(object, data) {
  object.__name = data.str();
};

KnowHOWAttribute.prototype.serialize = function(data, object) {
  data.str(object.__name);
};

KnowHOWAttribute.prototype.type_object_for = basic_type_object_for;
KnowHOWAttribute.prototype.allocate = basic_allocate;
KnowHOWAttribute.name = 'KnowHOWAttribute';
module.exports.KnowHOWAttribute = KnowHOWAttribute;

function Uninstantiable() {
}
Uninstantiable.prototype.create_obj_constructor = basic_constructor;
Uninstantiable.prototype.type_object_for = basic_type_object_for;
Uninstantiable.name = 'Uninstantiable';
module.exports.Uninstantiable = Uninstantiable;

/* Stubs */
function P6int() {
}

P6int.prototype.flattened_default = 0;
P6int.prototype.boxed_primitive = 1;

P6int.prototype.basic_constructor = basic_constructor;
P6int.prototype.basic_type_object_for = basic_type_object_for;

P6int.prototype.create_obj_constructor = function(STable) {
  var c = this.basic_constructor(STable);

  STable.obj_constructor = c; // HACK it's set again later, we set it for addInternalMethod

  STable.addInternalMethod('$$set_int', function(value) {
    this.value = value;
  });
  STable.addInternalMethod('$$get_int', function() {
    return this.value;
  });
  return c;
};

P6int.prototype.compose = function(STable, repr_info_hash) {
  var integer = repr_info_hash.content.get('integer');
  if (integer) { 
    var bits = integer.content.get('bits');
    if (bits instanceof NQPInt) {
      this.bits = bits.value;
    } else {
      throw "bits to P6int.compose must be a native int";
    }
  } 
};

P6int.name = 'P6int';
P6int.prototype.allocate = basic_allocate;
P6int.prototype.deserialize_finish = function(object, data) {
  // TODO integers bigger than 32bit
  object.value = data.varint();
};

P6int.prototype.serialize = function(data, object) {
  // TODO integers bigger than 32bit
  data.varint(object.value);
};


P6int.prototype.type_object_for = function(HOW) {
  var type_object = this.basic_type_object_for(HOW);
  return type_object;
};

module.exports.P6int = P6int;

function P6num() {
}

P6num.name = 'P6int';
P6num.prototype.boxed_primitive = 2;

P6num.prototype.allocate = basic_allocate;
P6num.prototype.basic_constructor = basic_constructor;
P6num.prototype.create_obj_constructor = function(STable) {
  var c = this.basic_constructor(STable);

  STable.obj_constructor = c; // HACK it's set again later, we set it for addInternalMethod

  STable.addInternalMethod('$$set_num', function(value) {
    this.value = value;
  });
  STable.addInternalMethod('$$get_num', function() {
    return this.value;
  });
  return c;
};

P6num.prototype.serialize = function(data, object) {
  data.double(object.value);
};

P6num.prototype.deserialize_finish = function(object, data) {
  object.value = data.double();
};

module.exports.P6num = P6num;

function P6str() {
}

P6str.prototype.boxed_primitive = 3;

P6str.prototype.allocate = basic_allocate;
P6str.prototype.basic_constructor = basic_constructor;
P6str.prototype.create_obj_constructor = function(STable) {
  var c = this.basic_constructor(STable);

  STable.obj_constructor = c; // HACK it's set again later, we set it for addInternalMethod

  STable.addInternalMethod('$$set_str', function(value) {
    this.value = value;
  });
  STable.addInternalMethod('$$get_str', function() {
    return this.value;
  });
  return c;
};

P6str.prototype.serialize = function(data, object) {
  data.str(object.value);
};

P6str.prototype.deserialize_finish = function(object, data) {
  object.value = data.str();
};

P6str.name = 'P6str';
module.exports.P6str = P6str;

function NFA() {
}
NFA.prototype.create_obj_constructor = basic_constructor;
NFA.prototype.deserialize_finish = function(object, data) {
  // STUB
};
NFA.prototype.type_object_for = basic_type_object_for;
NFA.prototype.allocate = basic_allocate;
NFA.prototype.compose = noop_compose;
NFA.name = 'NFA';
exports.NFA = NFA;

function VMArray() {
}
VMArray.prototype.create_obj_constructor = basic_constructor;

VMArray.prototype.deserialize_finish = function(object, data) {
  console.log('deserializing VMArray');
  // STUB
};
VMArray.prototype.type_object_for = basic_type_object_for;

VMArray.prototype.deserialize_repr_data = function(cursor) {
  this.type = cursor.variant();
  /* TODO - type */
};

VMArray.prototype.serialize_repr_data = function(st, cursor) {
  cursor.ref(this.type);
}

VMArray.prototype.deserialize_array = function(object, data) {
  if (this.type !== null) {
    console.log('NYI: VMArrays of a type different then null');
  }
  var size = data.varint();
  for (var i = 0; i < size; i++) {
    object[i] = data.variant();
  }
};

// HACK
VMArray.prototype.allocate = basic_allocate;

VMArray.prototype.compose = function(STable, repr_info_hash) {
  if (repr_info_hash.content.get('array')) {
    this.type = repr_info_hash.content.get('array').content.get('type');
  }
};

exports.VMArray = VMArray;

function VMIter() {
}
VMIter.prototype.create_obj_constructor = basic_constructor;
VMIter.prototype.deserialize_finish = function(object, data) {
  console.log('deserializing VMIter');
  // STUB
};
VMIter.prototype.type_object_for = basic_type_object_for;
exports.VMIter = VMIter;

var bignum = require('bignum');

function P6bigint() {
}
P6bigint.prototype.create_obj_constructor = basic_constructor;

P6bigint.prototype.basic_type_object_for = basic_type_object_for;

P6bigint.prototype.type_object_for = function(HOW) {
  var type_object = this.basic_type_object_for(HOW);

  this._STable.addInternalMethod('$$set_int', function(value) {
    this.value = bignum(value);
  });

  this._STable.addInternalMethod('$$get_int', function() {
    return this.value.toNumber()|0;
  });

  this._STable.addInternalMethod('$$set_bignum', function(value) {
    this.value = value;
  });

  this._STable.addInternalMethod('$$get_bignum', function() {
    return this.value;
  });

  return type_object;
};

P6bigint.prototype.generateBoxingMethods = function(repr, attr) {
  var name = attr.get('name');
  repr._STable.addInternalMethod('$$set_int', function(value) {
    this[name] = bignum(value);
  });

  repr._STable.addInternalMethod('$$get_int', function() {
    return this[name].toNumber();
  });

  repr._STable.addInternalMethod('$$get_bignum', function() {
    return this[name];
  });

  repr._STable.addInternalMethod('$$set_bignum', function(num) {
    this[name] = num;
  });
};

P6bigint.prototype.allocate = basic_allocate;
P6bigint.prototype.compose = noop_compose;
exports.P6bigint = P6bigint;


/* Stubs */

function NativeCall() {}
NativeCall.prototype.create_obj_constructor = basic_constructor;
NativeCall.prototype.allocate = basic_allocate;
exports.NativeCall = NativeCall;

function CPointer() {}
CPointer.prototype.create_obj_constructor = basic_constructor;
exports.CPointer = CPointer;

function ReentrantMutex() {}
ReentrantMutex.prototype.create_obj_constructor = basic_constructor;

module.exports.ReentrantMutex = ReentrantMutex;

function ConditionVariable() {}
ConditionVariable.prototype.create_obj_constructor = basic_constructor;

module.exports.ConditionVariable = ConditionVariable;
