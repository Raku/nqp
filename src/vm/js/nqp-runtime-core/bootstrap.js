var sixmodel = require('./sixmodel.js');
var Hash = require('./hash.js');
var reprs = require('./reprs.js');
var serialization = require('./serialization.js');

var SerializationContext = require('./serialization_context.js');
var repr = new reprs['KnowHOWREPR']();
var knowhow = repr.type_object_for(null);
var st = new sixmodel.STable(repr, null);


var knowhow_methods = {};

knowhow_methods.new_type = function(ctx, _NAMED) {
  /* We first create a new HOW instance. */
  var HOW = this._STable.REPR.allocate(this._STable);
  HOW.marker = 700;

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
};
knowhow_methods.add_method = function(ctx, _NAMED, type, name, method) {
  this.__methods[name] = method;
};
knowhow_methods.add_attribute = function(ctx, _NAMED, type, attr) {
  this.__attributes.push(attr);
};
knowhow_methods.attributes = function(ctx, _NAMED) {
  return this.__attributes;
};
knowhow_methods.methods = function(ctx, _NAMED) {
  return this.__methods;
};

knowhow_methods.compose = function(ctx, _NAMED, type_object) {

  /* Set method cache */
  type_object._STable.setMethodCache(this.__methods);

  /* Set type check cache. */

  type_object._STable.type_check_cache = [type_object];

  /* Use any attribute information to produce attribute protocol
     * data. The protocol consists of an array... */
  var repr_info = [];

  /* ...which contains an array per MRO entry... */
  var type_info = [];
  repr_info.push(type_info);

  /* ...which in turn contains this type... */
  type_info.push(type_object);

  /* ...then an array of hashes per attribute... */
  var attr_info_list = [];
  type_info.push(attr_info_list);

  /* ...then an array of hashes per attribute... */
  for (var i = 0; i < this.__attributes.length; i++) {
    var attr_info = new Hash();
    var attr = this.__attributes[i];
    attr_info.name = attr.__name;
    attr_info.type = attr.__type;
    if (attr.__box_target) {
      attr_info.box_target = attr.__box_target;
    }
    attr_info_list.push(attr_info);
  }

  /* ...followed by a list of parents (none). */
  var parent_info = [];
  type_info.push(parent_info);

  /* All of this goes in a hash. */
  var repr_info_hash = new Hash();
  repr_info_hash.attribute = repr_info;


  /* Compose the representation using it. */
  type_object._STable.REPR.compose(type_object._STable, repr_info_hash);

  return type_info;
};

knowhow_methods.name = function(ctx, _NAMED, type) {
  return this.__name;
};


st.WHAT = knowhow;

for (var name in knowhow_methods) {
  st.obj_constructor.prototype[name] = knowhow_methods[name];
}

var knowhow_how = repr.allocate(st);
repr.initialize(knowhow_how);
st.HOW = knowhow_how;
knowhow_how._STable = st;

knowhow._STable.HOW = knowhow_how;


var knowhow_proto = knowhow._STable.obj_constructor.prototype;
for (var name in knowhow_methods) {
  knowhow_proto[name] = knowhow_methods[name];
}


var meta_obj = knowhow_how._STable.REPR.allocate(knowhow_how._STable);
knowhow_how._STable.REPR.initialize(meta_obj);

var attribute_repr = new reprs['KnowHOWAttribute'];
var knowhowattr = attribute_repr.type_object_for(meta_obj);

var knowhowattr_proto = knowhowattr._STable.obj_constructor.prototype;
knowhowattr_proto['new'] = function(ctx, _NAMED) {
  var attr = attribute_repr.allocate(this._STable);
  attr.__name = _NAMED.name.to_s();
  attr.__type = _NAMED.type;
  attr.__box_target = _NAMED.box_target ? _NAMED.box_target.to_i() : 0;
  return attr;
};
knowhowattr_proto.name = function(ctx, _NAMED) {
  return this.__name;
};

exports.knowhow = knowhow;
exports.knowhowattr = knowhowattr;

var core = new SerializationContext('__6MODEL_CORE__');
serialization.serialization_contexts['__6MODEL_CORE__'] = core;

core.root_objects = [knowhow, knowhow_how, knowhowattr];
for (var i in core.root_objects) core.root_objects[i]._SC = core;

core.root_stables = [knowhow._STable, knowhow_how._STable, knowhowattr._STable];
knowhowattr._STable.marker = 'knowhow._STable';
for (var i in core.root_stables) core.root_stables[i]._SC = core;

core.description = 'core SC';

