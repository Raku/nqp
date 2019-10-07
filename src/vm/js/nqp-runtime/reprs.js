'use strict';
const sixmodel = require('./sixmodel.js');
const Hash = require('./hash.js');
const NQPInt = require('./nqp-int.js');
const NQPException = require('./nqp-exception.js');
const Null = require('./null.js');
const nullStr = require('./null_s.js');
const iter = require('./iter.js');
const BOOT = require('./BOOT.js');
const core = require('./core.js');
const nqp = require('./runtime.js');

const JSBI = require('jsbi');

const ZERO = JSBI.BigInt(0);


const constants = require('./constants.js');

const ref = process.browser ? null : require('ref-napi');

const Union = null; //process.browser ? null : require('ref-union');

const codecs = require('./codecs.js');

const graphemeRegexp = require('./graphemes.js').regexp;

const nativeArgs = require('./native-args.js');

const NativeIntArg = nativeArgs.NativeIntArg;
const NativeNumArg = nativeArgs.NativeNumArg;
const NativeStrArg = nativeArgs.NativeStrArg;

const EDGE_FATE = 0;
const EDGE_EPSILON = 1;
const EDGE_CODEPOINT = 2;
const EDGE_CODEPOINT_NEG = 3;
const EDGE_CHARCLASS = 4;
const EDGE_CHARCLASS_NEG = 5;
const EDGE_CHARLIST = 6;
const EDGE_CHARLIST_NEG = 7;
const EDGE_CODEPOINT_I = 9;
const EDGE_CODEPOINT_I_NEG = 10;
const EDGE_CHARRANGE = 12;
const EDGE_CHARRANGE_NEG = 13;
const EDGE_CODEPOINT_LL = 14;
const EDGE_CODEPOINT_I_LL = 15;

const EDGE_CODEPOINT_M = 16;
const EDGE_CODEPOINT_M_NEG = 17;
const EDGE_CODEPOINT_M_LL = 18;
const EDGE_CODEPOINT_IM = 19;
const EDGE_CODEPOINT_IM_NEG = 20;
const EDGE_CODEPOINT_IM_LL = 21;
const EDGE_CHARRANGE_M = 22;
const EDGE_CHARRANGE_M_NEG = 23;

const reprs = {};
const reprById = [];

const bignum = require('./bignum.js');


function methodNotFoundError(ctx, obj, name) {
  const handler = ctx ? ctx.$$getHLL().get('method_not_found_error') : undefined;
  if (handler === undefined) {
    throw new NQPException(`Cannot find method '${name}' on object of type ${obj.$$STable.debugName}`);
  } else {
    return handler.$$call(ctx, null, obj, new NativeStrArg(name));
  }
}


function slotToAttr(slot) {
  return 'attr$' + slot;
}

class REPR {
  typeObjectFor(HOW) {
    const st = new sixmodel.STable(this, HOW);
    this.$$STable = st;

    const obj = st.createTypeObject();
    this.$$STable.WHAT = obj;

    return obj;
  }

  allocate(STable) {
    return new STable.ObjConstructor();
  }

  compose(obj, reprInfo) {
  }

  createObjConstructor(STable) {
    const ObjConstructor = function() {};
    const handler = {};
    handler.get = function(target, jsName) {
      if (jsName.substr(0, 2) === '$$') {
        return undefined;
      } else if (jsName.substr(0, 3) == 'p6$') {
        const name = jsName.substr(3);

        if (STable.lazyMethodCache) {
          STable.setMethodCache(STable.methodCache);
          const method = STable.methodCache.get(name);
          if (method !== undefined) {
            return STable.ObjConstructor.prototype[jsName];
          }
        }

        if (STable.modeFlags & constants.METHOD_CACHE_AUTHORITATIVE) {
          return function(ctx, _NAMED, obj) {
            return methodNotFoundError(ctx, obj, name);
          };
        }


        return /*async*/ function() {
          const how = this.$$STable.HOW;

          const method = /*await*/ how.p6$find_method(null, null, how, this, new NativeStrArg(name));

          if (method === Null) {
            return methodNotFoundError(arguments[0], arguments[2], name);
          }

          const args = [];
          for (let i = 0; i < arguments.length; i++) {
            args.push(arguments[i]);
          }
          return method.$$apply(args);
        };
      } else {
        console.log('unprefixed js method', jsName);
        return undefined;
      }
    };


    ObjConstructor.prototype = Object.create(new Proxy({}, handler));
    ObjConstructor.prototype.$$STable = STable;

    const inspect = Symbol.for('nodejs.util.inspect.custom');
    ObjConstructor.prototype[inspect] = () => {
      return '...' + STable.REPR.name + '...';
    };

    ObjConstructor.prototype.$$SC = undefined;
    ObjConstructor.prototype._WHERE = undefined;
    ObjConstructor.prototype.then = undefined;

    return ObjConstructor;
  }

  boxedPrimitive() {
    return 0;
  }
};

class REPRWithAttributes extends REPR {
  deserializeNameToIndexMapping(cursor) {
    const numClasses = cursor.varint();
    this.nameToIndexMapping = [];

    const slots = [];

    for (let i = 0; i < numClasses; i++) {
      this.nameToIndexMapping[i] = {slots: [], names: [], classKey: cursor.variant()};

      const numAttrs = cursor.varint();

      for (let j = 0; j < numAttrs; j++) {
        const name = cursor.str();
        const slot = cursor.varint();

        this.nameToIndexMapping[i].names[j] = name;
        this.nameToIndexMapping[i].slots[j] = slot;


        slots[slot] = name;
      }
    }
  }

  serializeNameToIndexMapping(cursor) {
    cursor.varint(this.nameToIndexMapping.length);
    for (let i = 0; i < this.nameToIndexMapping.length; i++) {
      cursor.ref(this.nameToIndexMapping[i].classKey);

      const numAttrs = this.nameToIndexMapping[i].names.length;

      cursor.varint(numAttrs);

      for (let j = 0; j < numAttrs; j++) {
        cursor.str(this.nameToIndexMapping[i].names[j]);
        cursor.varint(this.nameToIndexMapping[i].slots[j]);
      }
    }
  }

  generateUniversalAccessor(STable, name, action, extraSig, scwb, actionDescription) {
    let code = 'function(classHandle, attrName' + extraSig + ') {\n' +
        (scwb ? 'if (this.$$SC !== undefined) this.$$scwb();\n' : '') +
        'switch (classHandle) {\n';
    let classKeyIndex = 0;
    let setup = '';
    if (this.nameToIndexMapping) {
      for (let i = 0; i < this.nameToIndexMapping.length; i++) {
        const classKey = 'classKey' + classKeyIndex;
        setup += 'var ' + classKey + ' = STable.REPR.nameToIndexMapping[' + i + '].classKey;\n';
        code += 'case ' + classKey + ': switch (attrName) {\n';
        for (let j = 0; j < this.nameToIndexMapping[i].slots.length; j++) {
          const slot = this.nameToIndexMapping[i].slots[j];
          code += 'case \'' + this.nameToIndexMapping[i].names[j] + '\':' + action(slot) + ';\n';
        }
        code += '}\n';
        classKeyIndex++;
      }
    }
    code += `default: throw new NQPException('P6opaque: no such attribute \\'' + attrName + '\\' in type ' + classHandle.$$STable.debugName + ' when trying to ${actionDescription}')`;
    code += '}\n}\n';
    STable.compileAccessor(name, code, setup);
  }
};

class P6opaque extends REPRWithAttributes {
  allocate(STable) {
    const obj = new STable.ObjConstructor();
    obj.$$setDefaults();
    return obj;
  }

  deserializeReprData(cursor, STable) {
    this.deserialized = 1;
    const numAttributes = cursor.varint();
    this.flattenedSTables = [];
    for (let i = 0; i < numAttributes; i++) {
      const notNull = cursor.varint();
      this.flattenedSTables.push(notNull != 0 ? cursor.locateThing('rootSTables') : null);
    }
    this.mi = cursor.varint();
    const hasAutoVivValues = cursor.varint();
    if (hasAutoVivValues != 0) {
      this.autoVivValues = [];
      for (let i = 0; i < numAttributes; i++) {
        this.autoVivValues.push(cursor.variant());
      }
    }

    this.unboxIntSlot = cursor.varint();
    this.unboxNumSlot = cursor.varint();
    this.unboxStrSlot = cursor.varint();

    const hasUnboxSlots = cursor.varint();
    if (hasUnboxSlots != 0) {
      this.unboxSlots = [];
      for (let i = 0; i < numAttributes; i++) {
        const reprId = cursor.varint();
        const slot = cursor.varint();
        if (reprId != 0) {
          this.unboxSlots.push({slot: slot, reprId: reprId});
        }
      }
    }

    this.deserializeNameToIndexMapping(cursor);

    this.positionalDelegateSlot = cursor.varint();
    this.associativeDelegateSlot = cursor.varint();

    if (this.positionalDelegateSlot != -1) {
      STable.setPositionalDelegate(slotToAttr(this.positionalDelegateSlot));
    }
    if (this.associativeDelegateSlot != -1) {
      STable.setAssociativeDelegate(slotToAttr(this.associativeDelegateSlot));
    }

    if (this.unboxSlots) {
      for (let i = 0; i < this.unboxSlots.length; i++) {
        const slot = this.unboxSlots[i].slot;
        (new reprById[this.unboxSlots[i].reprId]).generateBoxingMethods(STable, slotToAttr(slot), this.flattenedSTables[slot]);
      }
    }

    this.generateAccessors(STable);
  }

  hintfor(classHandle, attrName) {
    if (!this.nameToIndexMapping) {
      return -1;
    }
    for (let i = 0; i < this.nameToIndexMapping.length; i++) {
      if (this.nameToIndexMapping[i].classKey === classHandle) {
        for (let j = 0; j < this.nameToIndexMapping[i].slots.length; j++) {
          if (this.nameToIndexMapping[i].names[j] === attrName) {
            return this.nameToIndexMapping[i].slots[j];
          }
        }
      }
    }
    return -1;
  }

  getHint(classHandle, attrName) {
    const hint = this.hintfor(classHandle, attrName);
    if (hint == -1) {
      throw new NQPException(`Can't find: ${attrName}`);
    } else {
      return hint;
    }
  }

  getterForAttr(classHandle, attrName) {
    return '$$getattr$' + this.getHint(classHandle, attrName);
  }

  serializeReprData(st, cursor) {
    const numAttrs = st.REPR.flattenedSTables.length;
    cursor.varint(numAttrs);

    for (let i = 0; i < numAttrs; i++) {
      if (st.REPR.flattenedSTables[i] == null) {
        cursor.varint(0);
      } else {
        cursor.varint(1);
        cursor.stableRef(st.REPR.flattenedSTables[i]);
      }
    }

    cursor.varint(st.REPR.mi ? 1 : 0);


    if (st.REPR.autoVivValues) {
      cursor.varint(1);
      for (let i = 0; i < numAttrs; i++) {
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
      for (let i = 0; i < numAttrs; i++) {
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

    this.serializeNameToIndexMapping(cursor);

    cursor.varint(this.positionalDelegateSlot);
    cursor.varint(this.associativeDelegateSlot);
  }

  deserializeFinish(obj, data) {
    for (let i = 0; i < this.flattenedSTables.length; i++) {
      const attr = this.flattenedSTables[i] ? this.flattenedSTables[i].REPR.deserializeInline(data) : data.variantWithUndefined();
      obj[slotToAttr(i)] = attr;
    }
  }

  serialize(cursor, obj) {
    const flattened = obj.$$STable.REPR.flattenedSTables;
    if (!flattened) {
      throw 'Representation must be composed before it can be serialized';
    }

    for (let i = 0; i < flattened.length; i++) {
      const value = obj[slotToAttr(i)];

      if (flattened[i] == null) {
        cursor.ref(value);
      } else {
        flattened[i].REPR.serializeInline(cursor, value);
      }
    }
  }

  changeType(obj, newType) {
    if (!(newType.$$STable.REPR instanceof P6opaque)) {
      throw new NQPException(
        `New type for ${obj.$$STable.debugName} must have a matching representation (P6opaque vs ${newType.$$STable.REPR.name})"`
      );
    }

    const newREPR = newType.$$STable.REPR;

    const newMapping = newREPR.nameToIndexMapping;
    const currentMapping = obj.$$STable.REPR.nameToIndexMapping;

    /* Ensure the MRO prefixes match up. */
    let currentIndex = 0;
    let newIndex = 0;

    while (currentIndex < currentMapping.length
      && currentMapping[currentIndex].slots.length == 0) currentIndex++;

    while (newIndex < newMapping.length
      && newMapping[newIndex].slots.length == 0) newIndex++;

    while (currentIndex < currentMapping.length) {
      if (newIndex >= newMapping.length
        || newMapping[newIndex].classKey !== currentMapping[currentIndex].classKey) {
        throw new NQPException(
          `Incompatible MROs in P6opaque rebless for types %s and %s`
        );
      }
      newIndex++;
      currentIndex++;
    }

    for (let i = 0; i < newREPR.nameToIndexMapping.length; i++) {
      for (let j = 0; j < newREPR.nameToIndexMapping[i].slots.length; j++) {
        const slot = newREPR.nameToIndexMapping[i].slots[j];
        const defaultValue = newREPR.flattenedSTables[slot] ?
            newREPR.flattenedSTables[slot].REPR.flattenedDefaultObj :
            undefined;
        const attr = slotToAttr(slot);
        if (!Object.prototype.hasOwnProperty.call(obj, attr)) {
          obj[attr] = defaultValue;
        }
      }
    }

    Object.setPrototypeOf(obj, newType.$$STable.ObjConstructor.prototype);
  }

  compose(STable, reprInfoHash) {
    /* Get attribute part of the protocol from the hash. */
    const reprInfo = reprInfoHash.content.get('attribute').array;

    /* Go through MRO and find all classes with attributes and build up
     * mapping info hashes. Note, reverse order so indexes will match
     * those in parent types. */

    this.unboxIntSlot = -1;
    this.unboxNumSlot = -1;
    this.unboxStrSlot = -1;

    this.positionalDelegateSlot = -1;
    this.associativeDelegateSlot = -1;

    let curAttr = 0;
    this.nameToIndexMapping = [];
    this.flattenedSTables = [];
    let mi = false;

    this.autoVivValues = [];

    for (let i = reprInfo.length - 1; i >= 0; i--) {
      const entry = reprInfo[i].array;
      const type = entry[0];
      const attrs = entry[1].array;
      const parents = entry[2].array;

      /* If it has any attributes, give them each indexes and put them
         * in the list to add to the layout. */
      const numAttrs = attrs.length;
      if (numAttrs > 0) {
        const names = [];
        const slots = [];

        for (let j = 0; j < numAttrs; j++) {
          const attr = attrs[j].content;

          const attrType = attr.get('type');
          /* old boxing method generation */
          if (attr.get('box_target')) {
            const REPR = attrType.$$STable.REPR;
            if (!this.unboxSlots) this.unboxSlots = [];
            this.unboxSlots.push({slot: curAttr, reprId: REPR.ID});
            if (!REPR.generateBoxingMethods) {
              console.log('we do not have a generateBoxingMethods');
              console.log(REPR.name);
            }
            REPR.generateBoxingMethods(STable, slotToAttr(curAttr), attrType.$$STable);
          }

          slots.push(curAttr);
          names.push(attr.get('name').$$getStr());

          if (attrType !== undefined && attrType !== Null && attrType.$$STable.REPR.flattenSTable) {
            this.flattenedSTables.push(attrType.$$STable);
          } else {
            this.flattenedSTables.push(null);
          }

          if (attr.get('positional_delegate')) {
            this.positionalDelegateSlot = curAttr;
            this.$$STable.setPositionalDelegate(slotToAttr(this.positionalDelegateSlot));
          }

          if (attr.get('associative_delegate')) {
            this.associativeDelegateSlot = curAttr;
            this.$$STable.setAssociativeDelegate(slotToAttr(this.associativeDelegateSlot));
          }

          if (attr.get('auto_viv_container')) {
            this.autoVivValues[curAttr] = attr.get('auto_viv_container');
          } else {
            this.autoVivValues[curAttr] = Null;
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
  }

  generateUniversalAccessors(STable) {
    this.generateUniversalAccessor(STable, '$$getattr', function(slot) {
      return 'return this.$$getattr$' + slot + '()';
    }, '', false, 'get a value');

    this.generateUniversalAccessor(STable, '$$bindattr', function(slot) {
      return 'return this.$$bindattr$' + slot + '(value)';
    }, ', value', false, 'bind a value');

    const suffixes = ['_s', '_i', '_n', '_i64', '_u64'];
    for (const suffix of suffixes) {
      /* TODO only check attributes of proper type */
      this.generateUniversalAccessor(STable, '$$getattr' + suffix, function(slot) {
        return 'return this.' + slotToAttr(slot);
      }, '', false, 'get a value');

      this.generateUniversalAccessor(STable, '$$bindattr' + suffix, function(slot) {
        return 'return (this.' + slotToAttr(slot) + ' = value)';
      }, ', value', true, 'bind a value');
    }
  }

  generateNormalAccessors(STable, slot) {
    const attr = slotToAttr(slot);

    STable.compileAccessor('$$bindattr$' + slot, 'function(value) {\n' +
        'this.' + attr + ' = value;\n' +
        'if (this.$$SC !== undefined) this.$$scwb();\n' +
        'return value;\n' +
        '}\n');

    if (this.autoVivValues && this.autoVivValues[slot] !== Null) {
      const isTypeObject = this.autoVivValues[slot].$$typeObject;

      STable.compileAccessor('$$getattr$' + slot, 'function(value) {\n' +
          'var value = this.' + attr + ';\n' +
          'if (value === undefined) {\n' +
          'value = autoViv' + slot + (isTypeObject ? '' : '.$$clone()') + ';\n' +
          'this.' + attr + ' =  value;\n' +
          '}\n' +
          'return value;\n' +
          '}\n', 'var autoViv' + slot + ' = STable.REPR.autoVivValues[' + slot + '];\n');
    } else {
      STable.compileAccessor('$$getattr$' + slot, 'function(value) {\n' +
          'var value = this.' + attr + ';\n' +
          'if (value === undefined) {\n' +
          'return Null;\n' +
          '}\n' +
          'return value;' +
          '}\n'
      );
    }
  }

  generateDefaultsAndClone(STable) {
    let defaults = '';
    let clone = '';

    for (let slot = 0; slot < this.flattenedSTables.length; slot++) {
      const attr = slotToAttr(slot);
      const defaultValue = this.flattenedSTables[slot] ?
          this.flattenedSTables[slot].REPR.flattenedDefault :
          'undefined';
      defaults += 'this.' + attr + ' = ' + defaultValue + ';\n';
      clone += 'cloned.' + attr + ' = this.' + attr + ';';
    }

    STable.compileAccessor('$$setDefaults', 'function() {\n' + defaults + '}');
    STable.compileAccessor('$$clone', 'function() {var cloned = new this.$$STable.ObjConstructor();' + clone + 'return cloned}');
    STable.evalGatheredCode();
  }

  generateAccessors(STable) {
    for (let i = 0; i < this.nameToIndexMapping.length; i++) {
      for (let j = 0; j < this.nameToIndexMapping[i].slots.length; j++) {
        const slot = this.nameToIndexMapping[i].slots[j];
        if (this.flattenedSTables[slot]) {
          this.flattenedSTables[slot].REPR.generateFlattenedAccessors(STable, this.flattenedSTables[slot], slot);
        } else {
          this.generateNormalAccessors(STable, slot);
        }
      }
    }

    this.generateUniversalAccessors(STable);

    this.generateDefaultsAndClone(STable);

    STable.evalGatheredCode();
  }

  setupSTable(STable) {
    const repr = this;
    STable.addInternalMethods(class {
      $$attrinited(classHandle, attrName) {
        const attr = slotToAttr(repr.getHint(classHandle, attrName));
        return (this[attr] == undefined) ? 0 : 1;
      }
    });

    STable.addCustomInspection(function() {
      const unpacked = {debugName: STable.debugName};

      if (this.$$typeObject) {
        unpacked.typeObject = true;
      } else {
        for (let i = 0; i < repr.nameToIndexMapping.length; i++) {
          for (let j = 0; j < repr.nameToIndexMapping[i].slots.length; j++) {
            const slot = repr.nameToIndexMapping[i].slots[j];
            const name = repr.nameToIndexMapping[i].names[j] + ' (' + repr.nameToIndexMapping[i].classKey.$$STable.debugName + ')';

            unpacked[name] = this[slotToAttr(slot)];
          }
        }
      }
      return unpacked;
    });
  }
};

reprs.P6opaque = P6opaque;

class KnowHOWREPR extends REPR {
  deserializeFinish(obj, data) {
    obj.$$name = data.str();
    obj.$$attributes = data.variant().array;
    obj.$$methods = data.variant();
  }

  serialize(data, obj) {
    data.str(obj.$$name);
    data.ref(BOOT.createArray(obj.$$attributes));
    data.ref(obj.$$methods);
  }

  allocate(STable) {
    const obj = new STable.ObjConstructor();
    obj.$$methods = new Hash();
    obj.$$attributes = [];
    obj.$$name = '<anon>';
    return obj;
  }
};

reprs.KnowHOWREPR = KnowHOWREPR;

class KnowHOWAttribute extends REPR {
  deserializeFinish(obj, data) {
    obj.$$name = data.str();
  }

  serialize(data, obj) {
    data.str(obj.$$name);
  }
};

reprs.KnowHOWAttribute = KnowHOWAttribute;

class Uninstantiable extends REPR {
  allocate(STable) {
    throw new NQPException('You cannot create an instance of this type (' + STable.debugName + ')');
  }
};
reprs.Uninstantiable = Uninstantiable;


const C_TYPE_CHAR = -1;
const C_TYPE_SHORT = -2;
const C_TYPE_INT = -3;
const C_TYPE_LONG = -4;
const C_TYPE_LONGLONG = -5;
const C_TYPE_SIZE_T = -6;
const C_TYPE_BOOL = -7;
const C_TYPE_ATOMIC_INT = -8;

function cType(ctype) {
  switch (ctype) {
    case C_TYPE_CHAR:
      return ref.types.char;
    case C_TYPE_SHORT:
      return ref.types.short;
    case C_TYPE_ATOMIC_INT:
    case C_TYPE_INT:
      return ref.types.int;
    case C_TYPE_LONG:
      return ref.types.long;
    case C_TYPE_LONGLONG:
      return ref.types.longlong;
    case C_TYPE_SIZE_T:
      return ref.types.size_t;
    case C_TYPE_BOOL:
      return ref.types.bool;
  }
}


class P6int extends REPR {
  constructor() {
    super();
    this.bits = 32;
    this.isUnsigned = 0;
  }

  nativeCallSize() {
    return this.bits/8;
  }

  asRefType() {
    if (this.bits === 8) {
      return this.isUnsigned ? ref.types.uint8 : ref.types.int8;
    } else if (this.bits === 16) {
      return this.isUnsigned ? ref.types.uint16 : ref.types.int16;
    } else if (this.bits === 32) {
      return this.isUnsigned ? ref.types.uint32 : ref.types.int32;
    } else {
      throw new NQPException(`Unsupported use in lowlevel contex, bits: ${this.bits}`);
    }
  }

  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$setInt(value) {
        this.value = value;
      }

      $$getInt() {
        return this.value;
      }

      $$decont_i(value) {
        return this.value;
      }
    });
  }

  compose(STable, reprInfoHash) {
    const integer = reprInfoHash.content.get('integer');
    if (integer) {
      const bits = integer.content.get('bits');
      if (bits === undefined) {
      } else if (bits instanceof NQPInt) {
        this.bits = bits.value < 0 ? cType(bits.value).size * 8 : bits.value;
      } else {
        throw 'bits to P6int.compose must be a native int';
      }

      const unsigned = integer.content.get('unsigned');
      if (unsigned) {
        if (unsigned instanceof NQPInt) {
          this.isUnsigned = unsigned.value;
        } else {
          throw 'unsigned to P6int.compose must be a native int';
        }
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
    STable.addInternalMethods(class {
      $$setInt(value) {
        this[name] = value;
      }

      $$getInt() {
        return this[name];
      }

      $$decont_i(ctx) {
        return this[name];
      }
    });
  }

  generateFlattenedAccessors(ownerSTable, attrContentSTable, slot) {
    const attr = slotToAttr(slot);
    if (this.bits == 64) {
      /* HACK - int64 and uint64 attributes are for now set in this werid way */
      ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
        const objectWithAttr = this;
        return new (class {
          $$assign(ctx, value) {
            objectWithAttr[attr] = value.$$getInt64();
          }
        });
      });
    } else {
      ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
        const obj = attrContentSTable.REPR.allocate(attrContentSTable);
        obj.$$setInt(this[attr]);
        return obj;
      });
    }
  }

  generateRefAccessors(ownerSTable, attrContentSTable, slot) {
    const attr = slotToAttr(slot);
    ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
      const obj = attrContentSTable.REPR.allocate(attrContentSTable);
      obj.$$setInt(this.$$data[attr]);
      return obj;
    });

    ownerSTable.addInternalMethod('$$getattr$' + slot + '_i', function() {
      return this.$$data[attr];
    });

    ownerSTable.addInternalMethod('$$bindattr$' + slot + '_i', function(value) {
      return this.$$data[attr] = value;
    });
  }

  serializeReprData(st, cursor) {
    cursor.varint(this.bits);
    cursor.varint(this.isUnsigned);
  }

  deserializeReprData(cursor, STable) {
    this.bits = cursor.varint();
    this.isUnsigned = cursor.varint();
  }

  boxedPrimitive() {
    return this.bits == 64 ? (this.isUnsigned ? 5 : 4) : 1;
  }
};

P6int.prototype.flattenedDefault = '0';
P6int.prototype.flattenSTable = true;


reprs.P6int = P6int;


// TODO:  handle float/bits stuff in compose
class P6num extends REPR {
  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$setNum(value) {
        this.value = value;
      }

      $$getNum() {
        return this.value;
      }

      $$decont_n(value) {
        return this.value;
      }
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
    STable.addInternalMethods(class {
      $$setNum(value) {
        this[name] = value;
      }

      $$getNum() {
        return this[name];
      }

      $$decont_n(ctx) {
        return this[name];
      }
    });
  }

  generateFlattenedAccessors(ownerSTable, attrContentSTable, slot) {
    const attr = slotToAttr(slot);

    ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
      const obj = attrContentSTable.REPR.allocate(attrContentSTable);
      obj.$$setNum(this[attr]);
      return obj;
    });
  }

  boxedPrimitive() {
    return 2;
  }
};

P6num.prototype.flattenSTable = true;
P6num.prototype.flattenedDefault = '0';

reprs.P6num = P6num;

class P6str extends REPR {
  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$setStr(value) {
        this.value = value;
      }

      $$getStr() {
        return this.value;
      }

      $$decont_s(value) {
        return this.value;
      }
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
    STable.addInternalMethods(class {
      $$setStr(value) {
        this[name] = value;
      }

      $$getStr() {
        return this[name];
      }

      $$decont_s(ctx) {
        return this[name];
      }
    });
  }

  generateFlattenedAccessors(ownerSTable, attrContentSTable, slot) {
    const attr = slotToAttr(slot);

    ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
      const obj = attrContentSTable.REPR.allocate(attrContentSTable);
      obj.$$setStr(this[attr]);
      return obj;
    });
  }

  boxedPrimitive() {
    return 3;
  }
};

P6str.prototype.flattenSTable = true;
P6str.prototype.flattenedDefault = 'nullStr';


reprs.P6str = P6str;

class NFA extends REPR {
  deserializeFinish(obj, data) {
    /* Read fates. */

    obj.fates = data.variant();

    /* Read number of states. */

    const numStates = data.varint();

    /* Read state graph. */

    obj.states = [];

    const edgeCount = [];

    for (let i = 0; i < numStates; i++) {
      edgeCount[i] = data.varint();
    }

    for (let i = 0; i < numStates; i++) {
      obj.states[i] = [];
      for (let j = 0; j < edgeCount[i]; j++) {
        const edge = {act: data.varint(), to: data.varint()};
        switch (edge.act & 0xff) {
          case EDGE_EPSILON:
            break;
          case EDGE_FATE:
          case EDGE_CODEPOINT:
          case EDGE_CODEPOINT_LL:
          case EDGE_CODEPOINT_NEG:
          case EDGE_CODEPOINT_M:
          case EDGE_CODEPOINT_M_LL:
          case EDGE_CODEPOINT_M_NEG:
          case EDGE_CHARCLASS:
          case EDGE_CHARCLASS_NEG:
            edge.argI = data.varint();
            break;
          case EDGE_CHARLIST:
          case EDGE_CHARLIST_NEG:
            edge.argS = data.str();
            break;

          case EDGE_CODEPOINT_I:
          case EDGE_CODEPOINT_I_LL:
          case EDGE_CODEPOINT_I_NEG:
          case EDGE_CHARRANGE:
          case EDGE_CHARRANGE_NEG:
          case EDGE_CHARRANGE_M:
          case EDGE_CHARRANGE_M_NEG:
            edge.argLc = data.varint();
            edge.argUc = data.varint();
            break;
          default:
            throw 'NFA deserialization: unknown codepoint type: ' + edge.act;
        }
        obj.states[i].push(edge);
      }
    }
  }

  serialize(cursor, obj) {
    /* Write fates. */

    cursor.ref(obj.fates);

    /* Write number of states. */

    cursor.varint(obj.states.length);

    /* Write state edge list counts. */

    for (let i = 0; i < obj.states.length; i++) {
      cursor.varint(obj.states[i].length);
    }

    /* Write state graph. */

    for (let i = 0; i < obj.states.length; i++) {
      for (let j = 0; j < obj.states[i].length; j++) {
        const edge = obj.states[i][j];

        cursor.varint(edge.act);
        cursor.varint(edge.to);

        switch (edge.act & 0xff) {
          case EDGE_EPSILON:
            break;
          case EDGE_FATE:
          case EDGE_CODEPOINT:
          case EDGE_CODEPOINT_LL:
          case EDGE_CODEPOINT_NEG:
          case EDGE_CHARCLASS:
          case EDGE_CHARCLASS_NEG:
          case EDGE_CODEPOINT_M:
          case EDGE_CODEPOINT_M_LL:
          case EDGE_CODEPOINT_M_NEG:
            cursor.varint(edge.argI);
            break;
          case EDGE_CHARLIST:
          case EDGE_CHARLIST_NEG:
            cursor.str(edge.argS);
            break;
          case EDGE_CODEPOINT_I:
          case EDGE_CODEPOINT_I_LL:
          case EDGE_CODEPOINT_I_NEG:
          case EDGE_CHARRANGE:
          case EDGE_CHARRANGE_NEG:
          case EDGE_CHARRANGE_M:
          case EDGE_CHARRANGE_M_NEG:
            cursor.varint(edge.argLc);
            cursor.varint(edge.argUc);
            break;
          default:
            throw 'NFA serialization - unknown codepoint type: ' + edge.act;
        }
      }
    }
  }
};

reprs.NFA = NFA;

function primType(type) {
  return type !== Null ? (type.$$STable.REPR.boxedPrimitive()): 0;
}

// TODO rework VMArray to be more correct
class VMArray extends REPR {
  allocate(STable) {
    const obj = new STable.ObjConstructor();
    obj.array = [];
    return obj;
  }

  allocateFromArray(STable, array) {
    const obj = new STable.ObjConstructor();
    obj.array = array;
    return obj;
  }

  setupSTableWhenComposed(STable) {
    STable.addInternalMethods(class {
      $$join(delim) {
        const stringified = [];
        for (let i = 0; i < this.array.length; i++) {
          stringified.push(typeof this.array[i] == 'string' ? this.array[i] : this.array[i].$$getStr());
        }
        return stringified.join(delim);
      }

      $$elems() {
        return this.array.length;
      }

      $$existspos(index) {
        if (index < 0) index += this.array.length;
        return (this.array[index] === Null || this.array[index] === undefined) ? 0 : 1;
      }

      $$setelems(elems) {
        this.array.length = elems;
      }

      $$numdimensions() {
        return 1;
      }

      $$setdimensions(dimensions) {
        if (dimensions.array.length != 1) {
          throw new NQPException('A dynamic array can only have a single dimension');
        } else {
          this.array.length = dimensions.array[0];
        }
      }

      $$dimensions(dimensions) {
        return BOOT.createIntArray([this.array.length]);
      }

      $$toArray() {
        return this.array;
      }

      $$numify() {
        return this.array.length;
      }

      $$slice(start, end) {
        start = start < 0 ? this.array.length + start : start;
        end = end < 0 ? this.array.length + end : end;
        if ( end < start || start < 0 || end < 0
             || this.array.length <= start || this.array.length <= end ) {
            throw new NQPException('VMArray: Slice index out of bounds');
        }

        const dest = new STable.ObjConstructor();
        dest.array = this.array.slice(start, end + 1);
        return dest;
      }

      $$splice(source, offset, count) {
        const removing = this.array.length - offset > count ? count : this.array.length - offset;
        // TODO think about the case when the source is not VMArray
        if (removing < source.array.length) {
          this.array.length = this.array.length + source.array.length - removing;
        }

        this.array.copyWithin(offset + source.array.length, offset + removing);

        for (let i = 0; i < source.array.length; i++) {
          this.array[offset + i] = source.array[i];
        }

        if (removing > source.array.length) {
          this.array.length = this.array.length + source.array.length - removing;
        }

        return this;
      }

      $$clone() {
        const cloned = new STable.ObjConstructor();
        cloned.array = this.array.slice();
        return cloned;
      }
    });

    if (this.primType === 0) {
      STable.addInternalMethods(class {
        $$iterator() {
          return new iter.Iter(this.array);
        }

        $$flatArgs() {
          return this.array;
        }

        $$atpos(index) {
          const value = this.array[index < 0 ? this.array.length + index : index];
          if (value === undefined) return Null;
          return value;
        }

        $$bindpos(index, value) {
          if (this.$$SC !== undefined) this.$$scwb();
          return this.array[index < 0 ? this.array.length + index : index] = value;
        }

        $$push(value) {
          if (this.$$SC !== undefined) this.$$scwb();
          this.array.push(value);
          return value;
        }

        $$pop() {
          const value = this.array.pop();
          if (value === undefined) return Null;
          return value;
        }

        $$shift() {
          const value = this.array.shift();
          if (value === undefined) return Null;
          return value;
        }

        $$unshift(value) {
          this.array.unshift(value);
          return value;
        }
      });
    } else if (this.primType === 1 || this.primType === 4 || this.primType == 5) {
      let mangle;
      if (this.type !== Null) {
        const repr = this.type.$$STable.REPR;
        if (repr instanceof P6int) {
          const bits = this.type.$$STable.REPR.bits;
          const shift = 32 - bits;

          if (this.type.$$STable.REPR.isUnsigned) {
            mangle = function(value) {
              const trimmed = (value << shift >> shift);
              const ret = trimmed < 0 ? (1 << bits) + trimmed : trimmed;
              return ret;
            };
          } else {
            if (bits < 32) {
              mangle = value => (value<< shift >> shift);
            }
          }
        }
      }

      STable.addInternalMethod('$$mangle', mangle || (value => value));

      STable.addInternalMethods(class {
        $$flatArgs() {
          return this.array.map(arg => new NativeIntArg(arg));
        }

        $$iterator() {
          return new iter.IterInt(this.array);
        }

        $$push_i(value) {
          if (this.$$SC !== undefined) this.$$scwb();
          this.array.push(this.$$mangle(value));
          return value;
        }

        $$atpos_i(index) {
          const value = this.array[index < 0 ? this.array.length + index : index];
          if (value === undefined) return 0;
          return value;
        }

        $$bindpos_i(index, value) {
          if (this.$$SC !== undefined) this.$$scwb();
          this.array[index < 0 ? this.array.length + index : index] = this.$$mangle(value);
          return value;
        }

        $$pop_i() {
          const value = this.array.pop();
          if (value === undefined) return Null;
          return value;
        }

        $$shift_i() {
          const value = this.array.shift();
          if (value === undefined) return Null;
          return value;
        }

        $$unshift_i(value) {
          this.array.unshift(this.$$mangle(value));
          return value;
        }
      });
    } else if (this.primType === 2) {
      STable.addInternalMethods(class {
        $$flatArgs() {
          return this.array.map(arg => new NativeNumArg(arg));
        }

        $$iterator() {
          return new iter.IterNum(this.array);
        }

        $$atpos_n(index) {
          const value = this.array[index < 0 ? this.array.length + index : index];
          if (value === undefined) return 0.0;
          return value;
        }

        $$bindpos_n(index, value) {
          if (this.$$SC !== undefined) this.$$scwb();
          return this.array[index < 0 ? this.array.length + index : index] = value;
        }

        $$push_n(value) {
          if (this.$$SC !== undefined) this.$$scwb();
          this.array.push(value);
          return value;
        }

        $$pop_n() {
          const value = this.array.pop();
          if (value === undefined) return Null;
          return value;
        }

        $$shift_n() {
          const value = this.array.shift();
          if (value === undefined) return Null;
          return value;
        }

        $$unshift_n(value) {
          this.array.unshift(value);
          return value;
        }
      });
    } else if (this.primType === 3) {
      STable.addInternalMethods(class {
        $$flatArgs() {
          return this.array.map(arg => new NativeStrArg(arg));
        }

        $$iterator() {
          return new iter.IterStr(this.array);
        }

        $$atpos_s(index) {
          const value = this.array[index < 0 ? this.array.length + index : index];
          if (value === undefined) return nullStr;
          return value;
        }

        $$bindpos_s(index, value) {
          if (this.$$SC !== undefined) this.$$scwb();
          return this.array[index < 0 ? this.array.length + index : index] = value;
        }

        $$push_s(value) {
          if (this.$$SC !== undefined) this.$$scwb();
          this.array.push(value);
          return value;
        }

        $$pop_s() {
          const value = this.array.pop();
          if (value === undefined) return Null;
          return value;
        }

        $$shift_s() {
          const value = this.array.shift();
          if (value === undefined) return Null;
          return value;
        }

        $$unshift_s(value) {
          this.array.unshift(value);
          return value;
        }
      });
    } else {
      console.trace('wrong type to VMArray', this.primType);
    }


    const $$atposnd = function(idx) {
      if (idx.array.length != 1) {
        throw new NQPException('A dynamic array can only be indexed with a single dimension');
      }
      const index = idx.array[0] || 0;
      const value = this.array[index < 0 ? this.array.length + index : index];
      if (value === undefined) return Null;
      return value;
    };

    const $$bindposnd = function(idx, value) {
      if (idx.array.length != 1) {
        throw new NQPException('A dynamic array can only be indexed with a single dimension');
      }
      const index = idx.array[0] || 0;
      return (this.array[index] = value);
    };

    const suffixes = ['', '_s', '_i', '_n'];
    for (const suffix of suffixes) {
      STable.addInternalMethod('$$atposnd' + suffix, $$atposnd);
      STable.addInternalMethod('$$bindposnd' + suffix, $$bindposnd);
    }
  }

  deserializeFinish(obj, data) {
    obj.array = [];
    const size = data.varint();
    if (this.primType === 0) {
      for (let i = 0; i < size; i++) {
        obj.array[i] = data.variant();
      }
    } else if (this.primType === 1) {
      for (let i = 0; i < size; i++) {
        obj.array[i] = data.varint();
      }
    } else if (this.primType === 2) {
      for (let i = 0; i < size; i++) {
        obj.array[i] = data.double();
      }
    } else if (this.primType === 3) {
      for (let i = 0; i < size; i++) {
        obj.array[i] = data.str();
      }
    }
  }


  serialize(cursor, obj) {
    cursor.varint(obj.array.length);
    if (this.primType === 0) {
      for (let i = 0; i < obj.array.length; i++) {
        cursor.ref(obj.array[i] === undefined ? Null : obj.array[i]);
      }
    } else if (this.primType === 1) {
      for (let i = 0; i < obj.array.length; i++) {
        cursor.varint(obj.array[i] === undefined ? 0 : obj.array[i]);
      }
    } else if (this.primType === 2) {
      for (let i = 0; i < obj.array.length; i++) {
        cursor.double(obj.array[i] === undefined ? 0 : obj.array[i]);
      }
    } else if (this.primType === 3) {
      for (let i = 0; i < obj.array.length; i++) {
        cursor.str(obj.array[i] === undefined ? nullStr : obj.array[i]);
      }
    }
  }

  deserializeReprData(cursor, STable) {
    this.type = cursor.variant();
    this.primType = primType(this.type);
    this.setupSTableWhenComposed(STable);
  }

  serializeReprData(st, cursor) {
    cursor.ref(this.type);
  }

  compose(STable, reprInfoHash) {
    if (reprInfoHash.content.get('array')) {
      this.type = reprInfoHash.content.get('array').content.get('type') || Null;
    } else {
      this.type = Null;
    }
    this.primType = primType(this.type);
    this.setupSTableWhenComposed(STable);
  }
};

reprs.VMArray = VMArray;

const HashIter = require('./hash-iter.js');

class VMHash extends REPR {
  allocate(STable) {
    const obj = new STable.ObjConstructor();
    obj.content = new Map();
    return obj;
  }

  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$clone() {
        const cloned = new STable.ObjConstructor();
        cloned.content = new Map();
        this.content.forEach(function(value, key, map) {
          cloned.content.set(key, value);
        });
        return cloned;
      }

      $$bindkey(key, value) {
        this.content.set(key, value);
        if (this.$$SC !== undefined) this.$$scwb();
        return value;
      }

      $$atkey(key) {
        return this.content.has(key) ? this.content.get(key) : Null;
      }

      $$existskey(key) {
        return this.content.has(key);
      }

      $$deletekey(key) {
        if (this.$$SC !== undefined) this.$$scwb();
        this.content.delete(key);
        return this;
      }

      $$elems() {
        return this.content.size;
      }

      $$numify() {
        return this.$$elems();
      }

      $$iterator() {
        return new HashIter(this);
      }

      $$toObject() {
        const ret = {};
        this.content.forEach(function(value, key, map) {
          ret[key] = value;
        });
        return ret;
      }
    });
  }

  deserializeFinish(obj, data) {
    obj.content = new Map();
    const elems = data.varint();
    for (let i = 0; i < elems; i++) {
      const str = data.str();
      obj.content.set(str, data.variant());
    }
  }

  serialize(cursor, obj) {
    cursor.varint(obj.$$elems());
    obj.content.forEach(function(value, key, map) {
      cursor.str(key);
      cursor.ref(value);
    }, this);
  }
};

reprs.VMHash = VMHash;

class VMIter extends REPR {
  deserializeFinish(obj, data) {
    // STUB
    console.log('deserializing VMIter');
  }
};

reprs.VMIter = VMIter;


function makeBI(STable, num) {
  const instance = STable.REPR.allocate(STable);
  instance.$$setBignum(num);
  return instance;
}

function getBI(obj) {
  return obj.$$getBignum();
}

const SIGNED_LIMIT = JSBI.exponentiate(JSBI.BigInt(2), JSBI.BigInt(63));

function getIntFromBI(n) {
  if (JSBI.lessThan(n, JSBI.unaryMinus(SIGNED_LIMIT)) || JSBI.greaterThanOrEqual(n, SIGNED_LIMIT)) {
    throw new NQPException(`Cannot unbox ${bignum.bitSize(n)} bit wide bigint into native integer`);
  } else {
    return Number(n) | 0;
  }
}

function getInt64FromBI(n) {
  if (JSBI.lessThan(n, JSBI.unaryMinus(SIGNED_LIMIT)) || JSBI.greaterThanOrEqual(n, SIGNED_LIMIT)) {
    throw new NQPException(`Cannot unbox ${bignum.bitSize(n)} bit wide bigint into native 64bit integer`);
  } else {
    return n;
  }
}

const UNSIGNED_MAX = JSBI.exponentiate(JSBI.BigInt(2), JSBI.BigInt(64));
function getUint64FromBI(n) {
  if (JSBI.lessThan(n, ZERO)) {
    throw new NQPException(`Cannot unbox negative bigint into unsigned native 64bit integer`);
  } else if (JSBI.greaterThanOrEqual(n, UNSIGNED_MAX)) {
    throw new NQPException(`Cannot unbox ${bignum.bitSize(n)} bit wide bigint into unsigned native 64bit integer`);
  } else {
    return n;
  }
}

class P6bigint extends REPR {
  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$setInt(value) {
        this.value = JSBI.BigInt(value);
      }

      $$setInt64(value) {
        this.value = value;
      }

      $$getInt() {
        return getIntFromBI(this.value);
      }

      $$getInt64() {
        return getInt64FromBI(this.value);
      }

      $$getUint64() {
        return getUint64FromBI(this.value);
      }

      $$setBignum(value) {
        this.value = value;
      }

      $$getBignum() {
        return this.value;
      }

      $$decont_i(ctx) {
        return getIntFromBI(this.value);
      }
    });
  }

  generateFlattenedAccessors(ownerSTable, attrContentSTable, slot) {
    const attr = slotToAttr(slot);

    ownerSTable.addInternalMethod('$$getattr$' + slot, function() {
      const value = this[attr] || ZERO;
      return makeBI(attrContentSTable, value);
    });

    ownerSTable.addInternalMethod('$$bindattr$' + slot, function(value) {
      this[attr] = getBI(value);
      return value;
    });
  }

  deserializeFinish(obj, data) {
    if (data.varint() == 1) { /* Is it small int? */
      obj.value = JSBI.BigInt(data.varint());
    } else {
      obj.value = JSBI.BigInt(data.str());
    }
  }

  deserializeInline(data) {
    if (data.varint() == 1) { /* Is it small int? */
      return JSBI.BigInt(data.varint());
    } else {
      return JSBI.BigInt(data.str());
    }
  }

  serialize(cursor, obj) {
    const isSmall = 0; /* TODO - check */

    cursor.varint(isSmall);
    if (isSmall) {
      cursor.varint(obj.value.toNumber());
    } else {
      cursor.str(obj.value.toString());
    }
  }

  serializeInline(data, value) {
    const isSmall = 0; /* TODO - check */

    data.varint(isSmall);
    if (isSmall) {
      data.varint(value.toNumber());
    } else {
      data.str(value.toString());
    }
  }

  generateBoxingMethods(STable, name) {
    STable.addInternalMethods(class {
      $$setInt(value) {
        this[name] = JSBI.BigInt(value);
      }

      $$setInt64(value) {
        this[name] = value;
      }

      $$getInt() {
        return getIntFromBI(this[name]);
      }

      $$decont_i(ctx) {
        return getIntFromBI(this[name]);
      }

      $$getInt64() {
        return getInt64FromBI(this[name]);
      }

      $$getUint64() {
        return getUint64FromBI(this[name]);
      }

      $$getBignum() {
        return this[name];
      }

      $$setBignum(num) {
        this[name] = num;
      }
    });
  }
};

P6bigint.prototype.flattenSTable = true;
P6bigint.prototype.flattenedDefault = 'ZERO';


reprs.P6bigint = P6bigint;


/* Stubs */

class NativeCall extends REPR {
  generateBoxingMethods(STable, name) {
    // TODO - figure out what if anything needs to be here
  }
};
reprs.NativeCall = NativeCall;

class CPointer extends REPR {
  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$setPointer(value) {
        this.$$pointer = value;
      }

      $$getPointer() {
        return this.$$pointer;
      }
    });
  }
};
reprs.CPointer = CPointer;

class AsyncTask extends REPR {};
reprs.AsyncTask = AsyncTask;

class ReentrantMutex extends REPR {
  serialize(cursor, obj) {
    /* Nothing to do, we just re-create the lock on deserialization on backend that support them.
     * The JS backend doesn't support concurrency.
     */
  }
};
reprs.ReentrantMutex = ReentrantMutex;

class ConditionVariable extends REPR {};
reprs.ConditionVariable = ConditionVariable;

class Semaphore extends REPR {
  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$setInt(value) {
        this.value = value;
      }

      $$getInt() {
        return this.value;
      }

      $$decont_i(value) {
        return this.value;
      }
    });
  }
};
reprs.Semaphore = Semaphore;

class ConcBlockingQueue extends REPR {
  allocate(STable) {
    const obj = new STable.ObjConstructor();
    obj.data = [];
    return obj;
  }

  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$push(value) {
        this.data.push(value);
        return value;
      }

      $$shift(value) {
        if (this.data.length === 0) {
          console.log('shifting on an empty ConcBlockingQueue NYI');
        }
        return this.data.shift();
      }

      $$elems(value) {
        return this.data.length;
      }

      $$atpos(index) {
        return this.data[index];
      }
    });
  }
};

reprs.ConcBlockingQueue = ConcBlockingQueue;

const emptyBuffer = Buffer.allocUnsafe(0);

const defaultSeps = ['\r\n', '\n'];

class Decoder extends REPR {
  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$check() {
        if (this.$$encoding === undefined) {
          throw new NQPException('Decoder not yet configured');
        }
      }

      $$translate(str) {
        return this.$$shouldTranslate ? str.replace(/\r\n/g, '\n') : str;
      }

      $$decoderconfigure(ctx, encoding, config) {
        if (this.$$encoding !== undefined) {
          throw new NQPException('Decoder already configured');
        }
        this.$$encoding = core.renameEncoding(encoding);
        if (!core.isKnownEncoding(this.$$encoding)) {
          throw new NQPException(`Unknown string encoding: '${this.$$encoding}'`);
        }
        const translate = config.content.get('translate_newlines');
        this.$$shouldTranslate = translate && nqp.toInt(translate, ctx) !== 0;

        this.$$seps = defaultSeps;
        this.$$buffer = emptyBuffer;
        this.$$textBuffer = '';

        return this;
      }

      /*async*/ $$decodersetlineseps(ctx, seps) {
        this.$$check();
        this.$$seps = seps.array;
      }

      $$decoderaddbytes(bytes) {
        this.$$check();
        const buf = core.toRawBuffer(bytes);
        this.$$buffer = Buffer.concat([this.$$buffer, buf]);
      }

      /* TODO NFG, codepoints that don't fit into 2 bytes */
      $$decodertakechars(count) {
        let chars = '';
        this.$$check();

        let available = this.$$textBuffer;
        let matched;

        graphemeRegexp.lastIndex = 0;
        while (count !== 0 && graphemeRegexp.test(this.$$textBuffer)) {
          matched = graphemeRegexp.lastIndex;
          count--;
        }
        if (matched !== undefined) {
          chars = this.$$textBuffer.slice(0, matched);
          available = available.slice(matched);
        }

        if (count === 0) {
          this.$$textBuffer = available;
          return this.$$translate(chars);
        }

        const {newBuffer: newBuffer, text: text} = codecs[this.$$encoding].decodePartial(this.$$buffer);

        let matchedInNewText = 0;
        graphemeRegexp.lastIndex = 0;
        while (count !== 0 && graphemeRegexp.test(text)) {
          matchedInNewText = graphemeRegexp.lastIndex;
          count--;
        }

        if (count === 0) {
          this.$$buffer = newBuffer;
          this.$$textBuffer = text.slice(matchedInNewText);
          return this.$$translate(chars + text.slice(0, matchedInNewText));
        } else {
          return nullStr;
        }
      }

      $$decodertakeavailablechars() {
        this.$$check();

        const {newBuffer: newBuffer, text: text} = codecs[this.$$encoding].decodePartial(this.$$buffer);
        this.$$buffer = newBuffer;
        const available = this.$$textBuffer + text;
        this.$$textBuffer = '';

        return this.$$translate(available);
      }

      $$decodertakeallchars() {
        this.$$check();

        const all = this.$$textBuffer + codecs[this.$$encoding].decode(this.$$buffer);

        this.$$buffer = emptyBuffer;
        this.$$textBuffer = '';

        return this.$$translate(all);
      }

      /* TODO: NFG */

      $$decodertakeline(chomp, incompleteOk) {
        this.$$check();

        const {newBuffer: newBuffer, text: text} = codecs[this.$$encoding].decodePartial(this.$$buffer);
        this.$$buffer = newBuffer;
        this.$$textBuffer = this.$$textBuffer + text;

        let newline = -1;
        let sep;
        for (let i = 0; i < this.$$seps.length; i++) {
          const offset = this.$$textBuffer.indexOf(this.$$seps[i]);
          if (offset != -1 && (newline == -1 || offset < newline)) {
            newline = offset;
            sep = this.$$seps[i];
          }
        }

        if (newline != -1) {
          const upToNewline = this.$$textBuffer.slice(0, newline);

          this.$$textBuffer = this.$$textBuffer.slice(newline + sep.length);
          return this.$$translate(chomp ? upToNewline : upToNewline + sep);
        } else {
          if (incompleteOk) {
            const all = this.$$textBuffer + codecs[this.$$encoding].decode(this.$$buffer);
            this.$$buffer = emptyBuffer;
            this.$$textBuffer = '';
            return this.$$translate(all);
          } else {
            return nullStr;
          }
        }
      }

      $$decoderempty() {
        this.$$check();
        return (this.$$textBuffer === '' && this.$$buffer.length === 0) ? 1 : 0;
      }

      $$decoderbytesavailable() {
        this.$$check();
        // TODO cache this to avoid reencoding
        return codecs[this.$$encoding].encode(this.$$textBuffer).length + this.$$buffer.length;
      }

      $$decodertakebytes(bufType, bytes) {
        this.$$check();

        if (this.$$textBuffer !== '') {
          this.$$buffer = Buffer.concat([
            codecs[this.$$encoding].encode(this.$$textBuffer),
            this.$$buffer,
          ]);
          this.$$textBuffer = '';
        }

        if (bytes > this.$$buffer.length) {
          return Null;
        }

        const buf = bufType.$$STable.REPR.allocate(bufType.$$STable);

        const elementSize = core.byteSize(buf);
        const isUnsigned = buf.$$STable.REPR.type.$$STable.REPR.isUnsigned;


        let offset = 0;
        for (let i = 0; i < bytes / elementSize; i++) {
          buf.array[i] = isUnsigned ? this.$$buffer.readUIntLE(offset, elementSize) : this.$$buffer.readIntLE(offset, elementSize);
          offset += elementSize;
        }

        this.$$buffer = this.$$buffer.slice(bytes);

        return buf;
      }
    });
  }
};
reprs.Decoder = Decoder;

class MultiDimArray extends REPR {
  allocate(STable) {
    const obj = new STable.ObjConstructor();
    obj.dimensions = undefined;
    return obj;
  }

  compose(STable, reprInfoHash) {
    const array = reprInfoHash.content.get('array');
    const dimensions = array.content.get('dimensions');

    const type = reprInfoHash.content.get('array').content.get('type');

    STable.type = type || Null;
    STable.primType = primType(STable.type);

    STable.dimensions = dimensions.$$getInt();

    if (STable.dimensions === 0) {
      throw new NQPException('MultiDimArray REPR must be composed with at least 1 dimension');
    }
  }


  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$numdimensions(value) {
        if (this.$$typeObject) {
          throw new NQPException('Cannot get number of dimensions of a type object');
        }
        return STable.dimensions;
      }

      $$clone() {
        const clone = new this.$$STable.ObjConstructor();
        clone.storage = this.storage.slice();
        clone.dimensions = this.dimensions;
        return clone;
      }

      $$dimensions() {
        if (this.$$typeObject) {
          throw new NQPException('Cannot get dimensions of a type object');
        }
        return BOOT.createIntArray(this.dimensions);
      }

      $$setdimensions(value) {
        if (value.array.length != STable.dimensions) {
          throw new NQPException('Array type of ' + STable.dimensions + ' dimensions cannot be intialized with ' + value.length + ' dimensions');
        } else if (this.dimensions) {
          throw new NQPException('Can only set dimensions once');
        }
        this.storage = [];
        return (this.dimensions = value.array);
      }

      $$pop() {
        throw new NQPException('Cannot pop a fixed dimension array');
      }

      $$shift() {
        throw new NQPException('Cannot shift a fixed dimension array');
      }

      $$unshift(value) {
        throw new NQPException('Cannot unshift a fixed dimension array');
      }

      $$push(value) {
        throw new NQPException('Cannot push a fixed dimension array');
      }

      $$slice(start, end) {
        throw new NQPException('Cannot slice a multidim array');
      }

      $$splice(source, offset, length) {
        throw new NQPException('Cannot splice a fixed dimension array');
      }

      $$calculateIndex(idx, value) {
        idx = idx.array;
        if (idx.length != STable.dimensions) {
          throw new NQPException('Cannot access ' + STable.dimensions + ' dimension array with ' + idx.length + ' indices');
        }

        for (let i = 0; i < idx.length; i++) {
          if (idx[i] < 0 || idx[i] >= this.dimensions[i]) {
            throw new NQPException('Index ' + idx[i] + ' for dimension ' + (i + 1) + ' out of range (must be 0..' + this.dimensions[i] + ')');
          }
        }
        let calculatedIdx = 0;
        for (let i = 0; i < idx.length; i++) {
          calculatedIdx = calculatedIdx * this.dimensions[i] + (idx[i] || 0);
        }
        return calculatedIdx;
      }

      $$atposnd(idx) {
        if (STable.primType != 0) throw new NQPException('wrong type');
        const value = this.storage[this.$$calculateIndex(idx)];
        if (value === undefined) return Null;
        return value;
      }

      $$bindposnd(idx, value) {
        if (STable.primType != 0) throw new NQPException('wrong type: ' + STable.primType);
        return (this.storage[this.$$calculateIndex(idx)] = value);
      }

      $$atposnd_i(idx) {
        if (STable.primType != 1) throw new NQPException('wrong type: ' + STable.primType);
        const value = this.storage[this.$$calculateIndex(idx)];
        return (value === undefined ? 0 : value);
      }

      $$bindposnd_i(idx, value) {
        if (STable.primType != 1) throw new NQPException('wrong type' + STable.primType);
        return (this.storage[this.$$calculateIndex(idx)] = value);
      }

      $$atposnd_n(idx) {
        if (STable.primType != 2) throw new NQPException('wrong type');
        const value = this.storage[this.$$calculateIndex(idx)];
        return (value === undefined ? 0 : value);
      }

      $$bindposnd_n(idx, value) {
        if (STable.primType != 2) throw new NQPException('wrong type');
        return (this.storage[this.$$calculateIndex(idx)] = value);
      }

      $$atposnd_s(idx) {
        if (STable.primType != 3) throw new NQPException('wrong type');
        const value = this.storage[this.$$calculateIndex(idx)];
        return (value === undefined ? nullStr : value);
      }

      $$bindposnd_s(idx, value) {
        if (STable.primType != 3) throw new NQPException('wrong type');
        return (this.storage[this.$$calculateIndex(idx)] = value);
      }

      // TODO optimize and avoid creating a temporary array
      $$bindpos(index, value) {
        return this.$$bindposnd(BOOT.createIntArray([index]), value);
      }
      $$bindpos_i(index, value) {
        return this.$$bindposnd_i(BOOT.createIntArray([index]), value);
      }
      $$bindpos_s(index, value) {
        return this.$$bindposnd_s(BOOT.createIntArray([index]), value);
      }
      $$bindpos_n(index, value) {
        return this.$$bindposnd_n(BOOT.createIntArray([index]), value);
      }

      $$setelems(elems) {
        this.$$setdimensions(BOOT.createIntArray([elems]));
      }

      $$elems(elems) {
        return this.dimensions[0];
      }

      $$atpos(index) {
        return this.$$atposnd(BOOT.createIntArray([index]));
      }

      $$atpos_i(index) {
        return this.$$atposnd_i(BOOT.createIntArray([index]));
      }

      $$atpos_n(index) {
        return this.$$atposnd_n(BOOT.createIntArray([index]));
      }

      $$atpos_s(index) {
        return this.$$atposnd_s(BOOT.createIntArray([index]));
      }
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
    const dims = cursor.varint();
    if (dims > 0) {
      STable.dimensions = dims;
      STable.type = cursor.variant();
      STable.primType = primType(STable.type);
    }
  }

  valuesSize(obj) {
    let size = 1;
    for (let i = 0; i < obj.dimensions.length; i++) {
      size = size * obj.dimensions[i];
    }
    return size;
  }

  serialize(cursor, obj) {
    for (let i = 0; i < obj.$$STable.dimensions; i++) {
      cursor.varint(obj.dimensions[i]);
    }
    const size = this.valuesSize(obj);
    for (let i = 0; i < size; i++) {
      switch (obj.$$STable.primType) {
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
    for (let i = 0; i < obj.$$STable.dimensions; i++) {
      obj.dimensions[i] = data.varint();
    }
    const size = this.valuesSize(obj);
    obj.storage = [];
    for (let i = 0; i < size; i++) {
      switch (obj.$$STable.primType) {
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
    STable.addInternalMethods(class {
      $$getStr() {
        return this.$$message;
      }
    });
  }
};


reprs.VMException = VMException;


class NativeRef extends REPR {
  compose(STable, reprInfoHash) {
    const nativeref = reprInfoHash.content.get('nativeref').content;
    const type = nativeref.get('type');
    this.primitiveType = type.$$STable.REPR.boxedPrimitive();
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

class CArray extends REPR {
};
reprs.CArray = CArray;

class CStr extends REPR {
  setupSTable(STable) {
    STable.addInternalMethods(class {
      $$setStr(str) {
        // TODO
      }
    });
  }
};
reprs.CStr = CStr;

class CREPR extends REPRWithAttributes {
  allocate(STable) {
    const obj = new STable.ObjConstructor();
    if (!this.UnionConstructor) {
      throw new NQPException('CUnion: must compose before allocating');
    }
    obj.$$data = this.UnionConstructor();
    return obj;
  }

  compose(STable, reprInfoHash) {
    this.nameToIndexMapping = [];

    this.slotTypes = [];

    let curAttr = 0;
    const reprInfo = reprInfoHash.content.get('attribute').array;

    for (let i = reprInfo.length - 1; i >= 0; i--) {
      const entry = reprInfo[i].array;
      const type = entry[0];
      const attrs = entry[1].array;
      const parents = entry[2].array;

      /* If it has any attributes, give them each indexes and put them
         * in the list to add to the layout. */
      const numAttrs = attrs.length;
      if (numAttrs > 0) {
        const names = [];
        const slots = [];

        for (let j = 0; j < numAttrs; j++) {
          const attr = attrs[j].content;

          const attrType = attr.get('type');

          this.slotTypes[curAttr] = attrType;

          if (!attrType.$$STable.REPR.asRefType) {
            throw new NQPException(`CUnion: Can't use attr ${attr.get('name').$$getStr()} as CUnion attr`);
          }

          slots.push(curAttr);
          names.push(attr.get('name').$$getStr());

          curAttr++;
        }
        this.nameToIndexMapping.push({classKey: type, slots: slots, names: names});
      }

      if (parents.length > 1) {
        throw new NQPException('CUnion representation does not support multiple inheritance');
      }
    }

    this.build(STable);
  }

  build(STable) {
    const refTypes = {};
    for (let slot = 0; slot < this.slotTypes.length; slot++) {
      refTypes[slotToAttr(slot)] = this.slotTypes[slot].$$STable.REPR.asRefType();
      this.slotTypes[slot].$$STable.REPR.generateRefAccessors(STable, this.slotTypes[slot].$$STable, slot);
    }

    this.UnionConstructor = this.createLowlevelConstructor(refTypes);


    const suffixes = ['', '_s', '_i', '_n'];
    for (const suffix of suffixes) {
      this.generateUniversalAccessor(STable, '$$getattr' + suffix, function(slot) {
        return 'return this.$$getattr$' + slot + suffix + '()';
      }, '', false, 'get a value');

      this.generateUniversalAccessor(STable, '$$bindattr' + suffix, function(slot) {
        return 'return this.$$bindattr$' + slot + suffix + '(value)';
      }, ', value', false, 'bind a value');
    }

    STable.evalGatheredCode();
  }


  serializeReprData(st, cursor) {
    cursor.varint(this.slotTypes.length);
    for (let i = 0; i < this.slotTypes.length; i++) {
      cursor.ref(this.slotTypes[i]);
    }
    this.serializeNameToIndexMapping(cursor);
  }

  deserializeReprData(cursor, STable) {
    this.slotTypes = [];
    const slotTypeCount = cursor.varint();
    for (let i = 0; i < slotTypeCount; i++) {
      this.slotTypes[i] = cursor.variant();
    }
    this.deserializeNameToIndexMapping(cursor);

    this.build(STable);
  }
};

class CUnion extends CREPR {
  createLowlevelConstructor(refTypes) {
    return new Union(refTypes);
  }
};

class CStruct extends CREPR {
};


reprs.CUnion = CUnion;

reprs.CStruct = CStruct;


/*async*/ function callJsMethod(obj, name, args) {
  const converted = [];
  for (let i = 3; i < args.length; i++) {
    converted.push(/*await*/ core.toJSWithCtx(args[0], /*await*/ args[i].$$decont(args[0])));
  }

  if (obj.$$jsObject[name]) {
    return core.fromJSToReturnValue(args[0], obj.$$jsObject[name].apply(obj.$$jsObject, converted));
  } else {
    return methodNotFoundError(args[0], obj, name);
  }
}

class WrappedJSObject extends REPR {

  createObjConstructor(STable) {
    const ObjConstructor = function() {};
    const handler = {};


    handler.get = function(target, mangledName) {
      if (mangledName.substr(0, 2) === '$$') {
        return undefined;
      }

      if (mangledName.substr(0, 3) === 'p6$') {
        const name = mangledName.substr(3);
        return function() {
          return callJsMethod(this, name, arguments);
        };
      } else {
        throw new NQPException(`Got raw js method: ${mangledName}`);
      }
    };

    ObjConstructor.prototype = Object.create(new Proxy({}, handler));
    ObjConstructor.prototype.$$STable = STable;

    const inspect = Symbol.for('nodejs.util.inspect.custom');
    ObjConstructor.prototype[inspect] = () => '...';

    ObjConstructor.prototype.$$SC = undefined;
    ObjConstructor.prototype._WHERE = undefined;
    ObjConstructor.prototype.then = undefined;

    return ObjConstructor;
  }

  setupSTable(STable) {
    this.hardcodedInvokeSpec = true;

    function isInternal(ctx, named) {
      return named != null && named.INTERNAL && named.INTERNAL.$$toBool(ctx);
    }

    STable.addInternalMethods(class {
      $$can(ctx, name) {
        return typeof this.$$jsObject[name] === 'function';
      }

      /*async*/ $$apply(args) {
        const converted = [];
        for (let i = 2; i < args.length; i++) {
          converted.push(/*await*/ core.toJSWithCtx(args[0], /*await*/ args[i].$$decont(args[0])));
        }
        const ret = this.$$jsObject.apply(null, converted);
        return core.fromJSToReturnValue(args[0], ret);
      }

      $$call(args) {
        return this.$$apply(arguments);
      }

      p6$item(ctx, _NAMED, self) {
        if (isInternal(ctx, _NAMED)) {
          return callJsMethod(this, 'item', arguments);
        }
        return this;
      }

      p6$sink(ctx, _NAMED, self) {
        if (isInternal(ctx, _NAMED)) {
          return callJsMethod(this, 'sink', arguments);
        }
        return this;
      }

      /*async*/ p6$new(ctx, _NAMED, self, ...args) {
        if (isInternal(ctx, _NAMED)) {
          return callJsMethod(this, 'new', arguments);
        }

        const converted = [];
        for (let i = 0; i < args.length; i++) {
          converted.push(/*await*/ core.toJSWithCtx(ctx, /*await*/ args[i].$$decont(ctx)));
        }
        return core.fromJSToReturnValue(ctx, new this.$$jsObject(...converted));
      }

      $$requireStub(name, prefix) {
        this.$$name = name;
        this.$$prefix = prefix;
      }
    });
  }

  serialize(cursor, obj) {
    if (obj.$$name) {
      cursor.str(obj.$$name);
      cursor.str(obj.$$prefix);
    } else {
      throw new NQPException(`Can't serialize wrapped js object`);
    }
  }

  deserializeFinish(obj, data) {
    const name = data.str();
    const prefix = data.str();
    obj.$$jsObject = require(require.resolve(name, {paths: [prefix]}));
  }
}

reprs.WrappedJSObject = WrappedJSObject;

let ID = 0;
for (const name in reprs) {
  module.exports[name] = reprs[name];
  reprs[name].prototype.ID = ID;
  reprs[name].prototype.name = name;
  reprById[ID] = reprs[name];
  if (reprs[name].prototype.flattenedDefault) {
    reprs[name].prototype.flattenedDefaultObj = eval(reprs[name].prototype.flattenedDefault);
  }
  ID++;
}
