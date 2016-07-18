var sixmodel = require('./sixmodel.js');
var Hash = require('./hash.js');
var NQPInt = require('./nqp-int.js');
var NQPException = require('./nqp-exception.js');
var NQPArray = require('./array.js');

var reprs = {};
var reprById = [];

function basicTypeObjectFor(HOW) {
  var st = new sixmodel.STable(this, HOW);
  this._STable = st;

  var obj = st.createTypeObject();
  this._STable.WHAT = obj;

  return obj;
}

function basicAllocate(STable) {
  return new STable.objConstructor();
}

function noopCompose(obj, reprInfo) {
}


function basicConstructor(STable) {
  var objConstructor = function() {};
  objConstructor.prototype._STable = STable;
  return objConstructor;
}

function slotToAttr(slot) {
  return 'attr$' + slot;
}

function P6opaque() {
}

P6opaque.prototype.createObjConstructor = basicConstructor;

P6opaque.prototype.allocate = function(STable) {
  var obj = new STable.objConstructor();

  Object.assign(obj, this.template);

  return obj;
};

P6opaque.prototype.precalculate = function() {
  var autovived = {};
  if (this.autoVivValues) {
    for (var i in this.nameToIndexMapping) {
      for (var j in this.nameToIndexMapping[i].slots) {
        var slot = this.nameToIndexMapping[i].slots[j];
        if (this.autoVivValues[slot]) {
          if (!this.autoVivValues[slot].typeObject_) {
            //            console.log('autoviv', name, slot, this.autoVivValues[slot]);
            console.warn('We currently only implement autoviv with type object values');
          }
          /* TODO autoviving things that aren't typeobjects */
          /* TODO we need to store attributes better */
          autovived[slotToAttr(slot)] = this.autoVivValues[slot];
        } else if (this.flattenedStables[slot]) {
          if (this.flattenedStables[slot].REPR.flattenedDefault !== undefined) {
            autovived[slotToAttr(slot)] = this.flattenedStables[slot].REPR.flattenedDefault;
          }
        }
      }
    }
  }

  if (Object.keys(autovived).length != 0) {
    this.autovived = autovived;
  }

  this.template = {};
  /* TODO think about attribute types */
  for (var i in this.nameToIndexMapping) {
    for (var j in this.nameToIndexMapping[i].slots) {
      var slot = this.nameToIndexMapping[i].slots[j];
      this.template[slotToAttr(slot)] = null;
    }
  }

  if (this.autovived) {
    for (var attr in this.autovived) {
      this.template[attr] = this.autovived[attr];
    }
  }
};

P6opaque.prototype.deserializeReprData = function(cursor, STable) {
  this.deserialized = 1;
  var numAttributes = cursor.varint();
  this.flattenedStables = [];
  for (var i = 0; i < numAttributes; i++) {
    var notNull = cursor.varint();
    this.flattenedStables.push(notNull != 0 ? cursor.locateThing('rootStables') : null);
  }
  this.mi = cursor.varint();
  var hasAutoVivValues = cursor.varint();
  if (hasAutoVivValues != 0) {
    this.autoVivValues = [];
    for (var i = 0; i < numAttributes; i++) {
      this.autoVivValues.push(cursor.variant());
    }
  }

  this.unboxIntSlot = cursor.varint();
  this.unboxNumSlot = cursor.varint();
  this.unboxStrSlot = cursor.varint();



  var hasUnboxSlots = cursor.varint();

  if (hasUnboxSlots != 0) {
    this.unboxSlots = [];
    for (var i = 0; i < numAttributes; i++) {
      var reprId = cursor.varint();
      var slot = cursor.varint();
      if (reprId != 0) {
        this.unboxSlots.push({slot: slot, reprId: reprId});
      }
    }
  }

  var numClasses = cursor.varint();
  this.nameToIndexMapping = [];

  var slots = [];

  for (var i = 0; i < numClasses; i++) {
    this.nameToIndexMapping[i] = {slots: [], names: [], classKey: cursor.variant()};

    var numAttrs = cursor.varint();

    for (var j = 0; j < numAttrs; j++) {
      var name = cursor.str();
      var slot = cursor.varint();

      this.nameToIndexMapping[i].names[j] = name;
      this.nameToIndexMapping[i].slots[j] = slot;


      slots[slot] = name;
    }
  }


  this.precalculate();

  this.positionalDelegateSlot = cursor.varint();
  this.associativeDelegateSlot = cursor.varint();

  if (this.positionalDelegateSlot != -1) {
    STable.setPositionalDelegate(slotToAttr(this.positionalDelegateSlot));
  }
  if (this.associativeDelegateSlot != -1) {
    STable.setAssociativeDelegate(slotToAttr(this.associativeDelegateSlot));
  }

  if (this.unboxSlots) {
    for (var i = 0; i < this.unboxSlots.length; i++) {
      var slot = this.unboxSlots[i].slot;
      (new reprById[this.unboxSlots[i].reprId]).generateBoxingMethods(STable, slotToAttr(slot), this.flattenedStables[slot]);
    }
  }

  /* TODO make auto viv values work */
};


P6opaque.prototype.hintfor = function(classHandle, attrName) {
  for (var i = 0; i < this.nameToIndexMapping.length; i++) {
    if (this.nameToIndexMapping[i].classKey === classHandle) {
      for (var j = 0; j < this.nameToIndexMapping[i].slots.length; j++) {
        if (this.nameToIndexMapping[i].names[j] === attrName) {
          return this.nameToIndexMapping[i].slots[j];
        }
      }
    }
  }
  return -1;
};

P6opaque.prototype.getAttr = function(classHandle, attrName) {
  var hint = this.hintfor(classHandle, attrName);
  if (hint == -1) {
    throw "Can't find: " + attrName;
  } else {
    return slotToAttr(hint);
  }
};

P6opaque.prototype.serializeReprData = function(st, cursor) {
  var numAttrs = st.REPR.flattenedStables.length;
  cursor.varint(numAttrs);

  STARTING_OFFSET = cursor.offset;

  for (var i = 0; i < numAttrs; i++) {
    if (st.REPR.flattenedStables[i] == null) {
      cursor.varint(0);
    }
    else {
      cursor.varint(1);
      cursor.STableRef(st.REPR.flattenedStables[i]);
    }
  }

  cursor.varint(st.REPR.mi ? 1 : 0);


  if (st.REPR.autoVivValues) {
    cursor.varint(1);
    for (var i = 0; i < numAttrs; i++) {
      cursor.ref(st.REPR.autoVivValues[i]);
    }
  } else {
    cursor.varint(0);
  }


  cursor.varint(st.REPR.unboxIntSlot);
  cursor.varint(st.REPR.unboxNumSlot);
  cursor.varint(st.REPR.unboxStrSlot);

  if (this.unboxSlots) {
    cursor.varint(1);
    for (var i = 0; i < numAttrs; i++) {
      if (this.unboxSlots[i]) {
        cursor.varint(this.unboxSlots[i].reprId);
        cursor.varint(this.unboxSlots[i].slot);
      } else {
        cursor.varint(0);
        cursor.varint(0);
      }
    }
  } else {
    cursor.varint(0);
  }


  cursor.varint(this.nameToIndexMapping.length);
  for (var i = 0; i < this.nameToIndexMapping.length; i++) {
    cursor.ref(this.nameToIndexMapping[i].classKey);

    var numAttrs = this.nameToIndexMapping[i].names.length;

    cursor.varint(numAttrs);

    for (var j = 0; j < numAttrs; j++) {
      cursor.str(this.nameToIndexMapping[i].names[j]);
      cursor.varint(this.nameToIndexMapping[i].slots[j]);
    }
  }

  cursor.varint(this.positionalDelegateSlot);
  cursor.varint(this.associativeDelegateSlot);
};

P6opaque.prototype.deserializeFinish = function(obj, data) {
  var attrs = [];

  for (var i = 0; i < this.flattenedStables.length; i++) {
    if (this.flattenedStables[i]) {
      var STable = this.flattenedStables[i];
      var flattenedObject = STable.REPR.allocate(STable);
      STable.REPR.deserializeFinish(flattenedObject, data);

      attrs.push(flattenedObject);
    } else {
      attrs.push(data.variant());
    }
  }

  for (var i in this.nameToIndexMapping) {
    for (var j in this.nameToIndexMapping[i].slots) {
      var slot = this.nameToIndexMapping[i].slots[j];
      obj[slotToAttr(slot)] = attrs[slot];
    }
  }
};

P6opaque.prototype.serialize = function(cursor, obj) {
  var flattened = obj._STable.REPR.flattenedStables;
  var nqp = require('nqp-runtime');
  if (!flattened) {
    throw 'Representation must be composed before it can be serialized';
  }

  for (var i = 0; i < flattened.length; i++) {
    var value = obj[slotToAttr(i)];
    if (flattened[i] == null || !flattened[i]) {
      // TODO - think about what happens when we get an undefined value here
      cursor.ref(value);
    }
    else {
      // HACK different kinds of numbers etc.
      var wrapped = typeof value == 'object' ? value : {value: value}; // HACK - think if that's a correct way of serializing a native attribute
      this.flattenedStables[i].REPR.serialize(cursor, wrapped);
    }
  }
};

P6opaque.prototype.typeObjectFor = basicTypeObjectFor;


P6opaque.prototype.changeType = function(obj, newType) {
  // TODO some sanity checks for the new mro being a subset and newType being also a P6opaque
  // HACK usage of __proto__ which is not fully portable and might interfere with the optimizer
  obj.__proto__ = newType._STable.objConstructor.prototype;
};


P6opaque.prototype.compose = function(STable, reprInfoHash) {
  // TODO

  /* Get attribute part of the protocol from the hash. */
  var reprInfo = reprInfoHash.content.get('attribute').array;

  /* Go through MRO and find all classes with attributes and build up
   * mapping info hashes. Note, reverse order so indexes will match
   * those in parent types. */

  this.unboxIntSlot = -1;
  this.unboxNumSlot = -1;
  this.unboxStrSlot = -1;

  this.positionalDelegateSlot = -1;
  this.associativeDelegateSlot = -1;

  var curAttr = 0;
  /*
  List<SixModelObject> autoVivs = new ArrayList<SixModelObject>();
  List<AttrInfo> attrInfoList = new ArrayList<AttrInfo>();
  long mroLength = reprInfo.elems(tc);
  */
  this.nameToIndexMapping = [];
  this.flattenedStables = [];
  var mi = false;

  this.autoVivValues = [];

  for (var i = reprInfo.length - 1; i >= 0; i--) {
    var entry = reprInfo[i].array;
    var type = entry[0];
    var attrs = entry[1].array;
    var parents = entry[2].array;

    /* If it has any attributes, give them each indexes and put them
       * in the list to add to the layout. */
    var numAttrs = attrs.length;
    if (numAttrs > 0) {
      var names = [];
      var slots = [];

      for (var j = 0; j < numAttrs; j++) {
        var attr = attrs[j].content;

        var attrType = attr.get('type');
        /* old boxing method generation */
        if (attr.get('box_target')) {
          var REPR = attrType._STable.REPR;
          if (!this.unboxSlots) this.unboxSlots = [];
          this.unboxSlots.push({slot: curAttr, reprId: REPR.ID});
          REPR.generateBoxingMethods(STable, slotToAttr(curAttr), attrType._STable);
        }

        /* TODO */
        //              if (attrType == Null)
        //                  attrType = tc.gc.KnowHOW;

        slots.push(curAttr);
        names.push(attr.get('name'));

        /*              AttrInfo info = new AttrInfo();

              info.st = attrType.st;*/

        /* HACK we don't actually implement STable inlining, but just pass around the STable
         to make boxing of bignums work */
        if (attr.get('box_target') && attrType._STable.REPR.flattenSTable) {
          this.flattenedStables.push(attrType._STable);
        } else {
          this.flattenedStables.push(null);
        }

        if (attr.get('positional_delegate')) {
          this.positionalDelegateSlot = curAttr;
          this._STable.setPositionalDelegate(slotToAttr(this.positionalDelegateSlot));
        }

        if (attr.get('associative_delegate')) {
          this.associativeDelegateSlot = curAttr;
          this._STable.setAssociativeDelegate(slotToAttr(this.associativeDelegateSlot));
        }

        /* TODO think if we want to flatten some things */
        /*if (attrType.st.REPR.getStorageSpec(tc, attrType.st).inlineable == StorageSpec.INLINED)
                  flattenedSTables.add(attrType.st);
              else
                  flattenedSTables.add(null);*/

        if (attr.get('auto_viv_container')) {
          this.autoVivValues[curAttr] = attr.get('auto_viv_container');
        }

        /* info.boxTarget = attrHash.existsKey(tc, "box_target") != 0;
              SixModelObject autoViv = attrHash.atKeyBoxed(tc, "auto_viv_container");
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
      this.nameToIndexMapping.push({classKey: type, slots: slots, names: names});
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

  this.precalculate();


};

P6opaque.prototype.setup_STable = function(STable) {
  var repr = this;
  STable.addInternalMethod('$$bindattr', function(classHandle, attrName, value) {
    this[repr.getAttr(classHandle, attrName)] = value;
    return value;
  });

  STable.addInternalMethod('$$getattr', function(classHandle, attrName) {
    return this[repr.getAttr(classHandle, attrName)];
  });
};

reprs.P6opaque = P6opaque;

function KnowHOWREPR() {
}

KnowHOWREPR.prototype.createObjConstructor = basicConstructor;

KnowHOWREPR.prototype.deserializeFinish = function(obj, data) {
  obj.__name = data.str();
  obj.__attributes = data.variant();
  obj.__methods = data.variant();
};

KnowHOWREPR.prototype.serialize = function(data, obj) {
  data.str(obj.__name);
  data.ref(obj.__attributes);
  data.ref(obj.__methods);
};

KnowHOWREPR.prototype.typeObjectFor = basicTypeObjectFor;

KnowHOWREPR.prototype.allocate = function(STable) {
  var obj = new STable.objConstructor();
  obj.__methods = new Hash();
  obj.__attributes = new NQPArray([]);
  obj.__name = '<anon>';
  return obj;
};


reprs.KnowHOWREPR = KnowHOWREPR;

function KnowHOWAttribute() {
}
KnowHOWAttribute.prototype.createObjConstructor = basicConstructor;

KnowHOWAttribute.prototype.deserializeFinish = function(obj, data) {
  obj.__name = data.str();
};

KnowHOWAttribute.prototype.serialize = function(data, obj) {
  data.str(obj.__name);
};

KnowHOWAttribute.prototype.typeObjectFor = basicTypeObjectFor;
KnowHOWAttribute.prototype.allocate = basicAllocate;
reprs.KnowHOWAttribute = KnowHOWAttribute;

function Uninstantiable() {
}
Uninstantiable.prototype.createObjConstructor = basicConstructor;
Uninstantiable.prototype.typeObjectFor = basicTypeObjectFor;
reprs.Uninstantiable = Uninstantiable;

/* Stubs */
function P6int() {
}

P6int.prototype.flattenedDefault = 0;
P6int.prototype.boxedPrimitive = 1;

P6int.prototype.createObjConstructor = basicConstructor;
P6int.prototype.typeObjectFor = basicTypeObjectFor;

P6int.prototype.setup_STable = function(STable) {
  STable.addInternalMethod('$$setInt', function(value) {
    this.value = value;
  });
  STable.addInternalMethod('$$getInt', function() {
    return this.value;
  });
};

P6int.prototype.compose = function(STable, reprInfoHash) {
  var integer = reprInfoHash.content.get('integer');
  if (integer) {
    var bits = integer.content.get('bits');
    if (bits instanceof NQPInt) {
      this.bits = bits.value;
    } else {
      throw 'bits to P6int.compose must be a native int';
    }
  }
};

P6int.prototype.allocate = basicAllocate;
P6int.prototype.deserializeFinish = function(obj, data) {
  // TODO integers bigger than 32bit
  obj.value = data.varint();
};

P6int.prototype.serialize = function(data, obj) {
  // TODO integers bigger than 32bit
  data.varint(obj.value);
};

P6int.prototype.generateBoxingMethods = function(STable, name) {
  STable.addInternalMethod('$$setInt', function(value) {
    this[name] = value;
  });

  STable.addInternalMethod('$$getInt', function() {
    return this[name];
  });
};

reprs.P6int = P6int;

function P6num() {
}

P6num.prototype.boxedPrimitive = 2;

P6num.prototype.allocate = basicAllocate;
P6num.prototype.basicConstructor = basicConstructor;
P6num.prototype.typeObjectFor = basicTypeObjectFor;

// TODO:  handle float/bits stuff
P6num.prototype.compose = noopCompose;

P6num.prototype.createObjConstructor = function(STable) {
  var c = this.basicConstructor(STable);

  STable.objConstructor = c; // HACK it's set again later, we set it for addInternalMethod

  STable.addInternalMethod('$$setNum', function(value) {
    this.value = value;
  });
  STable.addInternalMethod('$$getNum', function() {
    return this.value;
  });
  return c;
};

P6num.prototype.serialize = function(data, obj) {
  data.double(obj.value);
};

P6num.prototype.deserializeFinish = function(obj, data) {
  obj.value = data.double();
};

P6num.prototype.generateBoxingMethods = function(STable, name) {
  STable.addInternalMethod('$$setNum', function(value) {
    this[name] = value;
  });

  STable.addInternalMethod('$$getNum', function() {
    return this[name];
  });
};

reprs.P6num = P6num;

function P6str() {
}

P6str.prototype.boxedPrimitive = 3;

P6str.prototype.typeObjectFor = basicTypeObjectFor;
P6str.prototype.allocate = basicAllocate;
P6str.prototype.basicConstructor = basicConstructor;
P6str.prototype.compose = noopCompose;
P6str.prototype.createObjConstructor = function(STable) {
  var c = this.basicConstructor(STable);

  STable.objConstructor = c; // HACK it's set again later, we set it for addInternalMethod

  STable.addInternalMethod('$$setStr', function(value) {
    this.value = value;
  });
  STable.addInternalMethod('$$getStr', function() {
    return this.value;
  });
  return c;
};

P6str.prototype.serialize = function(data, obj) {
  data.str(obj.value);
};

P6str.prototype.deserializeFinish = function(obj, data) {
  obj.value = data.str();
};

P6str.prototype.generateBoxingMethods = function(STable, name) {
  STable.addInternalMethod('$$setStr', function(value) {
    this[name] = value;
  });

  STable.addInternalMethod('$$getStr', function() {
    return this[name];
  });
};

reprs.P6str = P6str;

function NFA() {
}
NFA.prototype.createObjConstructor = basicConstructor;
NFA.prototype.deserializeFinish = function(obj, data) {
  // STUB
};
NFA.prototype.typeObjectFor = basicTypeObjectFor;
NFA.prototype.allocate = basicAllocate;
NFA.prototype.compose = noopCompose;
reprs.NFA = NFA;

function VMArray() {
}
VMArray.prototype.createObjConstructor = basicConstructor;

VMArray.prototype.deserializeFinish = function(obj, data) {
  console.log('deserializing VMArray');
  // STUB
};
VMArray.prototype.typeObjectFor = basicTypeObjectFor;

VMArray.prototype.deserializeReprData = function(cursor) {
  this.type = cursor.variant();
  /* TODO - type */
};

VMArray.prototype.serializeReprData = function(st, cursor) {
  cursor.ref(this.type);
};

VMArray.prototype.deserializeArray = function(obj, data) {
  if (this.type !== null) {
    console.log('NYI: VMArrays of a type different then null');
  }
  var size = data.varint();
  for (var i = 0; i < size; i++) {
    obj.array[i] = data.variant();
  }
};

// HACK
VMArray.prototype.allocate = basicAllocate;

VMArray.prototype.compose = function(STable, reprInfoHash) {
  if (reprInfoHash.content.get('array')) {
    this.type = reprInfoHash.content.get('array').content.get('type');
  }
};

reprs.VMArray = VMArray;

function VMIter() {
}
VMIter.prototype.createObjConstructor = basicConstructor;
VMIter.prototype.deserializeFinish = function(obj, data) {
  console.log('deserializing VMIter');
  // STUB
};
VMIter.prototype.typeObjectFor = basicTypeObjectFor;
reprs.VMIter = VMIter;

var bignum = require('bignum');

function makeBI(STable, num) {
  var instance = STable.REPR.allocate(STable);
  instance.$$setBignum(num);
  return instance;
}

function getBI(obj) {
  return obj.$$getBignum();
}

function P6bigint() {
}

/* HACK - we should just do flattening properly instead of a weird flag */
P6bigint.prototype.flattenSTable = true;

P6bigint.prototype.createObjConstructor = basicConstructor;

P6bigint.prototype.typeObjectFor = basicTypeObjectFor;

P6bigint.prototype.setup_STable = function(STable) {
  STable.addInternalMethod('$$setInt', function(value) {
    this.value = bignum(value);
  });

  STable.addInternalMethod('$$getInt', function() {
    return this.value.toNumber() | 0;
  });

  STable.addInternalMethod('$$setBignum', function(value) {
    this.value = value;
  });

  STable.addInternalMethod('$$getBignum', function() {
    return this.value;
  });
};

P6bigint.prototype.deserializeFinish = function(obj, data) {
  if (data.varint() == 1) { /* Is it small int? */
    obj.value = bignum(data.varint());
  } else {
    obj.value = bignum(data.str());
  }
};

P6bigint.prototype.serialize = function(cursor, obj) {
  var isSmall = 0; /* TODO - check */

  cursor.varint(isSmall);
  if (isSmall) {
    cursor.varint(obj.value.toNumber());
  } else {
    cursor.str(obj.value.toString());
  }
};

function makeBI(STable, num) {
  var instance = STable.REPR.allocate(STable);
  instance.$$setBignum(num);
  return instance;
}

function getBI(obj) {
  return obj.$$getBignum();
}

P6bigint.prototype.generateBoxingMethods = function(STable, name, attrSTable) {
  STable.addInternalMethod('$$setInt', function(value) {
    this[name] = makeBI(attrSTable, bignum(value));
  });

  STable.addInternalMethod('$$getInt', function() {
    return getBI(this[name]).toNumber();
  });

  STable.addInternalMethod('$$getBignum', function() {
    return getBI(this[name]);
  });

  STable.addInternalMethod('$$setBignum', function(num) {
    this[name] = makeBI(attrSTable, num);
  });
};

P6bigint.prototype.allocate = basicAllocate;
P6bigint.prototype.compose = noopCompose;
reprs.P6bigint = P6bigint;


/* Stubs */

function NativeCall() {}
NativeCall.prototype.createObjConstructor = basicConstructor;
NativeCall.prototype.allocate = basicAllocate;
NativeCall.prototype.typeObjectFor = basicTypeObjectFor;
NativeCall.prototype.compose = noopCompose;
reprs.NativeCall = NativeCall;

function CPointer() {}
CPointer.prototype.createObjConstructor = basicConstructor;
CPointer.prototype.typeObjectFor = basicTypeObjectFor;
CPointer.prototype.compose = noopCompose;
reprs.CPointer = CPointer;

function ReentrantMutex() {}
ReentrantMutex.prototype.createObjConstructor = basicConstructor;
ReentrantMutex.prototype.allocate = basicAllocate;
ReentrantMutex.prototype.typeObjectFor = basicTypeObjectFor;

reprs.ReentrantMutex = ReentrantMutex;

function ConditionVariable() {}
ConditionVariable.prototype.createObjConstructor = basicConstructor;

reprs.ConditionVariable = ConditionVariable;

function MultiDimArray() {

}
MultiDimArray.prototype.typeObjectFor = basicTypeObjectFor;
MultiDimArray.prototype.compose = function(STable, reprInfoHash) {
  var array = reprInfoHash.content.get('array');
  var dimensions = array.content.get('dimensions');

  var type = reprInfoHash.content.get('array').content.get('type');

  if (type) {
    STable.primType = type._STable.REPR.boxedPrimitive;
  } else {
    STable.primType = 0;
  }

  STable.type = type || null;

  if (dimensions instanceof NQPInt) {
    dimensions = dimensions.value;
    if (dimensions === 0) {
      throw new NQPException('MultiDimArray REPR must be composed with at least 1 dimension');
    }

  } else {
    throw 'dimensions to MultiDimArray.compose must be a native int';
  }

  //  console.log('dimensions', dimensions);
  STable.dimensions = dimensions;
};
MultiDimArray.prototype.allocate = basicAllocate;

MultiDimArray.prototype.createObjConstructor = basicConstructor;

MultiDimArray.prototype.setup_STable = function(STable) {
  STable.addInternalMethod('$$numdimensions', function(value) {
    if (this.typeObject_) {
      throw new NQPException('Cannot get number of dimensions of a type object');
    }
    return STable.dimensions;
  });

  STable.addInternalMethod('$$clone', function() {
    var clone = new this._STable.objConstructor();
    clone.storage = this.storage.slice();
    clone.dimensions = this.dimensions;
    return clone;
  });

  STable.addInternalMethod('$$dimensions', function() {
    if (this.typeObject_) {
      throw new NQPException('Cannot get dimensions of a type object');
    }
    return new NQPArray(this.dimensions);
  });

  STable.addInternalMethod('$$setdimensions', function(value) {
    if (value.array.length != STable.dimensions) {
      throw new NQPException('Array type of ' + STable.dimensions + ' dimensions cannot be intialized with ' + value.length + ' dimensions');
    } else if (this.dimensions) {
      throw new NQPException('Can only set dimensions once');
    }
    this.storage = [];
    return (this.dimensions = value.array);
  });

  STable.addInternalMethod('$$pop', function() {
    throw new NQPException('Cannot pop a fixed dimension array');
  });

  STable.addInternalMethod('$$shift', function() {
    throw new NQPException('Cannot shift a fixed dimension array');
  });

  STable.addInternalMethod('$$unshift', function(value) {
    throw new NQPException('Cannot unshift a fixed dimension array');
  });

  STable.addInternalMethod('$$push', function(value) {
    throw new NQPException('Cannot push a fixed dimension array');
  });

  STable.addInternalMethod('$$splice', function(value) {
    throw new NQPException('Cannot splice a fixed dimension array');
  });

  STable.addInternalMethod('$$calculateIndex', function(idx, value) {
    idx = idx.array;
    if (idx.length != STable.dimensions) {
      throw new NQPException('Cannot access ' + STable.dimensions + ' dimension array with ' + idx.length + ' indices');
    }

    for (var i = 0; i < idx.length; i++) {
      if (idx[i] < 0 || idx[i] >= this.dimensions[i]) {
        throw new NQPException('Index ' + idx[i] + ' for dimension ' + (i + 1) + ' out of range (must be 0..' + this.dimensions[i] + ')');
      }
    }
    var calculatedIdx = 0;
    for (var i = 0; i < idx.length; i++) {
      calculatedIdx = calculatedIdx * this.dimensions[i] + idx[i];
    }
    return calculatedIdx;
  });

  STable.addInternalMethod('$$atposnd', function(idx) {
    if (STable.primType != 0) throw new NQPException('wrong type');
    return this.storage[this.$$calculateIndex(idx)];
  });

  STable.addInternalMethod('$$bindposnd', function(idx, value) {
    if (STable.primType != 0) throw new NQPException('wrong type: ' + STable.primType);
    return (this.storage[this.$$calculateIndex(idx)] = value);
  });

  STable.addInternalMethod('$$atposnd_i', function(idx) {
    if (STable.primType != 1) throw new NQPException('wrong type: ' + STable.primType);
    return this.storage[this.$$calculateIndex(idx)];
  });

  STable.addInternalMethod('$$bindposnd_i', function(idx, value) {
    if (STable.primType != 1) throw new NQPException('wrong type' + STable.primType);
    return (this.storage[this.$$calculateIndex(idx)] = value);
  });

  STable.addInternalMethod('$$atposnd_n', function(idx) {
    if (STable.primType != 2) throw new NQPException('wrong type');
    return this.storage[this.$$calculateIndex(idx)];
  });

  STable.addInternalMethod('$$bindposnd_n', function(idx, value) {
    if (STable.primType != 2) throw new NQPException('wrong type');
    return (this.storage[this.$$calculateIndex(idx)] = value);
  });

  STable.addInternalMethod('$$atposnd_s', function(idx) {
    if (STable.primType != 3) throw new NQPException('wrong type');
    return this.storage[this.$$calculateIndex(idx)];
  });

  STable.addInternalMethod('$$bindposnd_s', function(idx, value) {
    if (STable.primType != 3) throw new NQPException('wrong type');
    return (this.storage[this.$$calculateIndex(idx)] = value);
  });

  // TODO optimize access
  STable.addInternalMethod('$$bindpos', function(index, value) {
    return this.$$bindposnd(new NQPArray([index]), value);
  });

  STable.addInternalMethod('$$setelems', function(elems) {
    this.$$setdimensions(new NQPArray([elems]));
  });

  STable.addInternalMethod('$$elems', function(elems) {
    return this.dimensions[0];
  });

  STable.addInternalMethod('$$atpos', function(index) {
    return this.$$atposnd(new NQPArray([index]));
  });
};

MultiDimArray.prototype.serializeReprData = function(st, cursor) {
  if (st.dimensions) {
    cursor.varint(st.dimensions);
    cursor.ref(st.type);
  } else {
    cursor.varint(0);
  }

};

MultiDimArray.prototype.deserializeReprData = function(cursor, STable) {
  var dims = cursor.varint();
  if (dims > 0) {
    STable.dimensions = dims;
    STable.type = cursor.variant();
    STable.primType = STable.type ? STable.type._STable.REPR.boxedPrimitive : 0;
  }
};

MultiDimArray.prototype.valuesSize = function(obj) {
  var size = 1;
  for (var i = 0; i < obj.dimensions.length; i++) {
    size = size * obj.dimensions[i];
  }
  return size;
};

MultiDimArray.prototype.serialize = function(cursor, obj) {
  for (var i = 0; i < obj._STable.dimensions; i++) {
    cursor.varint(obj.dimensions[i]);
  }
  var size = this.valuesSize(obj);
  for (var i = 0; i < size; i++) {
    switch (obj._STable.primType) {
      case 0:
        cursor.ref(obj.storage[i]);
        break;
      case 1:
        cursor.varint(obj.storage[i]);
        break;
      case 2:
        cursor.double(obj.storage[i]);
        break;
      case 3:
        cursor.str(obj.storage[i]);
        break;
    }
  }
};

MultiDimArray.prototype.deserializeFinish = function(obj, data) {
  obj.dimensions = [];
  for (var i = 0; i < obj._STable.dimensions; i++) {
    obj.dimensions[i] = data.varint();
  }
  var size = this.valuesSize(obj);
  obj.storage = [];
  for (var i = 0; i < size; i++) {
    switch (obj._STable.primType) {
      case 0:
        obj.storage[i] = data.variant();
        break;
      case 1:
        obj.storage[i] = data.varint();
        break;
      case 2:
        obj.storage[i] = data.double();
        break;
      case 3:
        obj.storage[i] = data.str();
        break;
    }
  }
};

reprs.MultiDimArray = MultiDimArray;

function VMException() {
}
VMException.prototype.allocate = basicAllocate;
VMException.prototype.typeObjectFor = basicTypeObjectFor;
VMException.prototype.compose = noopCompose;
VMException.prototype.basicTypeObjectFor = basicTypeObjectFor;

VMException.prototype.createObjConstructor = basicConstructor;

VMException.prototype.setup_STable = function(STable) {
  STable.addInternalMethod('$$getStr', function() {
    return this.message;
  });
};

reprs.VMException = VMException;


function NativeRef() {
}
NativeRef.prototype.allocate = basicAllocate;
NativeRef.prototype.createObjConstructor = basicConstructor;
NativeRef.prototype.typeObjectFor = basicTypeObjectFor;
NativeRef.prototype.compose = noopCompose;
reprs.NativeRef = NativeRef;

var ID = 0;
for (var name in reprs) {
  module.exports[name] = reprs[name];
  reprs[name].prototype.ID = ID;
  reprById[ID] = reprs[name];
  ID++;
}
