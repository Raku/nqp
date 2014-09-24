var sixmodel = require('./sixmodel.js');

function basic_type_object_for(HOW) {
  var st = new sixmodel.STable(this, HOW);
  this._STable = st;
  var obj = new st.obj_constructor();

  /*st.WHAT = obj;
  sixmodel.mark_as_type_object(obj);*/
  return obj;
}

function P6opaque() {
}
module.exports.P6opaque = P6opaque;

function KnowHOWREPR() {
}

KnowHOWREPR.prototype.type_object_for = basic_type_object_for;

module.exports.KnowHOWREPR = KnowHOWREPR;

