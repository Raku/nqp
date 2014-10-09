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
  return type_obj;
}

/* Create our KnowHOW type object. Note we don't have a HOW just yet, so
 * pass in null. */
var KnowHOW = repr.type_object_for(null);

add_to_sc_with_st(KnowHOW);

var st = new STable(repr, null);

var KnowHOW_HOW = repr.allocate(st);

add_to_sc_with_st(KnowHOW_HOW);

/* KnowHOW.HOW */
//add_to_sc_with_st(STABLE(tc->instance->KnowHOW)->HOW);

var KnowHOWAttribute = create_KnowHOWAttribute();
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
