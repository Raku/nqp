'use strict';
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

class REPR {
};
REPR.prototype.allocate = basicAllocate;
REPR.prototype.typeObjectFor = basicTypeObjectFor;
REPR.prototype.compose = noopCompose;
REPR.prototype.createObjConstructor = basicConstructor;

class P6opaque {
  allocate(STable) {
    var obj = new STable.objConstructor();
    obj.$$setDefaults();
    return obj;
  }

  deserializeReprData(cursor, STable) {
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

    this.generateAccessors(STable);
    this.generateDefaults(STable);
  }

  hintfor(classHandle, attrName) {
    if (!this.nameToIndexMapping) {
      return -1;
    }
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
  }

  getHint(classHandle, attrName) {
    var hint = this.hintfor(classHandle, attrName);
    if (hint == -1) {
      throw new NQPException("Can't find: " + attrName);
    } else {
      return hint;
    }
  }

  getterForAttr(classHandle, attrName) {
    return '$$getattr$' + this.getHint(classHandle, attrName);
  }

  setterForAttr(classHandle, attrName) {
    return '$$bindattr$' + this.getHint(classHandle, attrName);
  }

  serializeReprData(st, cursor) {
    var numAttrs = st.REPR.flattenedStables.length;
    cursor.varint(numAttrs);

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
  }

  deserializeFinish(obj, data) {
    var attrs = [];

    for (var i = 0; i < this.flattenedStables.length; i++) {
      if (this.flattenedStables[i]) {
        attrs.push(this.flattenedStables[i].REPR.deserializeInline(data));
      } else {
        attrs.push(data.variant());
      }
    }

    for (var mapping of this.nameToIndexMapping) {
      for (var slot of mapping.slots) {
        obj[slotToAttr(slot)] = attrs[slot];
      }
    }
  }

  serialize(cursor, obj) {
    var flattened = obj._STable.REPR.flattenedStables;
    var nqp = require('nqp-runtime');
    if (!flattened) {
      throw 'Representation must be composed before it can be serialized';
    }

    for (var i = 0; i < flattened.length; i++) {
      var value = obj[slotToAttr(i)];

      if (flattened[i] == null) {
        cursor.ref(value);
      } else {
        flattened[i].REPR.serializeInline(cursor, value);
      }
    }
  }

  changeType(obj, newType) {
    // TODO some sanity checks for the new mro being a subset and newType being also a P6opaque
    Object.setPrototypeOf(obj, newType._STable.objConstructor.prototype);
  }

  compose(STable, reprInfoHash) {
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

          slots.push(curAttr);
          names.push(attr.get('name'));

          if (attrType && attrType._STable.REPR.flattenSTable) {
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

          if (attr.get('auto_viv_container')) {
            this.autoVivValues[curAttr] = attr.get('auto_viv_container');
          }

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
    this.mi = mi ? 1 : 0;

    this.generateAccessors(STable);
    this.generateDefaults(STable);
  }

  generateNormalAccessors(STable, slot) {
    var attr = slotToAttr(slot);

    STable.compileAccessor('$$bindattr$' + slot, 'function(value) {\n'
      + 'this.' + attr + ' = value;\n'
      + 'return value;\n'
      + '}\n');

    if (this.autoVivValues && this.autoVivValues[slot]) {
      var autoViv = this.autoVivValues[slot];

      if (this.autoVivValues[slot].typeObject_) {
        STable.addInternalMethod('$$getattr$' + slot, function() {
          var value = this[attr];
          if (value === undefined) {
            this[attr] = autoViv;
            return autoViv;
          }
          return value;
        });
      } else {
        STable.addInternalMethod('$$getattr$' + slot, function() {
          var value = this[attr];
          if (value === undefined) {
            value = autoViv.$$clone();
            this[attr] = value;
          }
          return value;
        });
      }
    } else {
      STable.addInternalMethod('$$getattr$' + slot, function() {
        var value = this[attr];
        if (value === undefined) {
          return null;
        }
        return value;
      });
    }

  }

  generateDefaults(STable) {
    var defaults = {};
    for (var i = 0; i < this.nameToIndexMapping.length; i++) {
      for (var j = 0; j < this.nameToIndexMapping[i].slots.length; j++) {
        let slot = this.nameToIndexMapping[i].slots[j];
        if (this.flattenedStables[slot]) {
          defaults[slotToAttr(slot)] = this.flattenedStables[slot].REPR.flattenedDefault;
        }
      }
    }

    STable.addInternalMethod('$$setDefaults', function() {
      Object.assign(this, defaults);
    });
  }

  generateAccessors(STable) {
    for (var i = 0; i < this.nameToIndexMapping.length; i++) {
      for (var j = 0; j < this.nameToIndexMapping[i].slots.length; j++) {
        let slot = this.nameToIndexMapping[i].slots[j];
        if (this.flattenedStables[slot]) {
          this.flattenedStables[slot].REPR.generateFlattenedAccessors(STable, this.flattenedStables[slot], slot);
        } else {
          this.generateNormalAccessors(STable, slot);
        }
      }
    }
    STable.evalGatheredCode();
    return -1;
  }

  setupSTable(STable) {
    var repr = this;
    for (let suffix of ['', '_s', '_i', '_n']) {
      STable.addInternalMethod('$$bindattr' + suffix, function(classHandle, attrName, value) {
        this[repr.setterForAttr(classHandle, attrName) + suffix](value);
        return value;
      });

      STable.addInternalMethod('$$getattr' + suffix, function(classHandle, attrName) {
        return this[repr.getterForAttr(classHandle, attrName) + suffix]();
      });
    }

    STable.addInternalMethod('$$attrinited', function(classHandle, attrName) {
      var attr = slotToAttr(repr.getHint(classHandle, attrName));
      return (this[attr] == undefined) ? 0 : 1;
    });

  }

};

P6opaque.prototype.createObjConstructor = basicConstructor;
P6opaque.prototype.typeObjectFor = basicTypeObjectFor;

reprs.P6opaque = P6opaque;

class KnowHOWREPR {
  deserializeFinish(obj, data) {
    obj.__name = data.str();
    obj.__attributes = data.variant();
    obj.__methods = data.variant();
  }

  serialize(data, obj) {
    data.str(obj.__name);
    data.ref(obj.__attributes);
    data.ref(obj.__methods);
  }

  allocate(STable) {
    var obj = new STable.objConstructor();
    obj.__methods = new Hash();
    obj.__attributes = new NQPArray([]);
    obj.__name = '<anon>';
    return obj;
  }
};

KnowHOWREPR.prototype.typeObjectFor = basicTypeObjectFor;
KnowHOWREPR.prototype.createObjConstructor = basicConstructor;



reprs.KnowHOWREPR = KnowHOWREPR;

class KnowHOWAttribute {
  deserializeFinish(obj, data) {
    obj.__name = data.str();
  }

  serialize(data, obj) {
    data.str(obj.__name);
  }
};

KnowHOWAttribute.prototype.createObjConstructor = basicConstructor;
KnowHOWAttribute.prototype.typeObjectFor = basicTypeObjectFor;
KnowHOWAttribute.prototype.allocate = basicAllocate;

reprs.KnowHOWAttribute = KnowHOWAttribute;

class Uninstantiable {
};
Uninstantiable.prototype.createObjConstructor = basicConstructor;
Uninstantiable.prototype.typeObjectFor = basicTypeObjectFor;
reprs.Uninstantiable = Uninstantiable;

class P6int extends REPR {
  setupSTable(STable) {
    STable.addInternalMethod('$$setInt', function(value) {
      this.value = value;
    });
    STable.addInternalMethod('$$getInt', function() {
      return this.value;
    });
  }

  compose(STable, reprInfoHash) {
    var integer = reprInfoHash.content.get('integer');
    if (integer) {
      var bits = integer.content.get('bits');
      if (bits instanceof NQPInt) {
        this.bits = bits.value;
      } else {
        throw 'bits to P6int.compose must be a native int';
      }
    }
  }

  deserializeFinish(obj, data) {
    // TODO integers bigger than 32bit
    obj.value = data.varint();
  }

  deserializeInline(data) {
    return data.varint();
  }

  serialize(data, obj) {
    // TODO integers bigger than 32bit
    data.varint(obj.value);
  }

  serializeInline(data, value) {
    // TODO integers bigger than 32bit
    data.varint(value);
  }

  generateBoxingMethods(STable, name) {
    STable.addInternalMethod('$$setInt', function(value) {
      this[name] = value;
    });

    STable.addInternalMethod('$$getInt', function() {
      return this[name];
    });
  }

  generateFlattenedAccessors(ownerSTable, attrContentSTable, slot) {
    var attr = slotToAttr(slot);
    /* TODO - use actual type instead of NQPInt */
    ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
      return new NQPInt(this[attr]);
    });

    ownerSTable.addInternalMethod('$$getattr$' + slot + '_i', function() {
      return this[attr];
    });

    ownerSTable.addInternalMethod('$$bindattr$' + slot + '_i', function(value) {
      this[attr] = value;
      return value;
    });
  }
};

P6int.prototype.flattenedDefault = 0;
P6int.prototype.boxedPrimitive = 1;
P6int.prototype.flattenSTable = true;


reprs.P6int = P6int;


// TODO:  handle float/bits stuff in compose
class P6num extends REPR {
  setupSTable(STable) {
    STable.addInternalMethod('$$setNum', function(value) {
      this.value = value;
    });
    STable.addInternalMethod('$$getNum', function() {
      return this.value;
    });
  }

  serialize(data, obj) {
    data.double(obj.value);
  }

  serializeInline(data, value) {
    data.double(value);
  }

  deserializeFinish(obj, data) {
    obj.value = data.double();
  }

  deserializeInline(data) {
    return data.double();
  }

  generateBoxingMethods(STable, name) {
    STable.addInternalMethod('$$setNum', function(value) {
      this[name] = value;
    });

    STable.addInternalMethod('$$getNum', function() {
      return this[name];
    });
  }

  generateFlattenedAccessors(ownerSTable, attrContentSTable, slot) {
    var attr = slotToAttr(slot);

    /* TODO wrap object more correctly */

    ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
      return this[attr];
    });

    ownerSTable.addInternalMethod('$$getattr$' + slot + '_n', function() {
      return this[attr];
    });

    ownerSTable.addInternalMethod('$$bindattr$' + slot + '_n', function(value) {
      this[attr] = value;
      return value;
    });
  }
};

P6num.prototype.boxedPrimitive = 2;
P6num.prototype.flattenSTable = true;
P6num.prototype.flattenedDefault = 0.0;

reprs.P6num = P6num;

class P6str extends REPR {
  setupSTable(STable) {
    STable.addInternalMethod('$$setStr', function(value) {
      this.value = value;
    });
    STable.addInternalMethod('$$getStr', function() {
      return this.value;
    });
  }

  serialize(data, obj) {
    data.str(obj.value);
  }

  serializeInline(data, value) {
    data.str(value);
  }

  deserializeFinish(obj, data) {
    obj.value = data.str();
  }

  deserializeInline(data) {
    return data.str();
  }

  generateBoxingMethods(STable, name) {
    STable.addInternalMethod('$$setStr', function(value) {
      this[name] = value;
    });

    STable.addInternalMethod('$$getStr', function() {
      return this[name];
    });
  }

  generateFlattenedAccessors(ownerSTable, attrContentSTable, slot) {
    var attr = slotToAttr(slot);
    ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
      return this[attr];
    });

    ownerSTable.addInternalMethod('$$getattr$' + slot + '_s', function() {
      return this[attr];
    });

    ownerSTable.addInternalMethod('$$bindattr$' + slot + '_s', function(value) {
      this[attr] = value;
      return value;
    });
  }
};

P6str.prototype.boxedPrimitive = 3;
P6str.prototype.flattenSTable = true;
P6str.prototype.flattenedDefault = null;


reprs.P6str = P6str;

class NFA extends REPR {
  deserializeFinish(obj, data) {
    // STUB
  }
};

reprs.NFA = NFA;

// TODO rework VMArray to be more correct
class VMArray extends REPR {
  deserializeFinish(obj, data) {
    // STUB
  }

  deserializeReprData(cursor) {
    this.type = cursor.variant();
    /* TODO - type */
  }

  serializeReprData(st, cursor) {
    cursor.ref(this.type);
  }

  deserializeArray(obj, data) {
    if (this.type !== null) {
      console.log('NYI: VMArrays of a type different then null');
    }
    var size = data.varint();
    for (var i = 0; i < size; i++) {
      obj.array[i] = data.variant();
    }
  }

  compose(STable, reprInfoHash) {
    if (reprInfoHash.content.get('array')) {
      this.type = reprInfoHash.content.get('array').content.get('type');
    }
  }
};

reprs.VMArray = VMArray;


class VMIter {
  deserializeFinish(obj, data) {
    // STUB
    console.log('deserializing VMIter');
  }
};

VMIter.prototype.createObjConstructor = basicConstructor;
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

class P6bigint extends REPR {
  setupSTable(STable) {
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
  }

  generateFlattenedAccessors(ownerSTable, attrContentSTable, slot) {
    var attr = slotToAttr(slot);

    ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
      var value = this[attr] || bignum(0);
      return makeBI(attrContentSTable, value);;
    });

    ownerSTable.addInternalMethod('$$bindattr$' + slot, function(value) {
      this[attr] = getBI(value);
      return value;
    });
  }

  deserializeFinish(obj, data) {
    if (data.varint() == 1) { /* Is it small int? */
      obj.value = bignum(data.varint());
    } else {
      obj.value = bignum(data.str());
    }
  }

  deserializeInline(data) {
    if (data.varint() == 1) { /* Is it small int? */
      return bignum(data.varint());
    } else {
      return bignum(data.str());
    }
  }

  serialize(cursor, obj) {
    var isSmall = 0; /* TODO - check */

    cursor.varint(isSmall);
    if (isSmall) {
      cursor.varint(obj.value.toNumber());
    } else {
      cursor.str(obj.value.toString());
    }
  }

  serializeInline(data, value) {
    var isSmall = 0; /* TODO - check */

    data.varint(isSmall);
    if (isSmall) {
      data.varint(value.toNumber());
    } else {
      data.str(value.toString());
    }
  }

  generateBoxingMethods(STable, name) {
    STable.addInternalMethod('$$setInt', function(value) {
      this[name] = bignum(value);
    });

    STable.addInternalMethod('$$getInt', function() {
      return this[name].toNumber();
    });

    STable.addInternalMethod('$$getBignum', function() {
      return this[name];
    });

    STable.addInternalMethod('$$setBignum', function(num) {
      this[name] = num;
    });
  }
};

P6bigint.prototype.flattenSTable = true;
P6bigint.prototype.flattenedDefault = bignum(0);

reprs.P6bigint = P6bigint;


/* Stubs */

class NativeCall extends REPR {};
reprs.NativeCall = NativeCall;

class CPointer extends REPR {};
reprs.CPointer = CPointer;

class ReentrantMutex {};
ReentrantMutex.prototype.createObjConstructor = basicConstructor;
ReentrantMutex.prototype.allocate = basicAllocate;
ReentrantMutex.prototype.typeObjectFor = basicTypeObjectFor;

reprs.ReentrantMutex = ReentrantMutex;

class ConditionVariable {};

ConditionVariable.prototype.createObjConstructor = basicConstructor;

reprs.ConditionVariable = ConditionVariable;


class MultiDimArray extends REPR {
  compose(STable, reprInfoHash) {
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
  }



  setupSTable(STable) {
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
  }

  serializeReprData(st, cursor) {
    if (st.dimensions) {
      cursor.varint(st.dimensions);
      cursor.ref(st.type);
    } else {
      cursor.varint(0);
    }
  }

  deserializeReprData(cursor, STable) {
    var dims = cursor.varint();
    if (dims > 0) {
      STable.dimensions = dims;
      STable.type = cursor.variant();
      STable.primType = STable.type ? STable.type._STable.REPR.boxedPrimitive : 0;
    }
  }

  valuesSize(obj) {
    var size = 1;
    for (var i = 0; i < obj.dimensions.length; i++) {
      size = size * obj.dimensions[i];
    }
    return size;
  }

  serialize(cursor, obj) {
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
  }

  deserializeFinish(obj, data) {
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
  }

};

reprs.MultiDimArray = MultiDimArray;

class VMException extends REPR {
  setupSTable(STable) {
    STable.addInternalMethod('$$getStr', function() {
      return this.message;
    });
  }
};


reprs.VMException = VMException;


class NativeRef extends REPR {
  compose(STable, reprInfoHash) {
    var nativeref = reprInfoHash.content.get('nativeref').content;
    var type = nativeref.get('type');
    this.primitiveType = type._STable.REPR.boxedPrimitive;
    this.refkind = nativeref.get('refkind');
  }

  serializeReprData(st, cursor) {
    cursor.varint(this.primitiveType || 0);
    cursor.varint(0);
  }

  deserializeReprData(cursor, STable) {
    this.primitiveType = cursor.varint();
    cursor.varint();
  }
};
reprs.NativeRef = NativeRef;

var ID = 0;
for (var name in reprs) {
  module.exports[name] = reprs[name];
  reprs[name].prototype.ID = ID;
  reprById[ID] = reprs[name];
  ID++;
}
