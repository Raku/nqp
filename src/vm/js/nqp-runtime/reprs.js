var sixmodel = require('./sixmodel.js');

function basic_type_object_for(HOW) {
  var st = new sixmodel.STable(this, HOW);
  this._STable = st;
  var obj = new st.obj_constructor();

  /*st.WHAT = obj;
  sixmodel.mark_as_type_object(obj);*/
  return obj;
}

function basic_allocate(STable) {
  return new STable.obj_constructor()
}

function P6opaque() {
}

P6opaque.prototype.allocate = basic_allocate;

module.exports.P6opaque = P6opaque;

function KnowHOWREPR() {
}

KnowHOWREPR.prototype.deserialize_finish = function(object, data) {
  object.__name = data.str();
  object.__attributes = data.variant();
  object.__methods = data.variant();
};

KnowHOWREPR.prototype.type_object_for = basic_type_object_for;
KnowHOWREPR.prototype.allocate = basic_allocate;
module.exports.KnowHOWREPR = KnowHOWREPR;

function KnowHOWAttribute() {
}
KnowHOWAttribute.prototype.deserialize_finish = function(object, data) {
  object.__name = data.str();
};

KnowHOWAttribute.prototype.type_object_for = basic_type_object_for;
KnowHOWAttribute.prototype.allocate = basic_allocate;
module.exports.KnowHOWAttribute = KnowHOWAttribute;


