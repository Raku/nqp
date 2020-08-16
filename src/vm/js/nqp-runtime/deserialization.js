'use strict';
const op = {};
module.exports.op = op;

const reprs = require('./reprs.js');
const sixmodel = require('./sixmodel.js');
const SerializationContext = require('./serialization-context.js');
const Hash = require('./hash.js');
const CodeRef = require('./code-ref.js');
const constants = require('./constants.js');

const Null = require('./null.js');

const Ctx = require('./ctx.js');

const containerSpecs = require('./container-specs.js');

const hll = require('./hll.js');

const BOOT = require('./BOOT.js');

const NQPInt = require('./nqp-int.js');
const NQPNum = require('./nqp-num.js');
const NQPStr = require('./nqp-str.js');

const NQPException = require('./nqp-exception.js');

const globalContext = require('./global-context.js');

/* Possible reference types we can serialize. */
const REFVAR_NULL = 1;
const REFVAR_OBJECT = 2;
const REFVAR_VM_NULL = 3;
const REFVAR_VM_INT = 4;
const REFVAR_VM_NUM = 5;
const REFVAR_VM_STR = 6;
const REFVAR_VM_ARR_VAR = 7;
const REFVAR_VM_ARR_STR = 8;
const REFVAR_VM_ARR_INT = 9;
const REFVAR_VM_HASH_STR_VAR = 10;
const REFVAR_STATIC_CODEREF = 11;
const REFVAR_CLONED_CODEREF = 12;


/** All the loaded serialization contexts using their unique IDs as keys */

module.exports.wval = function(handle, idx) {
  return globalContext.context.scs.get(handle).rootObjects[idx];
};

op.deserialize = function(currentHLL, blob, sc, sh, codeRefs, conflicts, cuids, setupWVals) {
  const buffer = Buffer.from(blob, 'base64');
  sc.codeRefs = codeRefs.array;

  for (let i = 0; i < sc.codeRefs.length; i++) {
    sc.codeRefs[i].isStatic = true;
    sc.codeRefs[i].$$SC = sc;
    sc.rootCodes.push(sc.codeRefs[i]);
  }

  sh = sh.array;
  const cursor = new BinaryCursor(buffer, 0, sh, sc);

  cursor.deserialize(sc, cuids, conflicts, setupWVals, currentHLL);
};

op.createsc = function(handle) {
  const sc = new SerializationContext(handle);
  globalContext.context.scs.set(handle, sc);
  return sc;
};

op.scsetdesc = function(sc, desc) {
  sc.description = desc;
  return desc;
};

op.scgetdesc = function(sc) {
  return sc.description;
};

op.scgethandle = function(sc) {
  return sc.handle;
};

op.scobjcount = function(sc) {
  return sc.rootObjects.length;
};

const STABLE_HAS_CONTAINER_SPEC = 0x10;
const STABLE_HAS_INVOCATION_SPEC = 0x20;
const STABLE_HAS_HLL_OWNER = 0x40;
const STABLE_HAS_HLL_ROLE = 0x80;

const STRING_HEAP_LOC_PACKED_OVERFLOW = 0x00008000;
const STRING_HEAP_LOC_PACKED_SHIFT = 16;

/**
  We define a BinaryCursor class so we can read sequential things easily
  @constructor
*/
class BinaryCursor {
  constructor(buffer, offset, sh, sc) {
    this.buffer = buffer;
    this.offset = offset;
    this.sh = sh;
    this.sc = sc;
  }

  /* Export for unit testing*/


  /**
  * Clone the cursor
  * @return {BinaryCursor} a clone of the cursor
  */
  clone() {
    if (!this.sc) {
      console.trace('at', this.sc);
      process.exit();
    }
    return new BinaryCursor(this.buffer, this.offset, this.sh, this.sc);
  }


  /**
  * Return a copy of a cursor at given offset
  * @param {number} offset
  * @return {BinaryCursor} a copy of the cursor at given offset
  */
  at(offset) {
    if (!this.sc) {
      console.trace('at', this.sc);
      process.exit();
    }
    return new BinaryCursor(this.buffer, offset, this.sh, this.sc);
  }


  /**
  * Read a given element a number of times
  * @param {number} count
  * @param {Function} cb - the callback that's called count times
  * @return {Array} - the read in objects
  */
  times(count, cb) {
    const array = [];
    for (let i = 0; i < count; i++) {
      array.push(cb(this));
    }
    return array;
  }


  /**
  * Read an array of elements parsed by the callback
  * @param {Function} readElem - a callback that reads in a single element
  * @return {Object} bootArray containing the elements
  */
  array(readElem, create) {
    const elems = this.varint();
    const array = [];
    for (let i = 0; i < elems; i++) {
      array.push(readElem(this));
    }
    const bootArray = create(array);
    if (this.sc.currentObject) {
      bootArray.$$SC = this.sc;
      this.sc.ownedObjects.set(bootArray, this.sc.currentObject);
    }
    return bootArray;
  }


  /** Read an entry from the objects table
   * @param {number} objectsData - the offset where the data is
   * @return {{data:BinaryCursor, isConcrete: boolean, STable: Array<Number>}}
   */
  objectEntry(objectsData) {
    const OBJECTS_TABLE_ENTRY_SC_MASK = 0x7FF;
    const OBJECTS_TABLE_ENTRY_SC_IDX_MASK = 0x000FFFFF;
    const OBJECTS_TABLE_ENTRY_SC_SHIFT = 20;
    const OBJECTS_TABLE_ENTRY_SC_OVERFLOW = 0x7FF;
    const OBJECTS_TABLE_ENTRY_IS_CONCRETE = 0x80000000;

    const packed = this.int32();
    const offset = this.int32();

    const sc = (packed >> OBJECTS_TABLE_ENTRY_SC_SHIFT) & OBJECTS_TABLE_ENTRY_SC_MASK;
    let scIdx;

    if (sc == OBJECTS_TABLE_ENTRY_SC_OVERFLOW) {
      throw new Error('Objects Overflow NYI');
    } else {
      scIdx = packed & OBJECTS_TABLE_ENTRY_SC_IDX_MASK;
    }

    return {
      STable: [sc, scIdx],
      data: this.at(objectsData + offset),
      isConcrete: packed & OBJECTS_TABLE_ENTRY_IS_CONCRETE,
    };
  }

  locateThing(thingType) {
    let scId;
    let index;

    const PACKED_SC_SHIFT = 20;
    const PACKED_SC_OVERFLOW = 0xfff;
    const PACKED_SC_IDX_MASK = 0x000fffff;

    const packed = this.varint();
    scId = packed >>> PACKED_SC_SHIFT;
    index = packed & PACKED_SC_IDX_MASK;

    if (scId != PACKED_SC_OVERFLOW) {
      index = packed & PACKED_SC_IDX_MASK;
    } else {
      scId = this.varint();
      index = this.varint();
    }

    try {
      return this.sc.deps[scId][thingType][index];
    } catch (e) {
      console.log(this.sc.deps.length);
      console.log(e.toString(), scId, thingType, index);
      throw e;
    }
  }


  /** Deserialize an object reference
   * @return {Object}
   */
  objRef() {
    return this.locateThing('rootObjects');
  }


  /** Read a hash of variants
   * @return {Hash}
   */
  hashOfVariants() {
    const elems = this.varint();
    const hash = new Hash();
    for (let i = 0; i < elems; i++) {
      const str = this.str();
      hash.content.set(str, this.variant());
    }

    if (this.sc.currentObject) {
      hash.$$SC = this.sc;
      this.sc.ownedObjects.set(hash, this.sc.currentObject);
    }

    return hash;
  }

  /** Read a int of variable length */
  /* TODO - make it work correctly for values bigger than 32bit integers*/
  // XXX TODO - length checks
  varint() {
    let result;
    const buffer = this.buffer;

    const first = buffer.readUInt8(this.offset++);

    if (first & 0x80) {
      return first - 129;
    }

    const need = first >> 4;

    if (!need) {
      // unrolled loop for optimization
      result =
          buffer.readUInt8(this.offset + 0) |
              buffer.readUInt8(this.offset + 1) << 8 |
              buffer.readUInt8(this.offset + 2) << 16 |
              buffer.readUInt8(this.offset + 3) << 24 |
              buffer.readUInt8(this.offset + 4) << 32 |
              buffer.readUInt8(this.offset + 5) << 40 |
              buffer.readUInt8(this.offset + 6) << 48 |
              buffer.readUInt8(this.offset + 7) << 56;
      this.offset += 8;

      return result;
    }

    result = need == 4 ? 0 : (first & 0x0F) << 8 * need;

    let shiftPlaces = 0;
    for (let i = 0; i < need; i++) {
      const byte = buffer.readUInt8(this.offset++);
      result |= (byte << shiftPlaces);
      shiftPlaces += 8;
    }

    if (need < 4) {
      result = result << (64 - 4 - 8 * need);
      result = result >> (64 - 4 - 8 * need);
    }

    return result;
  }


  /** Read a variant reference, REFVAR_NULL is returned as undefined
   * @return {*}
   */
  variantWithUndefined() {
    const type = this.int8();
    switch (type) {
      case REFVAR_OBJECT:
        return this.objRef();
      case REFVAR_NULL:
        return undefined;
      case REFVAR_VM_NULL:
        return Null;
      case REFVAR_VM_INT:
        return new NQPInt(this.varint());
      case REFVAR_VM_NUM:
        return new NQPNum(this.double());
      case REFVAR_VM_STR:
        return new NQPStr(this.str());
      case REFVAR_VM_ARR_VAR:
        return this.array(cursor => cursor.variant(), array => BOOT.createArray(array));
      case REFVAR_VM_ARR_STR:
        return this.array(cursor => cursor.str(), array => BOOT.createStrArray(array));
      case REFVAR_VM_ARR_INT:
        return this.array(cursor => cursor.varint(), array => BOOT.createIntArray(array));
      case REFVAR_VM_HASH_STR_VAR:
        return this.hashOfVariants(this);
      case REFVAR_STATIC_CODEREF:
      case REFVAR_CLONED_CODEREF:
        const codeRef = this.locateThing('codeRefs');
        if (!codeRef) {
          console.log('missing code ref while deserializing');
          console.log(this.sc.codeRefs);
        }
        return codeRef;
      default:
        console.trace('unknown variant');
        throw 'unknown variant: ' + type;
    }
  }

  /** Read a variant reference, REFVAR_NULL is returned as Null
   * @return {*}
   */
  variant() {
    const result = this.variantWithUndefined();
    return result === undefined ? Null : result;
  }

  /** Read an entry from the STable table
   * @param {STable} STable - the STable object we fill in
   */
  stable(STable) {
    STable.HOW = this.objRef();
    STable.WHAT = this.objRef();
    STable.WHO = this.variant();

    const methodCache = this.variant();

    STable._methodCache = methodCache;

    const typeCheckCache = [];
    const typeCheckCacheLen = this.varint();
    for (let i = 0; i < typeCheckCacheLen; i++) {
      typeCheckCache.push(this.variant());
    }

    if (typeCheckCache.length != 0) {
      STable.typeCheckCache = typeCheckCache;
    }

    STable.modeFlags = this.uint8();

    const flags = this.uint8();
    const boolificationMode = flags & 0xF;

    if (boolificationMode != 0xF) {
      const boolificationMethod = this.variant();
      STable.setboolspec(boolificationMode, boolificationMethod);
    }

    if (flags & STABLE_HAS_CONTAINER_SPEC) {
      const specType = this.str();
      STable.containerSpec = new containerSpecs[specType](STable);
      STable.containerSpec.deserialize(this);
    }

    let classHandle;
    let attrName;
    let invocationHandler;

    if (flags & STABLE_HAS_INVOCATION_SPEC) {
      classHandle = this.variant();
      attrName = this.str();
      this.varint(); // hint
      invocationHandler = this.variant();

      this.variant(); // md_class_handle
      this.str(); // md_cache_attr_name
      this.varint(); // md_cache_hint
      this.str(); // md_valid_attr_name
      this.varint(); // md_valid_hint
    }

    if (flags & STABLE_HAS_HLL_OWNER) {
      STable.hllOwner = hll.getHLL(this.str());
    }

    if (flags & STABLE_HAS_HLL_ROLE) {
      STable.hllRole = this.varint();
    }

    if (STable.modeFlags & constants.PARAMETRIC_TYPE) {
      STable.parameterizer = this.variant();

      if (!STable.parameterizerCache) {
        STable.parameterizerCache = [];
      }
    }

    if (STable.modeFlags & constants.PARAMETERIZED_TYPE) {
      STable.parametricType = this.variant();
      const count = this.varint();
      const params = [];
      for (let i = 0; i < count; i++) {
        params[i] = this.variant();
      }

      const ptable = STable.parametricType.$$STable;

      if (!ptable.parameterizerCache) {
        ptable.parameterizerCache = [];
      }

      STable.parameters = BOOT.createArray(params);

      ptable.parameterizerCache.push({type: STable.WHAT, params: params});
    }

    STable.debugName = this.cstr();

    this.varint();

    if (STable.REPR.deserializeReprData) {
      STable.REPR.deserializeReprData(this.clone(), STable);
    }

    if (flags & STABLE_HAS_INVOCATION_SPEC) {
      STable.setinvokespec(classHandle, attrName, invocationHandler);
    }

    if (STable.containerSpec) STable.containerSpec.setupSTable(this);
  }

  staticCodeRef() {
    const staticCode = this.locateThing('codeRefs');
    if (!staticCode) {
      console.log('Code ref has an invalid static code');
    }
    return staticCode;
  }

  closureEntry() {
    const entry = {};
    const staticScId = this.int32();
    const staticIndex = this.int32();
    entry.staticCode = this.sc.deps[staticScId].codeRefs[staticIndex];
    entry.context = this.int32();
    const hasCodeObj = this.int32();
    if (hasCodeObj) {
      const objectScId = this.int32();
      const objectIndex = this.int32();
      entry.codeObj = this.sc.deps[objectScId].rootObjects[objectIndex];
    } else {
      // we're packed along a 28-byte alignment
      this.int32();
      this.int32();
    }
    entry.name = this.str32();
    return entry;
  }

  contextEntry(contextsData) {
    const entry = {};
    const staticScId = this.int32();
    const staticIndex = this.int32();
    entry.staticCode = this.sc.deps[staticScId].codeRefs[staticIndex];
    const data = this.at(contextsData + this.int32());
    entry.outer = this.int32();
    entry.inner = [];
    entry.closures = [];

    const count = data.varint();
    const info = entry.staticCode.lexicalsTypeInfo;

    const lexicals = {};

    for (let i = 0; i < count; i++) {
      const name = data.str();

      if (!info.hasOwnProperty([name])) {
        throw 'no static info for: ', name;
      }

      switch (info[name]) {
        case 0: // obj
          lexicals[name] = data.variantWithUndefined();
          break;
        case 1: // int
          lexicals[name] = data.varint();
          break;
        case 2: // num
          lexicals[name] = data.double();
          break;
        case 3: // str
          lexicals[name] = data.str();
      }
    }

    entry.lexicals = lexicals;

    return entry;
  }


  /** Read a whole serialization context.
    If defined call the setupWVals before the closures are created.
    Resolve the static variables in all CodeRefs contained in cuids
   */

  deserialize(sc, cuids, conflicts, setupWVals, currentHLL) {
    const version = this.int32();

    this.sc = sc;

    if (version != 23) {
      throw 'Unsupported serialization format version: ' + version;
    }

    const depsOffset = this.int32();
    const depsNumber = this.int32();


    const dependencies = this.at(depsOffset).times(depsNumber, cursor => [cursor.str32(), cursor.str32()]);

    const deps = [sc];
    this.sc.deps = deps;

    for (const i in dependencies) {
      const dep = globalContext.context.scs.get(dependencies[i][0]);
      if (!dep) {
        console.log(
            'Missing dependencie, can\'t find serialization context handle:',
            dependencies[i][0],
            'desc:', dependencies[i][1]);
        process.exit();
      }
      deps.push(dep);
    }


    const STablesOffset = this.int32();
    const STablesNumber = this.int32();
    const STablesData = this.int32();

    const STables = this.at(STablesOffset).times(STablesNumber,
        function(cursor) {
          return [cursor.str32(), cursor.at(STablesData + cursor.int32()), cursor.at(STablesData + cursor.int32())];
        });


    const objectsOffset = this.int32();
    const objectsNumber = this.int32();
    const objectsData = this.int32();
    const objects = this.at(objectsOffset).times(objectsNumber, function(cursor) {
      return cursor.objectEntry(objectsData);
    });

    const reposTable = this.at(4 * 14).int32();
    const numRepos = this.at(4 * 15).int32();

    const paramInternsOffset = this.at(4 * 16).int32();
    const numParamInterns = this.at(4 * 17).int32();

    const repossessed = this.at(reposTable).times(numRepos, function(cursor) {
      return {type: cursor.int32(), index: cursor.int32(), origSC: cursor.int32(), origIndex: cursor.int32()};
    });

    if (numParamInterns != 0) {
      this.resolveParamInterns(this.at(paramInternsOffset), numParamInterns, STables);
    }

    this.repossessSTables(repossessed);

    this.stubSTables(STables);

    this.repossessObjects(objects, repossessed, conflicts);

    this.stubObjects(objects);


    const closuresOffset = this.int32();
    const closuresNumber = this.int32();
    const closures = this.at(closuresOffset).times(closuresNumber, function(cursor) {
      return cursor.closureEntry();
    });

    const closuresBase = sc.codeRefs.length;
    for (let i = 0; i < closures.length; i++) {
      sc.codeRefs[closuresBase + i] = new CodeRef(closures[i].staticCode.name, undefined);
      sc.codeRefs[closuresBase + i].staticCode = closures[i].staticCode;
      if (closures[i].codeObj) sc.codeRefs[closuresBase + i].codeObj = closures[i].codeObj;
      closures[i].index = closuresBase + i;

      closures[i].$$SC = sc;
      sc.rootCodes.push(closures[i]);
    }

    this.deserializeSTables(STables);

    this.deserializeObjects(objects);

    if (cuids) {
      for (const codeRef of cuids) {
        if (codeRef.staticVars) {
          for (const name in codeRef.staticVars) {
            if (codeRef.staticVars[name] instanceof Array) {
              codeRef.staticVars[name] = globalContext.context.scs.get(codeRef.staticVars[name][0]).rootObjects[codeRef.staticVars[name][1]];
            } else if (typeof codeRef.staticVars[name] === 'number') {
              codeRef.staticVars[name] = sc.rootObjects[codeRef.staticVars[name]];
            }
          }
        }

        if (codeRef.contVars) {
          for (const name in codeRef.contVars) {
            if (codeRef.contVars[name] instanceof Array) {
              codeRef.contVars[name] = globalContext.context.scs.get(codeRef.contVars[name][0]).rootObjects[codeRef.contVars[name][1]];
            } else if (typeof codeRef.contVars[name] === 'number') {
              codeRef.contVars[name] = sc.rootObjects[codeRef.contVars[name]];
            }
          }
        }
      }
    }
    if (setupWVals) setupWVals();

    const contextsOffset = this.int32();
    const contextsNumber = this.int32();
    const contextsData = this.int32();
    const contexts = this.at(contextsOffset).times(contextsNumber, function(cursor) {
      return cursor.contextEntry(contextsData);
    });

    for (let i = 0; i < contexts.length; i++) {
      if (contexts[i].outer) contexts[contexts[i].outer - 1].inner.push(contexts[i]);
    }

    const noContextClosures = [];


    for (let i = 0; i < closures.length; i++) {
      if (closures[i].context) {
        contexts[closures[i].context - 1].closures.push(closures[i]);
      } else {
        noContextClosures.push(closures[i]);
      }
    }

    for (const closure of noContextClosures) {
      sc.codeRefs[closure.index].capture(closure.staticCode.freshBlock());
    }

    for (let i = 0; i < contexts.length; i++) {
      if (contexts[i].outer == 0) {
        this.deserializeCtx(contexts[i], null, currentHLL);
      }
    }


    // reposTable
    this.int32();
    // numRepos
    this.int32();

    // paramInternsOffset
    this.int32();
    //numParamInterns
    this.int32();

    /* We set the method caches after everything else is ready */
    for (let i = 0; i < STables.length; i++) {
      const STable = sc.rootSTables[i];
      if (STable._methodCache instanceof Hash) {
        if (STable.methodCache) {
          STable.setMethodCache(STable._methodCache.content);
        } else {
          STable.setLazyMethodCache(STable._methodCache.content);
        }
      }
    }
  }

  stubSTables(STables) {
    for (let i = 0; i < STables.length; i++) {
      // May already have it, due to repossession.
      if (!this.sc.rootSTables[i]) {
        const repr = STables[i][0];
        if (!reprs[repr]) {
          throw 'Unknown REPR: ' + repr;
        }
        const REPR = new reprs[repr]();
        REPR.name = repr;
        const HOW = null; /* We will fill that in later once objects are stubbed */
        this.sc.rootSTables[i] = new sixmodel.STable(REPR, HOW);
        this.sc.rootSTables[i].$$SC = this.sc;
      }
    }
  }

  deserializeSTables(STables) {
    for (let i = 0; i < STables.length; i++) {
      if (this.sc.rootSTables[i].$$avoid) {
        continue;
      }
      STables[i][1].stable(this.sc.rootSTables[i]);
    }
  }

  stubObjects(objects) {
    for (let i = 0; i < objects.length; i++) {
      if (!this.sc.rootObjects[i]) {
        const STableForObj =
            this.sc.deps[objects[i].STable[0]].rootSTables[objects[i].STable[1]];
        if (!STableForObj) {
          console.log('Missing stable', objects[i].STable[0], objects[i].STable[1], deps[objects[i].STable[0]].rootSTables);
        }

        this.sc.rootObjects[i] = objects[i].isConcrete ?
            new (STableForObj.ObjConstructor)() :
            STableForObj.createTypeObject();
        this.sc.rootObjects[i].$$SC = this.sc;
      }
    }
  }

  deserializeObjects(objects) {
    for (let i = 0; i < objects.length; i++) {
      if (this.sc.rootObjects[i].$$avoid) {
        continue;
      }
      if (objects[i].isConcrete) {
        const repr = this.sc.rootObjects[i].$$STable.REPR;
        if (repr.deserializeFinish) {
          this.sc.currentObject = this.sc.rootObjects[i];
          repr.deserializeFinish(this.sc.rootObjects[i], objects[i].data);
          this.sc.currentObject = undefined;
        }
      }
    }
  }

  repossessSTables(repossessed) {
    for (const entry of repossessed) {
      if (entry.type === 1) {
        const origSTable = this.sc.deps[entry.origSC].rootSTables[entry.origIndex];
        this.sc.rootSTables[entry.index] = origSTable;

        if (origSTable.$$SC != this.sc.deps[entry.origSC]) {
          throw new NQPException('STable conflict detected during deserialization.\n'
            + '(Probable attempt to load a mutated module or modules that cannot be loaded together).');
        }

        origSTable.$$SC = this.sc;
      }
    }
  }

  repossessObjects(objects, repossessed, conflicts) {
    for (const entry of repossessed) {
      if (entry.type === 0) {
        const origObj = this.sc.deps[entry.origSC].rootObjects[entry.origIndex];
        if (origObj.$$SC !== this.sc.deps[entry.origSC]) {
          const backup = origObj.$$typeObject ? origObj.$$STable.createTypeObject() : origObj.$$clone();
          conflicts.$$push(backup);
          conflicts.$$push(origObj);
        }

        this.sc.rootObjects[entry.index] = origObj;
        origObj.$$SC = this.sc;

        const STableForObj =
            this.sc.deps[objects[entry.index].STable[0]].rootSTables[objects[entry.index].STable[1]];

        /* The object's STable may have changed as a result of the
         * repossession (perhaps due to mixing in to it), so put the
         * STable it should now have in place. */

        if (STableForObj !== origObj.$$STable) {
          Object.setPrototypeOf(origObj, STableForObj.ObjConstructor.prototype);
        }
      }
    }
  }

  deserializeCtx(context, outerCtx, currentHLL) {
    const callerCtx = null;

    // TODO - think if we should set codeObj
    const ctx = new Ctx(callerCtx, outerCtx);

    for (const name in context.lexicals) {
      if (context.lexicals[name] === undefined) {
        ctx[name] = context.staticCode.staticVars[name];
      } else {
        ctx[name] = context.lexicals[name];
      }
    }

    for (const inner of context.inner) {
      this.deserializeCtx(inner, ctx, currentHLL);
    }

    for (const closure of context.closures) {
      const codeRef = this.sc.codeRefs[closure.index];

      codeRef.capture(closure.staticCode.freshBlock());

      codeRef.outerCtx = ctx;
    }
  }

  resolveParamInterns(data, count) {
    for (let i = 0; i < count; i++) {
      /* Resolve the parametric type. */
      const ptype = data.objRef();

      /* Read indexes where type object and STable will get placed if a
       * matching intern is found. */
      const typeIdx = data.int32();
      const stIdx = data.int32();

      /* Read parameters and push into array. */
      const numParams = data.int32();

      const params = [];
      for (let i = 0; i < numParams; i++) {
        params.push(data.objRef(true));
      }

      const ptypeSTableIndex = this.sc.rootSTables.indexOf(ptype.$$STable);
      if (ptypeSTableIndex !== -1) {
        if (this.sc.rootSTables[ptypeSTableIndex].HOW === undefined) {
          STables[ptypeSTableIndex][1].stable(this.sc.rootSTables[ptypeSTableIndex]);
        }
      }

      const matching = ptype.$$STable.lookupParametric(params);

      /* Try to find a matching parameterization. */
      if (matching) {
        this.sc.rootObjects[typeIdx] = matching;
        this.sc.rootObjects[typeIdx].$$avoid = 1;
        this.sc.rootSTables[stIdx] = matching.$$STable;
        this.sc.rootSTables[stIdx].$$avoid = 1;
      }
    }
  }


  /** Read a 32bit integer
   * @return {number}
   */
  int32() {
    const ret = this.buffer.readInt32LE(this.offset);
    this.offset += 4;
    return ret;
  }

  uint8() {
    const ret = this.buffer.readUInt8(this.offset);
    this.offset += 1;
    return ret;
  }

  uint16() {
    const ret = this.buffer.readUInt16LE(this.offset);
    this.offset += 2;
    return ret;
  }

  uint32() {
    const ret = this.buffer.readUInt32LE(this.offset);
    this.offset += 4;
    return ret;
  }

  int8() {
    const ret = this.buffer.readInt8(this.offset);
    this.offset += 1;
    return ret;
  }

  /** Read a 64bit floating point number
   * @return {number}
   */
  double() {
    const ret = this.buffer.readDoubleLE(this.offset);
    this.offset += 8;
    return ret;
  }

  /**
   * Read a String
   * @return {string} the string at current offset
   */
  str() {
    let offset = this.uint16();
    if (offset & STRING_HEAP_LOC_PACKED_OVERFLOW) {
      offset ^= STRING_HEAP_LOC_PACKED_OVERFLOW;
      offset <<= STRING_HEAP_LOC_PACKED_SHIFT;
      offset |= this.uint16();
    }
    if (!this.sh.hasOwnProperty(offset)) {
      throw 'can\'t read str: ' + offset;
    }
    return this.sh[offset];
  }


  /** Read a C String
   * @return {string} the string at current offset
   */
  cstr() {
    const len = this.varint();
    const str = this.buffer.slice(this.offset, this.offset + len).toString('utf8');
    this.offset += len;
    return str;
  }

  str32() {
    return this.sh[this.int32()];
  }
};

exports.BinaryCursor = BinaryCursor;
