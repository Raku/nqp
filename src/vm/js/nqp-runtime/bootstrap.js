'use strict';
const SerializationContext = require('./serialization-context.js');
const reprs = require('./reprs.js');

const Hash = require('./hash.js');
const STable = require('./sixmodel.js').STable;

const repr = new reprs.KnowHOWREPR();

const CodeRef = require('./code-ref.js');

const constants = require('./constants.js');

const BOOT = require('./BOOT.js');

const Null = require('./null.js');

const NQPStr = require('./nqp-str.js');

const globalContext = require('./global-context.js');

const core = new SerializationContext('__6MODEL_CORE__');
core.description = 'core SC';

globalContext.initialize(context => context.scs['__6MODEL_CORE__'] = core);

function addToScWithSt(obj) {
  core.rootObjects.push(obj);
  core.rootSTables.push(obj.$$STable);
  obj._SC = core;
  obj.$$STable._SC = core;
}

/* Creates and installs the KnowHOWAttribute type. */
function createKnowHOWAttribute() {
  const metaObj = KnowHowHOW.$$STable.REPR.allocate(KnowHowHOW.$$STable);

  const r = new reprs.KnowHOWAttribute();
  const typeObj = r.typeObjectFor(metaObj);

  const methods = {};
  methods.name = function(ctx, _NAMED, self) {
    return new NQPStr(self.__name);
  };
  methods['new'] = function(ctx, _NAMED, self) {
    const attr = r.allocate(self.$$STable);
    attr.__name = _NAMED.name.$$getStr();
    attr.__type = _NAMED.type;
    attr.__boxTarget = _NAMED.box_target ? _NAMED.box_target.$$getInt() : 0;
    return attr;
  };

  typeObj.$$STable.methodCache = new Map();
  typeObj.$$STable.modeFlags = constants.METHOD_CACHE_AUTHORITATIVE;

  for (const method of Object.keys(methods)) {
    typeObj.$$STable.ObjConstructor.prototype[method] = methods[method];
    typeObj.$$STable.methodCache.set(method, wrapMethod(method, methods[method]));
  }

  return typeObj;
}

/* Create our KnowHOW type object. Note we don't have a HOW just yet, so
 * pass in null. */
const KnowHOW = repr.typeObjectFor(null);

addToScWithSt(KnowHOW);

const st = new STable(repr, null);

const KnowHowHOW = repr.allocate(st);
KnowHowHOW.__name = 'KnowHOW';

addToScWithSt(KnowHowHOW);

KnowHOW.$$STable.HOW = KnowHowHOW;

KnowHOW.$$STable.methodCache = new Map();
KnowHOW.$$STable.modeFlags = constants.METHOD_CACHE_AUTHORITATIVE;
KnowHowHOW.$$STable.methodCache = new Map();
KnowHowHOW.$$STable.modeFlags = constants.METHOD_CACHE_AUTHORITATIVE;

function wrapMethod(name, method) {
  const codeRef = new CodeRef(name, undefined);
  codeRef.$$call = method;
  return codeRef;
}
function addKnowhowHowMethod(name, method) {
  /* TODO - think if setting the object cache would be better */

  KnowHowHOW.$$STable.ObjConstructor.prototype[name] = method;
  KnowHOW.$$STable.ObjConstructor.prototype[name] = method;

  const wrapped = wrapMethod(name, method);
  KnowHOW.$$STable.methodCache.set(name, wrapped);
  KnowHowHOW.$$STable.methodCache.set(name, wrapped);
}

addKnowhowHowMethod('name', function(ctx, _NAMED, self) {
  return new NQPStr(self.__name);
});

addKnowhowHowMethod('attributes', function(ctx, _NAMED, self) {
  return BOOT.createArray(self.__attributes);
});

addKnowhowHowMethod('methods', function(ctx, _NAMED, self) {
  return self.__methods;
});

addKnowhowHowMethod('new_type', function(ctx, _NAMED, self) {
  /* We first create a new HOW instance. */
  const HOW = self.$$STable.REPR.allocate(self.$$STable);

  /* See if we have a representation name; if not default to P6opaque. */
  const reprName = (_NAMED && _NAMED.repr) ? _NAMED.repr.$$getStr() : 'P6opaque';

  /* Create a new type object of the desired REPR. (Note that we can't
     * default to KnowHOWREPR here, since it doesn't know how to actually
     * store attributes, it's just for bootstrapping knowhow's. */
  const typeObject = (new reprs[reprName]).typeObjectFor(HOW);

  /* See if we were given a name; put it into the meta-object if so. */
  if (_NAMED && _NAMED.name) {
    HOW.__name = _NAMED.name.$$getStr();
  } else {
    HOW.__name = null;
  }

  /* Set .WHO to an empty hash. */
  typeObject.$$STable.WHO = new Hash();

  return typeObject;
});

addKnowhowHowMethod('add_attribute', function(ctx, _NAMED, self, type, attr) {
  self.__attributes.push(attr);
});

addKnowhowHowMethod('add_method', function(ctx, _NAMED, self, type, name, code) {
  self.__methods.content.set(name === 'string' ? name : name.$$getStr(), code);
});

addKnowhowHowMethod('compose', function(ctx, _NAMED, self, typeObject) {
  /* Set method cache */
  typeObject.$$STable.setMethodCache(self.__methods.content);
  typeObject.$$STable.modeFlags = constants.METHOD_CACHE_AUTHORITATIVE;

  /* Set type check cache. */

  typeObject.$$STable.typeCheckCache = [typeObject];

  /* Use any attribute information to produce attribute protocol
     * data. The protocol consists of an array... */
  const reprInfo = [];

  /* ...which contains an array per MRO entry... */
  const typeInfo = [];
  reprInfo.push(BOOT.createArray(typeInfo));

  /* ...which in turn contains this type... */
  typeInfo.push(typeObject);

  /* ...then an array of hashes per attribute... */
  const attrInfoList = [];
  typeInfo.push(BOOT.createArray(attrInfoList));

  /* ...then an array of hashes per attribute... */
  for (let i = 0; i < self.__attributes.length; i++) {
    const attrInfo = new Hash();
    const attr = self.__attributes[i];
    attrInfo.content.set('name', new NQPStr(attr.__name));
    attrInfo.content.set('type', attr.__type);
    if (attr.__boxTarget) {
      attrInfo.content.set('box_target', attr.__boxTarget);
    }
    attrInfoList.push(attrInfo);
  }

  /* ...followed by a list of parents (none). */
  const parentInfo = [];
  typeInfo.push(BOOT.createArray(parentInfo));

  /* All of this goes in a hash. */
  const reprInfoHash = new Hash();
  reprInfoHash.content.set('attribute', BOOT.createArray(reprInfo));


  /* Compose the representation using it. */
  typeObject.$$STable.REPR.compose(typeObject.$$STable, reprInfoHash);

  return typeInfo;
});


module.exports.knowhow = KnowHOW;


const KnowHOWAttribute = createKnowHOWAttribute();

module.exports.knowhowattr = KnowHOWAttribute;

/* KnowHOWAttribute */
addToScWithSt(KnowHOWAttribute);

function bootType(typeName, reprName) {
  const metaObj = KnowHowHOW.$$STable.REPR.allocate(KnowHowHOW.$$STable);
  metaObj.__name = typeName;

  const typeObj = (new reprs[reprName]).typeObjectFor(metaObj);

  core.rootObjects.push(metaObj);
  metaObj._SC = core;

  addToScWithSt(typeObj);

  return typeObj;
}

function bootArray(type) {
  const array = bootType('BOOTArray', 'VMArray');
  array.$$STable.REPR.type = Null;
  array.$$STable.REPR.primType = type;
  array.$$STable.REPR.setupSTableWhenComposed(array.$$STable);
  array.$$STable.setboolspec(8, Null);
  return array;
}

BOOT.Array = bootArray(0);
BOOT.Array.$$STable.hllRole = 4;

BOOT.IntArray = bootArray(1);
BOOT.NumArray = bootArray(2);
BOOT.StrArray = bootArray(3);

BOOT.Exception = bootType('BOOTException', 'VMException');
