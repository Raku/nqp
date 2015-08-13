var sixmodel = require('./sixmodel.js');
var Hash = require('./hash.js');

function basic_type_object_for(HOW) {
  var st = new sixmodel.STable(this, HOW);
  this._STable = st;
  var obj = new st.obj_constructor();

  obj.type_object_ = 1;
  return obj;
}

function basic_allocate(STable) {
  return new STable.obj_constructor()
}

function noop_compose(obj, repr_info) {
};


function P6opaque() {
}

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
    this.flattened_stables.push(not_null != 0 ? cursor.sc.deps[cursor.I32()].root_stables[cursor.I32()] : null);
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


P6opaque.prototype.compose = function(obj, repr_info) {
    // TODO - fill it in
};

P6opaque.name = 'P6opaque';

module.exports.P6opaque = P6opaque;

function KnowHOWREPR() {
}

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
KnowHOWAttribute.prototype.deserialize_finish = function(object, data) {
  object.__name = data.str();
};

KnowHOWAttribute.prototype.type_object_for = basic_type_object_for;
KnowHOWAttribute.prototype.allocate = basic_allocate;
KnowHOWAttribute.name = 'KnowHOWAttribute';
module.exports.KnowHOWAttribute = KnowHOWAttribute;

function Uninstantiable() {
}
Uninstantiable.prototype.type_object_for = basic_type_object_for;
Uninstantiable.name = 'Uninstantiable';
module.exports.Uninstantiable = Uninstantiable;

/* Stubs */
function P6int() {
}
P6int.name = 'P6int';
module.exports.P6int = P6int;

function P6num() {
}
P6num.name = 'P6num';
module.exports.P6num = P6num;

function P6str() {
}
P6str.name = 'P6str';
module.exports.P6str = P6str;

function NFA() {
}
NFA.prototype.deserialize_finish = function(object, data) {
  // STUB
};
NFA.prototype.type_object_for = basic_type_object_for;
NFA.prototype.allocate = basic_allocate;
NFA.name = 'NFA';
exports.NFA = NFA;

function VMArray() {
}
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
VMIter.prototype.deserialize_finish = function(object, data) {
  console.log("deserializing VMIter");
  // STUB
};
VMIter.prototype.type_object_for = basic_type_object_for;
exports.VMIter = VMIter;

var bigint = require('bigint');

function P6bigint() {
}

P6bigint.prototype.basic_type_object_for = basic_type_object_for;

P6bigint.prototype.type_object_for = function(HOW) {
    var type_object = this.basic_type_object_for(HOW);
    this._STable.obj_constructor.prototype.$$set_int = function(value) {
        this.value = bigint(value);
    };
    return type_object;
};

P6bigint.prototype.allocate = basic_allocate;
P6bigint.prototype.compose = noop_compose;
exports.P6bigint = P6bigint;
