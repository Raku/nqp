var sixmodel = require('./sixmodel.js');
var Hash = require('./hash.js');

function basic_type_object_for(HOW) {
  var st = new sixmodel.STable(this, HOW);
  this._STable = st;
  var obj = new st.obj_constructor();

  this._STable.WHAT = obj;
  obj.type_object_ = 1;
  return obj;
}

function basic_allocate(STable) {
  return new STable.obj_constructor()
}

function noop_compose(obj, repr_info) {
};


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

  for (var i = 0; i < num_classes; i++) {
      this.name_to_index_mapping[i] = {slots: [], names: [], class_key: cursor.variant()};

      var num_attrs = cursor.varint();

      for (var j = 0; j < num_attrs; j++) {
          this.name_to_index_mapping[i].names[j] = cursor.str();
          this.name_to_index_mapping[i].slots[j] = cursor.varint();
      }
  }


  var slots = [];
  var autovived = {};
  for (var i in this.name_to_index_mapping) {
    for (var j in this.name_to_index_mapping[i].slots) {
        var name = this.name_to_index_mapping[i].names[j];
        var slot = this.name_to_index_mapping[i].slots[j];
        slots[slot] = name;
        if (this.auto_viv_values[slot]) {
            if (!this.auto_viv_values[slot].type_object_) {
                console.log('autoviv', name, slot, this.auto_viv_values[slot]);
                throw "We currently only implement autoviv with type object values";
            }
            /* TODO autoviving things that aren't typeobjects */
            /* TODO we need to store attributes better */
            autovived[name] = this.auto_viv_values[slot];
        }
    }
  }
  
  if (Object.keys(autovived).length != 0) {
    this.autovived = autovived;
  }

  
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

P6opaque.prototype.deserialize_finish = function(object, data) {
  var attrs = [];

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

P6opaque.prototype.type_object_for = basic_type_object_for;


P6opaque.prototype.change_type = function(obj, new_type) {
  // TODO some sanity checks for the new mro being a subset and new_type being also a P6opaque
  // HACK usage of __proto__ which is not fully portable and might interfere with the optimizer
  obj.__proto__ = new_type._STable.obj_constructor.prototype;
};


P6opaque.prototype.compose = function(STable, repr_info_hash) {
  // TODO 

  /* Get attribute part of the protocol from the hash. */
  var repr_info = repr_info_hash.attribute;

  /* Go through MRO and find all classes with attributes and build up
   * mapping info hashes. Note, reverse order so indexes will match
   * those in parent types. */

  this.unbox_int_slot = -1;
  this.unbox_num_slot = -1;
  this.unbox_str_slot = -1;

  this.posDelegateSlot = -1;
  this.assocDelegateSlot = -1;

  var curAttr = 0;
  /*
  List<SixModelObject> autoVivs = new ArrayList<SixModelObject>();
  List<AttrInfo> attrInfoList = new ArrayList<AttrInfo>();
  long mroLength = repr_info.elems(tc);
  */
  this.name_to_index_mapping = [];
  this.flattened_stables = [];
  var mi = false;
  for (var i = repr_info.length - 1; i >= 0; i--) {
    var entry = repr_info[i];
    var type = entry[0];
    var attrs = entry[1];
    var parents = entry[2];

    /* If it has any attributes, give them each indexes and put them
       * in the list to add to the layout. */
    var numAttrs = attrs.length;
    if (numAttrs > 0) {
      var indexes = new Hash();
      for (var j = 0; j < numAttrs; j++) {
        var attr = attrs[j];

        /* old boxing method generation */
        if (attr.box_target) {
          attr.type._STable.REPR.generateBoxingMethods(this, attr);
        }

        /* TODO */
        //              if (attrType == Null)
        //                  attrType = tc.gc.KnowHOW;
        indexes[attr.name] = curAttr;

        /*              AttrInfo info = new AttrInfo();

              info.st = attrType.st;*/

        this.flattened_stables.push(null);

        if (attr.positional_delegate) {
          this.posDelegateSlot = curAttr;
          // TODO
          //this._STable.delegatePositional(attr.name);
        }
        if (attr.associative_delegate) {
          this.assocDelegateSlot = curAttr;
          // TODO
          //this._STable.delegatePositional(attr.name);
        }
        /* TODO think if we want to flatten some things */
        /*if (attrType.st.REPR.get_storage_spec(tc, attrType.st).inlineable == StorageSpec.INLINED)
                  flattenedSTables.add(attrType.st);
              else
                  flattenedSTables.add(null);*/

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
        /*if (info.posDelegate)
                  ((P6OpaqueREPRData)st.REPRData).posDelSlot = curAttr;
              if (info.assDelegate)
                  ((P6OpaqueREPRData)st.REPRData).assDelSlot = curAttr;

              */
        curAttr++;
      }
      /*classHandles.add(type);
          attrIndexes.add(indexes);*/
      this.name_to_index_mapping.push({class_key: type, name_map: indexes});
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

P6int.prototype.basic_constructor = basic_constructor;
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

P6num.prototype.create_obj_constructor = basic_constructor;

P6num.name = 'P6num';
module.exports.P6num = P6num;

function P6str() {
}
P6str.prototype.create_obj_constructor = basic_constructor;

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
NFA.name = 'NFA';
exports.NFA = NFA;

function VMArray() {
}
VMArray.prototype.create_obj_constructor = basic_constructor;

VMArray.prototype.deserialize_finish = function(object, data) {
  console.log("deserializing VMArray");
  // STUB
};
VMArray.prototype.type_object_for = basic_type_object_for;

VMArray.prototype.deserialize_repr_data = function(cursor) {
    this.type = cursor.variant();
    /* TODO - type */
};

VMArray.prototype.deserialize_array = function(object,data) {
  if (this.type !== null) {
    console.log("NYI: VMArrays of a type different then null");
  }
  var size = data.varint();
  for (var i = 0; i < size; i++) {
    object[i] = data.variant();
  }
};

exports.VMArray = VMArray;

function VMIter() {
}
VMIter.prototype.create_obj_constructor = basic_constructor;
VMIter.prototype.deserialize_finish = function(object, data) {
  console.log("deserializing VMIter");
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
        return this.value.toNumber();
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
  repr._STable.addInternalMethod('$$set_int', function(value) {
      this[attr.name] = bignum(value);
  });

  repr._STable.addInternalMethod('$$get_int', function() {
      return this[attr.name].toNumber();
  });

  repr._STable.addInternalMethod('$$get_bignum', function() {
      return this[attr.name];
  });

  repr._STable.addInternalMethod('$$set_bignum', function(num) {
      this[attr.name] = num;
  });
};

P6bigint.prototype.allocate = basic_allocate;
P6bigint.prototype.compose = noop_compose;
exports.P6bigint = P6bigint;


/* Stubs */

function ReentrantMutex() {}
ReentrantMutex.prototype.create_obj_constructor = basic_constructor;

module.exports.ReentrantMutex = ReentrantMutex;

function ConditionVariable() {}
ConditionVariable.prototype.create_obj_constructor = basic_constructor;

module.exports.ConditionVariable = ConditionVariable;
