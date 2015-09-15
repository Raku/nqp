var sixmodel = require('./sixmodel.js');
var Null = require('./null.js');
var Hash = require('./hash.js');

function basic_type_object_for(HOW) {
  var st = new sixmodel.STable(this, HOW);
  this._STable = st;
  var obj = new st.obj_constructor();

  st.WHAT = obj;
  sixmodel.mark_as_type_object(obj);
  return obj;
}

function basic_allocate(st) {
  var obj = new st.obj_constructor();
  return obj;
}

function noop_compose(st, repr_info_hash) {
}
exports.basic_type_object_for = basic_type_object_for;
exports.basic_allocate = basic_allocate;
exports.noop_compose = noop_compose;

function P6opaque() {
}
P6opaque.prototype.deserialize_repr_data = function(cursor, deps, st) {
  this.deserialized = 1;
  var num_attributes = cursor.I64();
  this.flattened_stables = [];
  for (var i = 0; i < num_attributes; i++) {
    var not_null = cursor.flag64();
    this.flattened_stables.push(not_null != 0 ? deps[cursor.I32()].root_stables[cursor.I32()] : null);
  }
  this.mi = cursor.I64();
  var has_auto_viv_values = cursor.flag64();
  if (has_auto_viv_values != 0) {
    this.auto_viv_values = [];
    for (var i = 0; i < num_attributes; i++) {
      this.auto_viv_values.push(cursor.variant());
    }
  }

  this.unbox_int_slot = cursor.I64();
  this.unbox_num_slot = cursor.I64();
  this.unbox_str_slot = cursor.I64();



  var has_unbox_slots = cursor.flag64();

  if (has_unbox_slots != 0) {
    this.unbox_slots = [];
    for (var i = 0; i < num_attributes; i++) {
      var repr_id = cursor.I64();
      var slot = cursor.I64();
      this.unbox_slots.push({slot: slot, repr_id: repr_id});
    }
  }
  var num_classes = cursor.I64();
  this.name_to_index_mapping = [];
  this.num_classes = num_classes;
  for (var i = 0; i < num_classes; i++) {
    var class_key = cursor.variant().deserialize(deps);
    var name_map = cursor.variant().deserialize(deps);
    this.name_to_index_mapping.push({class_key: class_key, name_map: name_map});
  }

  this.name_to_auto_viv_value = {};

  if (has_auto_viv_values) {
    for (var i in this.name_to_index_mapping) {
      if (this.name_to_index_mapping[i].name_map !== Null) {
        for (var name in this.name_to_index_mapping[i].name_map) {
          var index = this.name_to_index_mapping[i].name_map[name];
          this.name_to_auto_viv_value[name] =
              this.auto_viv_values[index].deserialize(deps);
        }
      }
    }
  }
  this.posDelegateSlot = cursor.I64();
  this.assocDelegateSlot = cursor.I64();

  for (var i in this.name_to_index_mapping) {
    for (var name in this.name_to_index_mapping[i].name_map) {
      var index = this.name_to_index_mapping[i].name_map[name];
      if (index == this.assocDelegateSlot) {
        st.delegateAssociative(name);
      } else if (index == this.posDelegateSlot) {
        st.delegatePositional(name);
      }
    }
  }
};


P6opaque.prototype.serialize_repr_data = function(st, cursor) {
  var numAttrs = st.REPR.flattened_stables.length;
  cursor.I64(numAttrs);

  for (var i = 0; i < numAttrs; i++) {
    if (st.REPR.flattened_stables[i] == null) {
      cursor.I64(0);
    }
    else {
      cursor.I64(1);
      console.log('handle', st.REPR.flattened_stables[i]._SC.handle);
      cursor.STableRef(st.REPR.flattened_stables[i]);
    }
  }

  cursor.I64(st.REPR.mi ? 1 : 0);

  //TODO
  //  if (st.REPR.auto_viv_values != null) {
  //      cursor.I64(1);
  //      for (var i = 0; i < numAttrs; i++)
  //         cursor.ref(st.REPR.auto_viv_values[i]);
  //  }
  //  else {
  cursor.I64(0);
  //  }

  cursor.I64(st.REPR.unbox_int_slot);
  cursor.I64(st.REPR.unbox_str_slot);
  cursor.I64(st.REPR.unbox_str_slot);

  // TODO: Unbox slots
  cursor.I64(0);


  var start;
  cursor.I64(this.name_to_index_mapping.length);
  for (var i = 0; i < this.name_to_index_mapping.length; i++) {
    start = cursor.offset;
    cursor.ref(this.name_to_index_mapping[i].class_key);
    cursor.ref(this.name_to_index_mapping[i].name_map);
  }

  cursor.I64(st.REPR.posDelegateSlot);
  cursor.I64(st.REPR.assocDelegateSlot);
};


P6opaque.prototype.serialize = function(cursor, obj) {
  var flattened = obj._STable.REPR.flattened_stables;
  if (!flattened) {
    throw 'Representation must be composed before it can be serialized';
  }

  var names = [];
  var attrs = [];
  for (var i in this.name_to_index_mapping) {
    for (var name in this.name_to_index_mapping[i].name_map) {
      var index = this.name_to_index_mapping[i].name_map[name];
      attrs[index] = obj[name];
      names[index] = name;
    }
  }

  for (var i = 0; i < flattened.length; i++) {
    if (flattened[i] == Null || !flattened[i]) {
      // HACK - think about if we should have undefined attrs at all
      cursor.ref(attrs[i] || Null);
    }
    else {
      var attr = typeof attrs[i] == 'object' ? attrs[i] : {value: attrs[i]}; // HACK - think if that's a correct way of serializing a native attribute
      this.flattened_stables[i].REPR.serialize(cursor, attr);
    }
  }
};

P6opaque.prototype.deserialize_finish = function(object, data, deps) {
  var attrs = [];

  for (var i = 0; i < this.flattened_stables.length; i++) {
    if (this.flattened_stables[i]) {
      var STable = this.flattened_stables[i];
      var flattened_object = STable.REPR.allocate(STable);
      STable.REPR.deserialize_finish(flattened_object, data, deps);

      attrs.push(flattened_object);
    } else {
      attrs.push(data.variant().deserialize(deps));
    }
  }
  for (var i in this.name_to_index_mapping) {
    for (var name in this.name_to_index_mapping[i].name_map) {
      var index = this.name_to_index_mapping[i].name_map[name];
      object[name] = attrs[index];
    }
  }
};
P6opaque.prototype.type_object_for = basic_type_object_for;
P6opaque.prototype.allocate = basic_allocate;

P6opaque.prototype.compose = function(st, repr_info_hash) {

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
          attr.type._STable.REPR.generateBoxingMethods(
              attr.type._STable, this, attr);
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
          this._STable.delegatePositional(attr.name);
        }
        if (attr.associative_delegate) {
          this.assocDelegateSlot = curAttr;
          this._STable.delegatePositional(attr.name);
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

P6opaque.prototype.change_type = function(obj, new_type) {
  // TODO some sanity checks for the new mro being a subset and new_type being also a P6opaque
  // HACK usage of __proto__ which is not fully portable and might interfere with the optimizer
  obj.__proto__ = new_type._STable.obj_constructor.prototype;
};

exports.P6opaque = P6opaque;


function Uninstantiable() {
}
Uninstantiable.prototype.deserialize_finish = function(object, data, deps) {
};
Uninstantiable.prototype.type_object_for = basic_type_object_for;
exports.Uninstantiable = Uninstantiable;

function KnowHOWREPR() {
}
KnowHOWREPR.prototype.deserialize_finish = function(object, data, deps) {
  object.deserialized = 1;
  object.__name = data.str();
  object.__attributes = data.variant().deserialize(deps);
  object.__methods = data.variant().deserialize(deps);
};

KnowHOWREPR.prototype.serialize = function(cursor, object) {
  cursor.string(object.__name);
  cursor.ref(object.__attributes);
  cursor.ref(object.__methods);
};

KnowHOWREPR.prototype.type_object_for = function(HOW) {
};
KnowHOWREPR.prototype.allocate = function(st) {
  var obj = new st.obj_constructor();
  obj.__methods = new Hash();
  obj.__attributes = [];
  obj.__name = '<anon>';
  if (!obj.name) {
    console.trace('allocating broken KnowHOWREPRs');
  }
  return obj;
};
KnowHOWREPR.prototype.initialize = function(st) {
};
KnowHOWREPR.prototype.type_object_for = basic_type_object_for;
exports.KnowHOWREPR = KnowHOWREPR;

function KnowHOWAttribute() {
}
KnowHOWAttribute.prototype.deserialize_finish = function(object, data, deps) {
  object.__name = data.str();
};
KnowHOWAttribute.prototype.type_object_for = basic_type_object_for;
KnowHOWAttribute.prototype.allocate = basic_allocate;
KnowHOWAttribute.prototype.serialize = function(cursor, object) {
  cursor.string(object.__name);
};
exports.KnowHOWAttribute = KnowHOWAttribute;


function P6str() {
}
P6str.prototype.boxed_primitive = 3;
P6str.prototype.deserialize_finish = function(object, data, deps) {
  object.value = data.str();
};
P6str.prototype.serialize = function(cursor, object) {
  cursor.string(object.value);
};
P6str.prototype.type_object_for = basic_type_object_for;
P6str.prototype.allocate = basic_allocate;
P6str.prototype.set_str = function(obj, value) {
  obj.value = value;
};
P6str.prototype.get_str = function(obj) {
  return obj.value;
};
P6str.prototype.generateBoxingMethods = function(st, repr, attr) {
  repr.set_str = function(obj, value) {
    obj[attr.name] = value;
  };
  repr.get_str = function(obj) {
    return obj[attr.name];
  };
};

P6str.prototype.setup_STable = function(STable) {
  STable.obj_constructor.prototype.to_i = function(ctx) {
    return parseInt(this.value);
  };
  STable.obj_constructor.prototype.to_n = function(ctx) {
    return parseFloat(this.value);
  };
  STable.obj_constructor.prototype.to_s = function(ctx) {
    return this.value;
  };
};
exports.P6str = P6str;

function P6int() {
}
P6int.prototype.deserialize_finish = function(object, data, deps) {
  object.value = data.I64();
};
P6int.prototype.boxed_primitive = 1;
P6int.prototype.serialize = function(cursor, object) {
  cursor.I64(object.value);
};
P6int.prototype.type_object_for = basic_type_object_for;
P6int.prototype.allocate = basic_allocate;
P6int.prototype.generateBoxingMethods = function(st, repr, attr) {
  repr.set_int = function(obj, value) {
    obj[attr.name] = value;
  };
  repr.get_int = function(obj) {
    return obj[attr.name];
  };
};
P6int.prototype.set_int = function(obj, value) {
  obj.value = value;
};
P6int.prototype.get_int = function(obj) {
  return obj.value;
};
P6int.prototype.name = 'P6int';
P6int.prototype.setup_STable = function(STable) {
  STable.obj_constructor.prototype.to_i = function(ctx) {
    return this.value;
  };
  STable.obj_constructor.prototype.to_n = function(ctx) {
    return this.value;
  };
};
P6int.prototype.compose = noop_compose;

exports.P6int = P6int;


function P6num() {
}
P6num.prototype.boxed_primitive = 2;
P6num.prototype.deserialize_finish = function(object, data, deps) {
  object.value = data.double();
};
P6num.prototype.serialize = function(cursor, object) {
  cursor.double(object.value);
};
P6num.prototype.type_object_for = basic_type_object_for;
P6num.prototype.allocate = basic_allocate;
P6num.prototype.generateBoxingMethods = function(st, repr, attr) {
  repr.set_num = function(obj, value) {
    obj[attr.name] = value;
  };
  repr.get_num = function(obj) {
    return obj[attr.name];
  };
};
P6num.prototype.set_num = function(obj, value) {
  obj.value = value;
};
P6num.prototype.get_num = function(obj) {
  return obj.value;
};
P6num.prototype.setup_STable = P6int.prototype.setup_STable;
exports.P6num = P6num;

function NFA() {
}
NFA.prototype.deserialize_finish = function(object, data, deps) {
  //TODO fill in
};
NFA.prototype.type_object_for = basic_type_object_for;
NFA.prototype.allocate = basic_allocate;
NFA.prototype.compose = noop_compose;
exports.NFA = NFA;
