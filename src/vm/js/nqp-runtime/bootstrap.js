var SerializationContext = require('./serialization-context.js');
var reprs = require('./reprs.js');
var STable = require('./sixmodel.js').STable;

var repr = new reprs.KnowHOWREPR();

var core = new SerializationContext('__6MODEL_CORE__');
core.description = 'core SC';

function add_to_sc_with_st(obj) {
    core.root_objects.push(obj);
    core.root_stables.push(obj._STable);
    obj._SC = core;
}

function add_to_sc_with_st_and_mo() {
    throw "...";
}


 /* Creates and installs the KnowHOWAttribute type. */
function create_KnowHOWAttribute() {
  var meta_obj = KnowHOW_HOW._STable.REPR.allocate(KnowHOW_HOW._STable);

  var r = new reprs.KnowHOWAttribute();
  var type_obj = r.type_object_for(meta_obj);

  var methods = {};
  methods.name = function() {
    return this.__name;
  };
  methods['new'] = function(ctx, _NAMED) {
    var attr = r.allocate(this._STable);
    //TODO convert to string
    attr.__name = _NAMED.name;
    attr.__type = _NAMED.type;
    //TODO convert to int
    attr.__box_target = _NAMED.box_target ? _NAMED.box_target : 0;
    return attr;
  };

  for (var method in methods) {
    type_obj._STable.obj_constructor.prototype[method] = methods[method];
  }

  return type_obj;
}

/* Create our KnowHOW type object. Note we don't have a HOW just yet, so
 * pass in null. */
var KnowHOW = repr.type_object_for(null);

add_to_sc_with_st(KnowHOW);

var st = new STable(repr, null);

var KnowHOW_HOW = repr.allocate(st);

add_to_sc_with_st(KnowHOW_HOW);

KnowHOW_HOW.id = "KnowHOW_HOW";
KnowHOW._STable.id = "KnowHOW";
KnowHOW._STable.HOW = KnowHOW_HOW;

function add_knowhow_how_method(name, method) {
  /* TODO - think if setting the object cache would be better */
  KnowHOW_HOW._STable.obj_constructor.prototype[name] = method;
  KnowHOW._STable.obj_constructor.prototype[name] = method;
}

add_knowhow_how_method("name", function() {
  return this.__name;
});

add_knowhow_how_method("attributes", function() {
  return this.__attributes;
});

add_knowhow_how_method("methods", function() {
  return this.__methods;
});

add_knowhow_how_method("new_type", function(ctx, _NAMED) {
  /* We first create a new HOW instance. */
  var HOW = this._STable.REPR.allocate(this._STable);

  /* See if we have a representation name; if not default to P6opaque. */
  var repr_name = _NAMED['repr'] || 'P6opaque';

  /* Create a new type object of the desired REPR. (Note that we can't
     * default to KnowHOWREPR here, since it doesn't know how to actually
     * store attributes, it's just for bootstrapping knowhow's. */
  var type_object = (new reprs[repr_name]).type_object_for(HOW);

  /* See if we were given a name; put it into the meta-object if so. */
  if (_NAMED['name']) {
    HOW.__name = _NAMED['name'];
  } else {
    HOW.__name = null;
  }

  /* Set .WHO to an empty hash. */
  type_object._STable.WHO = new Hash();

  return type_object;
});


module.exports.knowhow = KnowHOW;


/* KnowHOW.HOW */
//add_to_sc_with_st(STABLE(tc->instance->KnowHOW)->HOW);

var KnowHOWAttribute = create_KnowHOWAttribute();

module.exports.knowhowattr = KnowHOWAttribute;

/* KnowHOWAttribute */
add_to_sc_with_st(KnowHOWAttribute);

/* BOOT* */
/*add_to_sc_with_st_and_mo(BOOTArray);
add_to_sc_with_st_and_mo(BOOTHash);
add_to_sc_with_st_and_mo(BOOTIter);
add_to_sc_with_st_and_mo(BOOTInt);
add_to_sc_with_st_and_mo(BOOTNum);
add_to_sc_with_st_and_mo(BOOTStr);
add_to_sc_with_st_and_mo(BOOTCode);*/

module.exports.core = core;
