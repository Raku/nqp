var nqp = require('nqp-runtime-core');

var top_ctx = nqp.top_context();
/* cuids ^{{{*/
var cuid_25_1380203984_5957 = new nqp.CodeRef(),
cuid_26_1380203984_5957 = new nqp.CodeRef(),
cuid_27_1380203984_5957 = new nqp.CodeRef(),
cuid_28_1380203984_5957 = new nqp.CodeRef(),
cuid_29_1380203984_5957 = new nqp.CodeRef();
/*}}}^*/
/* main block ^{{{*/
cuid_29_1380203984_5957.update(new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx1 = new nqp.Ctx(caller_ctx,null,'ctx1');
(ctx1["GLOBALish"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",0)));
(ctx1["$?PACKAGE"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",0)));
(ctx1["ModuleLoader"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)));
(ctx1["@ARGS"] = (Array.prototype.slice.call(arguments,2)));
;return (ctx1["@ARGS"],
ctx1["GLOBALish"],
ctx1["$?PACKAGE"],
ctx1["ModuleLoader"],
nqp.ctxsave(module.exports,ctx1),
new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx2 = new nqp.Ctx(caller_ctx,ctx1,'ctx2');
(ctx2["$?PACKAGE"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)));
(ctx2["$?CLASS"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)));
cuid_28_1380203984_5957.update(new nqp.CodeRef(function merge_globals(caller_ctx,_NAMED,param13,param14) {var ctx3 = new nqp.Ctx(caller_ctx,ctx2,'ctx3');
(ctx3["$target"] = (param13));
(ctx3["$source"] = (param14));
;var TMP1,
TMP2;
return (ctx3["$target"],
ctx3["$source"],
(ctx3["%known_symbols"] = (nqp.op.hash(ctx3))),
ctx3["%known_symbols"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx3,ctx3["$target"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param5) {var ctx4 = new nqp.Ctx(caller_ctx,ctx3,'ctx4');
(ctx4["$_"] = (param5));
;return (ctx4["$_"],
 ctx4.lookup("%known_symbols")["bind_key"](ctx4,nqp.named({}),nqp.op.iterkey_s(ctx4,ctx4["$_"]),(1)))})(ctx3,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
(TMP2 = nqp.iterate_over_as_array(nqp.op.who(ctx3,ctx3["$source"])),(function _() {for (var i=0;i<TMP2.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param12) {var ctx6 = new nqp.Ctx(caller_ctx,ctx3,'ctx6');
(ctx6["$_"] = (param12));
;var TMP1,
TMP2,
TMP3;
return ((ctx6["$sym"] = (nqp.op.null(ctx6))),
(ctx6["$val"] = (nqp.op.null(ctx6))),
ctx6["$_"],
(ctx6["$sym"] = (nqp.op.iterkey_s(ctx6,ctx6["$_"]))),
(ctx6["$val"] = (nqp.op.iterval(ctx6,ctx6["$_"]))),
(TMP1 = nqp.op.falsey(ctx6,nqp.op.existskey(ctx6, ctx6.lookup("%known_symbols"),ctx6["$sym"])),TMP1.Bool(ctx6) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx7 = new nqp.Ctx(caller_ctx,ctx6,'ctx7');
;var TMP1,
TMP2,
TMP3;
return ((ctx7["$source_is_stub"] = (nqp.op.null(ctx7))),
(ctx7["$source_mo"] = (nqp.op.null(ctx7))),
(ctx7["$source_is_stub"] = ((0))),
(ctx7["$source_mo"] = (nqp.op.how(ctx7, ctx7.lookup("$val")))),
(ctx7["$source_is_stub"] = ((TMP1 = (TMP2 = nqp.op.iseq_s(ctx7,nqp.op.how(ctx7,nqp.op.what(ctx7,ctx7["$source_mo"]))["name"](ctx7,nqp.named({}),ctx7["$source_mo"]), ctx7.lookup("$stub_how")),TMP2.Bool(ctx7) ? (nqp.op.falsey(ctx7,nqp.op.isnull(ctx7,nqp.op.who(ctx7, ctx7.lookup("$val"))))) : TMP2),TMP1.Bool(ctx7) ? (nqp.op.who(ctx7, ctx7.lookup("$val"))) : TMP1))),
(TMP3 = ctx7["$source_is_stub"],TMP3.Bool(ctx7) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx8 = new nqp.Ctx(caller_ctx,ctx7,'ctx8');
;var TMP1;
return ((ctx8["$source"] = (nqp.op.null(ctx8))),
(ctx8["$source_clone"] = (nqp.op.null(ctx8))),
(ctx8["%WHO_clone"] = (nqp.op.hash(ctx8))),
(ctx8["$source"] = ( ctx8.lookup("$val"))),
(ctx8["$source_clone"] = (nqp.op.how(ctx8,ctx8["$source"])["new_type"](ctx8,nqp.named({"name":nqp.op.how(ctx8,ctx8["$source"])["name"](ctx8,nqp.named({}),ctx8["$source"])})))),
nqp.op.how(ctx8,ctx8["$source_clone"])["compose"](ctx8,nqp.named({}),ctx8["$source_clone"]),
ctx8["%WHO_clone"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx8,ctx8["$source"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param10) {var ctx9 = new nqp.Ctx(caller_ctx,ctx8,'ctx9');
(ctx9["$_"] = (param10));
;return (ctx9["$_"],
 ctx9.lookup("%WHO_clone")["bind_key"](ctx9,nqp.named({}),nqp.op.iterkey_s(ctx9,ctx9["$_"]),nqp.op.iterval(ctx9,ctx9["$_"])))})(ctx8,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
nqp.op.setwho(ctx8,ctx8["$source_clone"],ctx8["%WHO_clone"]),
nqp.op.who(ctx8, ctx8.lookup("$target"))["bind_key"](ctx8,nqp.named({}), ctx8.lookup("$sym"),ctx8["$source_clone"]))},static_info_0,ctx7).apply(undefined,[ctx7,nqp.empty_named()])) : (nqp.op.who(ctx7, ctx7.lookup("$target"))["bind_key"](ctx7,nqp.named({}), ctx7.lookup("$sym"), ctx7.lookup("$val")))))},static_info_1,ctx6).apply(undefined,[ctx6,nqp.empty_named()])) : (TMP2 = nqp.op.eqaddr(ctx6,(TMP3 = nqp.op.who(ctx6, ctx6.lookup("$target"))["at_key"](ctx6,nqp.named({}),ctx6["$sym"]),nqp.op.isnull(ctx6,TMP3) ? nqp.op.null(ctx6) : TMP3),ctx6["$val"]),TMP2.Bool(ctx6) ? ((nqp.op.null(ctx6))) : new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx11 = new nqp.Ctx(caller_ctx,ctx6,'ctx11');
;var TMP1,
TMP2,
TMP3,
TMP4;
return ((ctx11["$source_mo"] = (nqp.op.null(ctx11))),
(ctx11["$source_is_stub"] = (nqp.op.null(ctx11))),
(ctx11["$target_mo"] = (nqp.op.null(ctx11))),
(ctx11["$target_is_stub"] = (nqp.op.null(ctx11))),
(ctx11["$source_mo"] = (nqp.op.how(ctx11, ctx11.lookup("$val")))),
(ctx11["$source_is_stub"] = (nqp.op.iseq_s(ctx11,nqp.op.how(ctx11,nqp.op.what(ctx11,ctx11["$source_mo"]))["name"](ctx11,nqp.named({}),ctx11["$source_mo"]), ctx11.lookup("$stub_how")))),
(ctx11["$target_mo"] = (nqp.op.how(ctx11,(TMP1 = nqp.op.who(ctx11, ctx11.lookup("$target"))["at_key"](ctx11,nqp.named({}), ctx11.lookup("$sym")),nqp.op.isnull(ctx11,TMP1) ? nqp.op.null(ctx11) : TMP1)))),
(ctx11["$target_is_stub"] = (nqp.op.iseq_s(ctx11,nqp.op.how(ctx11,nqp.op.what(ctx11,ctx11["$target_mo"]))["name"](ctx11,nqp.named({}),ctx11["$target_mo"]), ctx11.lookup("$stub_how")))),
(TMP2 = (TMP4 = ctx11["$source_is_stub"],TMP4.Bool(ctx11) ? (ctx11["$target_is_stub"]) : TMP4),TMP2.Bool(ctx11) ? (( ctx11.lookup("&merge_globals").apply(undefined,[ctx11,nqp.named({}),(TMP3 = nqp.op.who(ctx11, ctx11.lookup("$target"))["at_key"](ctx11,nqp.named({}), ctx11.lookup("$sym")),nqp.op.isnull(ctx11,TMP3) ? nqp.op.null(ctx11) : TMP3), ctx11.lookup("$val")]))) : (ctx11.die(ctx11,nqp.op.concat(ctx11,"Merging GLOBAL symbols failed: duplicate definition of symbol ", ctx11.lookup("$sym"))))))},static_info_2,ctx6).apply(undefined,[ctx6,nqp.empty_named()]))))})(ctx3,nqp.empty_named(),TMP2[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()))},static_info_3,ctx2))
cuid_25_1380203984_5957.update(sc.update_code_ref(0,function search_path(caller_ctx,_NAMED,param16,param17) {var ctx15 = new nqp.Ctx(caller_ctx,ctx2,'ctx15');
(ctx15["self"] = (param16));
(ctx15["$explicit_path"] = (param17));
;return (ctx15["self"],
ctx15["$explicit_path"],
(ctx15["@search_paths"] = (nqp.op.list(ctx15))),
ctx15["@search_paths"],
nqp.op.push(ctx15,ctx15["@search_paths"],"."),
nqp.op.push(ctx15,ctx15["@search_paths"],"blib"),
ctx15["@search_paths"])}))
cuid_26_1380203984_5957.update(sc.update_code_ref(1,function ctxsave(caller_ctx,_NAMED,param19) {var ctx18 = new nqp.Ctx(caller_ctx,ctx2,'ctx18');
(ctx18["self"] = (param19));
;return (ctx18["self"],
ctx18.bind_contextual("$*MAIN_CTX",nqp.op.ctxcaller(ctx18,nqp.op.ctx(ctx18))),
ctx18.bind_contextual("$*CTXSAVE",(0)))}))
cuid_27_1380203984_5957.update(sc.update_code_ref(2,function load_module(caller_ctx,_NAMED,param23,param24) {var ctx20 = new nqp.Ctx(caller_ctx,ctx2,'ctx20');
(ctx20["self"] = (param23));
(ctx20["$module_name"] = (param24));
(ctx20["@global_merge_target"] = (Array.prototype.slice.call(arguments,4)));
;var TMP1;
var RETURN;
return (ctx20["self"],
ctx20["$module_name"],
ctx20["@global_merge_target"],
(ctx20["$module_ctx"] = (nqp.op.null(ctx20))),
(ctx20["$path"] = (nqp.op.null(ctx20))),
(ctx20["$*CTXSAVE"] = (nqp.op.null(ctx20))),
(ctx20["$*MAIN_CTX"] = (nqp.op.null(ctx20))),
(ctx20["$preserve_global"] = (nqp.op.null(ctx20))),
(function _() {var return22 = {};RETURN = function _(caller_ctx,NAMED_,value) {return22.value = value;throw return22};try {return (ctx20["$module_ctx"],
(ctx20["$path"] = (nqp.op.join(ctx20,"/",nqp.op.split(ctx20,"::",ctx20["$module_name"])))),
ctx20.bind_contextual("$*CTXSAVE",nqp.op.decont(ctx20,ctx20["self"])),
ctx20.bind_contextual("$*MAIN_CTX",nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)),
(ctx20["$preserve_global"] = (nqp.op.getcurhllsym(ctx20,"GLOBAL"))),
(ctx20["$module_ctx"] = (nqp.op.loadbytecode(ctx20,ctx20["$path"]))),
nqp.op.bindcurhllsym(ctx20,"GLOBAL",ctx20["$preserve_global"]),
(TMP1 = nqp.op.defined(ctx20,ctx20["$module_ctx"]),TMP1.Bool(ctx20) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx21 = new nqp.Ctx(caller_ctx,ctx20,'ctx21');
;var TMP1,
TMP2,
TMP3,
TMP4,
TMP5;
return ((ctx21["$UNIT"] = (nqp.op.null(ctx21))),
(ctx21["$UNIT"] = (nqp.op.ctxlexpad(ctx21, ctx21.lookup("$module_ctx")))),
(TMP1 = nqp.op.isnull(ctx21,(TMP5 = ctx21["$UNIT"]["at_key"](ctx21,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx21,TMP5) ? nqp.op.null(ctx21) : TMP5)),TMP1.Bool(ctx21) ? (TMP1) : ((TMP2 = nqp.op.elems(ctx21, ctx21.lookup("@global_merge_target")),TMP2.Bool(ctx21) ? (( ctx21.lookup("&merge_globals").apply(undefined,[ctx21,nqp.named({}),(TMP3 =  ctx21.lookup("@global_merge_target")["at_pos"](ctx21,nqp.named({}),(0)),nqp.op.isnull(ctx21,TMP3) ? nqp.op.null(ctx21) : TMP3),(TMP4 = ctx21["$UNIT"]["at_key"](ctx21,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx21,TMP4) ? nqp.op.null(ctx21) : TMP4)]))) : TMP2))))},static_info_4,ctx20).apply(undefined,[ctx20,nqp.empty_named()])) : (nqp.op.null(ctx20))),
RETURN.apply(undefined,[ctx20,nqp.named({}),ctx20["$module_ctx"]]))} catch (e) {if (e === return22) { return return22.value;} else { throw e}}})())}))
;return (ctx2["$?PACKAGE"],
ctx2["$?CLASS"],
(ctx2["%modules_loaded"] = (nqp.op.hash(ctx2))),
(ctx2["%settings_loaded"] = (nqp.op.hash(ctx2))),
(ctx2["$stub_how"] = (nqp.op.null(ctx2))),
(ctx2["&merge_globals"] = (cuid_28_1380203984_5957)),
ctx2["%modules_loaded"],
ctx2["%settings_loaded"],
cuid_25_1380203984_5957,
cuid_26_1380203984_5957,
cuid_27_1380203984_5957,
(ctx2["$stub_how"] = ("KnowHOW")),
ctx2["&merge_globals"])},static_info_5,ctx1).apply(undefined,[ctx1,nqp.empty_named()]),
nqp.op.bindcurhllsym(ctx1,"ModuleLoader",nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)))},static_info_6))
;/*}}}^*/
/* deserialize ^{{{*/
/* pre_deserialize ^{{{*/
(1) /*VM*/;//PRE 
/*}}}^*/
/* create the sc ^{{{*/
var sh=["","P6opaque","ModuleLoader","search_path","ctxsave","load_module","__6MODEL_CORE__","GLOBALish"];
var code_refs=[cuid_25_1380203984_5957,cuid_26_1380203984_5957,cuid_27_1380203984_5957];
var static_info_0 = {closure:function (ctx7) {return (function (caller_ctx,_NAMED) {var ctx37 = new nqp.Ctx(caller_ctx,ctx7,'ctx37');
;var TMP1;
return ((ctx37["$source"] = (nqp.op.null(ctx37))),
(ctx37["$source_clone"] = (nqp.op.null(ctx37))),
(ctx37["%WHO_clone"] = (nqp.op.hash(ctx37))),
(ctx37["$source"] = ( ctx37.lookup("$val"))),
(ctx37["$source_clone"] = (nqp.op.how(ctx37,ctx37["$source"])["new_type"](ctx37,nqp.named({"name":nqp.op.how(ctx37,ctx37["$source"])["name"](ctx37,nqp.named({}),ctx37["$source"])})))),
nqp.op.how(ctx37,ctx37["$source_clone"])["compose"](ctx37,nqp.named({}),ctx37["$source_clone"]),
ctx37["%WHO_clone"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx37,ctx37["$source"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param39) {var ctx38 = new nqp.Ctx(caller_ctx,ctx37,'ctx38');
(ctx38["$_"] = (param39));
;return (ctx38["$_"],
 ctx38.lookup("%WHO_clone")["bind_key"](ctx38,nqp.named({}),nqp.op.iterkey_s(ctx38,ctx38["$_"]),nqp.op.iterval(ctx38,ctx38["$_"])))})(ctx37,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
nqp.op.setwho(ctx37,ctx37["$source_clone"],ctx37["%WHO_clone"]),
nqp.op.who(ctx37, ctx37.lookup("$target"))["bind_key"](ctx37,nqp.named({}), ctx37.lookup("$sym"),ctx37["$source_clone"]))})},name:"",outer:static_info_0,vars:{"$source":0,"$source_clone":0,"%WHO_clone":0,"$source":0,"$val":0,"$source_clone":0,"$source":0,"$source":0,"$source":0,"$source_clone":0,"$source_clone":0,"%WHO_clone":0,"$source":0,"$source_clone":0,"%WHO_clone":0,"$target":0,"$sym":0,"$source_clone":0}},
static_info_1 = {closure:function (ctx6) {return (function (caller_ctx,_NAMED) {var ctx40 = new nqp.Ctx(caller_ctx,ctx6,'ctx40');
;var TMP1,
TMP2,
TMP3;
return ((ctx40["$source_is_stub"] = (nqp.op.null(ctx40))),
(ctx40["$source_mo"] = (nqp.op.null(ctx40))),
(ctx40["$source_is_stub"] = ((0))),
(ctx40["$source_mo"] = (nqp.op.how(ctx40, ctx40.lookup("$val")))),
(ctx40["$source_is_stub"] = ((TMP1 = (TMP2 = nqp.op.iseq_s(ctx40,nqp.op.how(ctx40,nqp.op.what(ctx40,ctx40["$source_mo"]))["name"](ctx40,nqp.named({}),ctx40["$source_mo"]), ctx40.lookup("$stub_how")),TMP2.Bool(ctx40) ? (nqp.op.falsey(ctx40,nqp.op.isnull(ctx40,nqp.op.who(ctx40, ctx40.lookup("$val"))))) : TMP2),TMP1.Bool(ctx40) ? (nqp.op.who(ctx40, ctx40.lookup("$val"))) : TMP1))),
(TMP3 = ctx40["$source_is_stub"],TMP3.Bool(ctx40) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx41 = new nqp.Ctx(caller_ctx,ctx40,'ctx41');
;var TMP1;
return ((ctx41["$source"] = (nqp.op.null(ctx41))),
(ctx41["$source_clone"] = (nqp.op.null(ctx41))),
(ctx41["%WHO_clone"] = (nqp.op.hash(ctx41))),
(ctx41["$source"] = ( ctx41.lookup("$val"))),
(ctx41["$source_clone"] = (nqp.op.how(ctx41,ctx41["$source"])["new_type"](ctx41,nqp.named({"name":nqp.op.how(ctx41,ctx41["$source"])["name"](ctx41,nqp.named({}),ctx41["$source"])})))),
nqp.op.how(ctx41,ctx41["$source_clone"])["compose"](ctx41,nqp.named({}),ctx41["$source_clone"]),
ctx41["%WHO_clone"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx41,ctx41["$source"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param43) {var ctx42 = new nqp.Ctx(caller_ctx,ctx41,'ctx42');
(ctx42["$_"] = (param43));
;return (ctx42["$_"],
 ctx42.lookup("%WHO_clone")["bind_key"](ctx42,nqp.named({}),nqp.op.iterkey_s(ctx42,ctx42["$_"]),nqp.op.iterval(ctx42,ctx42["$_"])))})(ctx41,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
nqp.op.setwho(ctx41,ctx41["$source_clone"],ctx41["%WHO_clone"]),
nqp.op.who(ctx41, ctx41.lookup("$target"))["bind_key"](ctx41,nqp.named({}), ctx41.lookup("$sym"),ctx41["$source_clone"]))},static_info_0,ctx40).apply(undefined,[ctx40,nqp.empty_named()])) : (nqp.op.who(ctx40, ctx40.lookup("$target"))["bind_key"](ctx40,nqp.named({}), ctx40.lookup("$sym"), ctx40.lookup("$val")))))})},name:"",outer:static_info_1,vars:{"$source_is_stub":0,"$source_mo":0,"$source_is_stub":0,"$source_mo":0,"$val":0,"$source_is_stub":0,"$val":0,"$val":0,"$source_mo":0,"$source_mo":0,"$stub_how":0,"$target":0,"$sym":0,"$val":0,"$source_is_stub":0}},
static_info_2 = {closure:function (ctx6) {return (function (caller_ctx,_NAMED) {var ctx44 = new nqp.Ctx(caller_ctx,ctx6,'ctx44');
;var TMP1,
TMP2,
TMP3,
TMP4;
return ((ctx44["$source_mo"] = (nqp.op.null(ctx44))),
(ctx44["$source_is_stub"] = (nqp.op.null(ctx44))),
(ctx44["$target_mo"] = (nqp.op.null(ctx44))),
(ctx44["$target_is_stub"] = (nqp.op.null(ctx44))),
(ctx44["$source_mo"] = (nqp.op.how(ctx44, ctx44.lookup("$val")))),
(ctx44["$source_is_stub"] = (nqp.op.iseq_s(ctx44,nqp.op.how(ctx44,nqp.op.what(ctx44,ctx44["$source_mo"]))["name"](ctx44,nqp.named({}),ctx44["$source_mo"]), ctx44.lookup("$stub_how")))),
(ctx44["$target_mo"] = (nqp.op.how(ctx44,(TMP1 = nqp.op.who(ctx44, ctx44.lookup("$target"))["at_key"](ctx44,nqp.named({}), ctx44.lookup("$sym")),nqp.op.isnull(ctx44,TMP1) ? nqp.op.null(ctx44) : TMP1)))),
(ctx44["$target_is_stub"] = (nqp.op.iseq_s(ctx44,nqp.op.how(ctx44,nqp.op.what(ctx44,ctx44["$target_mo"]))["name"](ctx44,nqp.named({}),ctx44["$target_mo"]), ctx44.lookup("$stub_how")))),
(TMP2 = (TMP4 = ctx44["$source_is_stub"],TMP4.Bool(ctx44) ? (ctx44["$target_is_stub"]) : TMP4),TMP2.Bool(ctx44) ? (( ctx44.lookup("&merge_globals").apply(undefined,[ctx44,nqp.named({}),(TMP3 = nqp.op.who(ctx44, ctx44.lookup("$target"))["at_key"](ctx44,nqp.named({}), ctx44.lookup("$sym")),nqp.op.isnull(ctx44,TMP3) ? nqp.op.null(ctx44) : TMP3), ctx44.lookup("$val")]))) : (ctx44.die(ctx44,nqp.op.concat(ctx44,"Merging GLOBAL symbols failed: duplicate definition of symbol ", ctx44.lookup("$sym"))))))})},name:"",outer:static_info_2,vars:{"$source_mo":0,"$source_is_stub":0,"$target_mo":0,"$target_is_stub":0,"$source_mo":0,"$val":0,"$source_is_stub":0,"$source_mo":0,"$source_mo":0,"$stub_how":0,"$target_mo":0,"$target":0,"$sym":0,"$target_is_stub":0,"$target_mo":0,"$target_mo":0,"$stub_how":0,"&merge_globals":0,"$target":0,"$sym":0,"$val":0,"$sym":0,"$target_is_stub":0,"$source_is_stub":0}},
static_info_3 = {closure:function (ctx2) {return (function merge_globals(caller_ctx,_NAMED,param55,param56) {var ctx45 = new nqp.Ctx(caller_ctx,ctx2,'ctx45');
(ctx45["$target"] = (param55));
(ctx45["$source"] = (param56));
;var TMP1,
TMP2;
return (ctx45["$target"],
ctx45["$source"],
(ctx45["%known_symbols"] = (nqp.op.hash(ctx45))),
ctx45["%known_symbols"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx45,ctx45["$target"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param47) {var ctx46 = new nqp.Ctx(caller_ctx,ctx45,'ctx46');
(ctx46["$_"] = (param47));
;return (ctx46["$_"],
 ctx46.lookup("%known_symbols")["bind_key"](ctx46,nqp.named({}),nqp.op.iterkey_s(ctx46,ctx46["$_"]),(1)))})(ctx45,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
(TMP2 = nqp.iterate_over_as_array(nqp.op.who(ctx45,ctx45["$source"])),(function _() {for (var i=0;i<TMP2.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param54) {var ctx48 = new nqp.Ctx(caller_ctx,ctx45,'ctx48');
(ctx48["$_"] = (param54));
;var TMP1,
TMP2,
TMP3;
return ((ctx48["$sym"] = (nqp.op.null(ctx48))),
(ctx48["$val"] = (nqp.op.null(ctx48))),
ctx48["$_"],
(ctx48["$sym"] = (nqp.op.iterkey_s(ctx48,ctx48["$_"]))),
(ctx48["$val"] = (nqp.op.iterval(ctx48,ctx48["$_"]))),
(TMP1 = nqp.op.falsey(ctx48,nqp.op.existskey(ctx48, ctx48.lookup("%known_symbols"),ctx48["$sym"])),TMP1.Bool(ctx48) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx49 = new nqp.Ctx(caller_ctx,ctx48,'ctx49');
;var TMP1,
TMP2,
TMP3;
return ((ctx49["$source_is_stub"] = (nqp.op.null(ctx49))),
(ctx49["$source_mo"] = (nqp.op.null(ctx49))),
(ctx49["$source_is_stub"] = ((0))),
(ctx49["$source_mo"] = (nqp.op.how(ctx49, ctx49.lookup("$val")))),
(ctx49["$source_is_stub"] = ((TMP1 = (TMP2 = nqp.op.iseq_s(ctx49,nqp.op.how(ctx49,nqp.op.what(ctx49,ctx49["$source_mo"]))["name"](ctx49,nqp.named({}),ctx49["$source_mo"]), ctx49.lookup("$stub_how")),TMP2.Bool(ctx49) ? (nqp.op.falsey(ctx49,nqp.op.isnull(ctx49,nqp.op.who(ctx49, ctx49.lookup("$val"))))) : TMP2),TMP1.Bool(ctx49) ? (nqp.op.who(ctx49, ctx49.lookup("$val"))) : TMP1))),
(TMP3 = ctx49["$source_is_stub"],TMP3.Bool(ctx49) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx50 = new nqp.Ctx(caller_ctx,ctx49,'ctx50');
;var TMP1;
return ((ctx50["$source"] = (nqp.op.null(ctx50))),
(ctx50["$source_clone"] = (nqp.op.null(ctx50))),
(ctx50["%WHO_clone"] = (nqp.op.hash(ctx50))),
(ctx50["$source"] = ( ctx50.lookup("$val"))),
(ctx50["$source_clone"] = (nqp.op.how(ctx50,ctx50["$source"])["new_type"](ctx50,nqp.named({"name":nqp.op.how(ctx50,ctx50["$source"])["name"](ctx50,nqp.named({}),ctx50["$source"])})))),
nqp.op.how(ctx50,ctx50["$source_clone"])["compose"](ctx50,nqp.named({}),ctx50["$source_clone"]),
ctx50["%WHO_clone"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx50,ctx50["$source"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param52) {var ctx51 = new nqp.Ctx(caller_ctx,ctx50,'ctx51');
(ctx51["$_"] = (param52));
;return (ctx51["$_"],
 ctx51.lookup("%WHO_clone")["bind_key"](ctx51,nqp.named({}),nqp.op.iterkey_s(ctx51,ctx51["$_"]),nqp.op.iterval(ctx51,ctx51["$_"])))})(ctx50,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
nqp.op.setwho(ctx50,ctx50["$source_clone"],ctx50["%WHO_clone"]),
nqp.op.who(ctx50, ctx50.lookup("$target"))["bind_key"](ctx50,nqp.named({}), ctx50.lookup("$sym"),ctx50["$source_clone"]))},static_info_0,ctx49).apply(undefined,[ctx49,nqp.empty_named()])) : (nqp.op.who(ctx49, ctx49.lookup("$target"))["bind_key"](ctx49,nqp.named({}), ctx49.lookup("$sym"), ctx49.lookup("$val")))))},static_info_1,ctx48).apply(undefined,[ctx48,nqp.empty_named()])) : (TMP2 = nqp.op.eqaddr(ctx48,(TMP3 = nqp.op.who(ctx48, ctx48.lookup("$target"))["at_key"](ctx48,nqp.named({}),ctx48["$sym"]),nqp.op.isnull(ctx48,TMP3) ? nqp.op.null(ctx48) : TMP3),ctx48["$val"]),TMP2.Bool(ctx48) ? ((nqp.op.null(ctx48))) : new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx53 = new nqp.Ctx(caller_ctx,ctx48,'ctx53');
;var TMP1,
TMP2,
TMP3,
TMP4;
return ((ctx53["$source_mo"] = (nqp.op.null(ctx53))),
(ctx53["$source_is_stub"] = (nqp.op.null(ctx53))),
(ctx53["$target_mo"] = (nqp.op.null(ctx53))),
(ctx53["$target_is_stub"] = (nqp.op.null(ctx53))),
(ctx53["$source_mo"] = (nqp.op.how(ctx53, ctx53.lookup("$val")))),
(ctx53["$source_is_stub"] = (nqp.op.iseq_s(ctx53,nqp.op.how(ctx53,nqp.op.what(ctx53,ctx53["$source_mo"]))["name"](ctx53,nqp.named({}),ctx53["$source_mo"]), ctx53.lookup("$stub_how")))),
(ctx53["$target_mo"] = (nqp.op.how(ctx53,(TMP1 = nqp.op.who(ctx53, ctx53.lookup("$target"))["at_key"](ctx53,nqp.named({}), ctx53.lookup("$sym")),nqp.op.isnull(ctx53,TMP1) ? nqp.op.null(ctx53) : TMP1)))),
(ctx53["$target_is_stub"] = (nqp.op.iseq_s(ctx53,nqp.op.how(ctx53,nqp.op.what(ctx53,ctx53["$target_mo"]))["name"](ctx53,nqp.named({}),ctx53["$target_mo"]), ctx53.lookup("$stub_how")))),
(TMP2 = (TMP4 = ctx53["$source_is_stub"],TMP4.Bool(ctx53) ? (ctx53["$target_is_stub"]) : TMP4),TMP2.Bool(ctx53) ? (( ctx53.lookup("&merge_globals").apply(undefined,[ctx53,nqp.named({}),(TMP3 = nqp.op.who(ctx53, ctx53.lookup("$target"))["at_key"](ctx53,nqp.named({}), ctx53.lookup("$sym")),nqp.op.isnull(ctx53,TMP3) ? nqp.op.null(ctx53) : TMP3), ctx53.lookup("$val")]))) : (ctx53.die(ctx53,nqp.op.concat(ctx53,"Merging GLOBAL symbols failed: duplicate definition of symbol ", ctx53.lookup("$sym"))))))},static_info_2,ctx48).apply(undefined,[ctx48,nqp.empty_named()]))))})(ctx45,nqp.empty_named(),TMP2[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()))})},name:"merge_globals",outer:static_info_3,vars:{"$target":0,"$source":0,"%known_symbols":0,"%known_symbols":0,"$target":0,"$source":0}},
static_info_4 = {closure:function (ctx32) {return (function (caller_ctx,_NAMED) {var ctx57 = new nqp.Ctx(caller_ctx,ctx32,'ctx57');
;var TMP1,
TMP2,
TMP3,
TMP4,
TMP5;
return ((ctx57["$UNIT"] = (nqp.op.null(ctx57))),
(ctx57["$UNIT"] = (nqp.op.ctxlexpad(ctx57, ctx57.lookup("$module_ctx")))),
(TMP1 = nqp.op.isnull(ctx57,(TMP5 = ctx57["$UNIT"]["at_key"](ctx57,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx57,TMP5) ? nqp.op.null(ctx57) : TMP5)),TMP1.Bool(ctx57) ? (TMP1) : ((TMP2 = nqp.op.elems(ctx57, ctx57.lookup("@global_merge_target")),TMP2.Bool(ctx57) ? (( ctx57.lookup("&merge_globals").apply(undefined,[ctx57,nqp.named({}),(TMP3 =  ctx57.lookup("@global_merge_target")["at_pos"](ctx57,nqp.named({}),(0)),nqp.op.isnull(ctx57,TMP3) ? nqp.op.null(ctx57) : TMP3),(TMP4 = ctx57["$UNIT"]["at_key"](ctx57,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx57,TMP4) ? nqp.op.null(ctx57) : TMP4)]))) : TMP2))))})},name:"",outer:static_info_4,vars:{"$UNIT":0,"$UNIT":0,"$module_ctx":0,"&merge_globals":0,"@global_merge_target":0,"$UNIT":0,"@global_merge_target":0,"$UNIT":0}},
static_info_5 = {closure:function (ctx1) {return (function (caller_ctx,_NAMED) {var ctx58 = new nqp.Ctx(caller_ctx,ctx1,'ctx58');
(ctx58["$?PACKAGE"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)));
(ctx58["$?CLASS"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)));
cuid_28_1380203984_5957.update(new nqp.CodeRef(function merge_globals(caller_ctx,_NAMED,param69,param70) {var ctx59 = new nqp.Ctx(caller_ctx,ctx58,'ctx59');
(ctx59["$target"] = (param69));
(ctx59["$source"] = (param70));
;var TMP1,
TMP2;
return (ctx59["$target"],
ctx59["$source"],
(ctx59["%known_symbols"] = (nqp.op.hash(ctx59))),
ctx59["%known_symbols"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx59,ctx59["$target"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param61) {var ctx60 = new nqp.Ctx(caller_ctx,ctx59,'ctx60');
(ctx60["$_"] = (param61));
;return (ctx60["$_"],
 ctx60.lookup("%known_symbols")["bind_key"](ctx60,nqp.named({}),nqp.op.iterkey_s(ctx60,ctx60["$_"]),(1)))})(ctx59,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
(TMP2 = nqp.iterate_over_as_array(nqp.op.who(ctx59,ctx59["$source"])),(function _() {for (var i=0;i<TMP2.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param68) {var ctx62 = new nqp.Ctx(caller_ctx,ctx59,'ctx62');
(ctx62["$_"] = (param68));
;var TMP1,
TMP2,
TMP3;
return ((ctx62["$sym"] = (nqp.op.null(ctx62))),
(ctx62["$val"] = (nqp.op.null(ctx62))),
ctx62["$_"],
(ctx62["$sym"] = (nqp.op.iterkey_s(ctx62,ctx62["$_"]))),
(ctx62["$val"] = (nqp.op.iterval(ctx62,ctx62["$_"]))),
(TMP1 = nqp.op.falsey(ctx62,nqp.op.existskey(ctx62, ctx62.lookup("%known_symbols"),ctx62["$sym"])),TMP1.Bool(ctx62) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx63 = new nqp.Ctx(caller_ctx,ctx62,'ctx63');
;var TMP1,
TMP2,
TMP3;
return ((ctx63["$source_is_stub"] = (nqp.op.null(ctx63))),
(ctx63["$source_mo"] = (nqp.op.null(ctx63))),
(ctx63["$source_is_stub"] = ((0))),
(ctx63["$source_mo"] = (nqp.op.how(ctx63, ctx63.lookup("$val")))),
(ctx63["$source_is_stub"] = ((TMP1 = (TMP2 = nqp.op.iseq_s(ctx63,nqp.op.how(ctx63,nqp.op.what(ctx63,ctx63["$source_mo"]))["name"](ctx63,nqp.named({}),ctx63["$source_mo"]), ctx63.lookup("$stub_how")),TMP2.Bool(ctx63) ? (nqp.op.falsey(ctx63,nqp.op.isnull(ctx63,nqp.op.who(ctx63, ctx63.lookup("$val"))))) : TMP2),TMP1.Bool(ctx63) ? (nqp.op.who(ctx63, ctx63.lookup("$val"))) : TMP1))),
(TMP3 = ctx63["$source_is_stub"],TMP3.Bool(ctx63) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx64 = new nqp.Ctx(caller_ctx,ctx63,'ctx64');
;var TMP1;
return ((ctx64["$source"] = (nqp.op.null(ctx64))),
(ctx64["$source_clone"] = (nqp.op.null(ctx64))),
(ctx64["%WHO_clone"] = (nqp.op.hash(ctx64))),
(ctx64["$source"] = ( ctx64.lookup("$val"))),
(ctx64["$source_clone"] = (nqp.op.how(ctx64,ctx64["$source"])["new_type"](ctx64,nqp.named({"name":nqp.op.how(ctx64,ctx64["$source"])["name"](ctx64,nqp.named({}),ctx64["$source"])})))),
nqp.op.how(ctx64,ctx64["$source_clone"])["compose"](ctx64,nqp.named({}),ctx64["$source_clone"]),
ctx64["%WHO_clone"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx64,ctx64["$source"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param66) {var ctx65 = new nqp.Ctx(caller_ctx,ctx64,'ctx65');
(ctx65["$_"] = (param66));
;return (ctx65["$_"],
 ctx65.lookup("%WHO_clone")["bind_key"](ctx65,nqp.named({}),nqp.op.iterkey_s(ctx65,ctx65["$_"]),nqp.op.iterval(ctx65,ctx65["$_"])))})(ctx64,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
nqp.op.setwho(ctx64,ctx64["$source_clone"],ctx64["%WHO_clone"]),
nqp.op.who(ctx64, ctx64.lookup("$target"))["bind_key"](ctx64,nqp.named({}), ctx64.lookup("$sym"),ctx64["$source_clone"]))},static_info_0,ctx63).apply(undefined,[ctx63,nqp.empty_named()])) : (nqp.op.who(ctx63, ctx63.lookup("$target"))["bind_key"](ctx63,nqp.named({}), ctx63.lookup("$sym"), ctx63.lookup("$val")))))},static_info_1,ctx62).apply(undefined,[ctx62,nqp.empty_named()])) : (TMP2 = nqp.op.eqaddr(ctx62,(TMP3 = nqp.op.who(ctx62, ctx62.lookup("$target"))["at_key"](ctx62,nqp.named({}),ctx62["$sym"]),nqp.op.isnull(ctx62,TMP3) ? nqp.op.null(ctx62) : TMP3),ctx62["$val"]),TMP2.Bool(ctx62) ? ((nqp.op.null(ctx62))) : new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx67 = new nqp.Ctx(caller_ctx,ctx62,'ctx67');
;var TMP1,
TMP2,
TMP3,
TMP4;
return ((ctx67["$source_mo"] = (nqp.op.null(ctx67))),
(ctx67["$source_is_stub"] = (nqp.op.null(ctx67))),
(ctx67["$target_mo"] = (nqp.op.null(ctx67))),
(ctx67["$target_is_stub"] = (nqp.op.null(ctx67))),
(ctx67["$source_mo"] = (nqp.op.how(ctx67, ctx67.lookup("$val")))),
(ctx67["$source_is_stub"] = (nqp.op.iseq_s(ctx67,nqp.op.how(ctx67,nqp.op.what(ctx67,ctx67["$source_mo"]))["name"](ctx67,nqp.named({}),ctx67["$source_mo"]), ctx67.lookup("$stub_how")))),
(ctx67["$target_mo"] = (nqp.op.how(ctx67,(TMP1 = nqp.op.who(ctx67, ctx67.lookup("$target"))["at_key"](ctx67,nqp.named({}), ctx67.lookup("$sym")),nqp.op.isnull(ctx67,TMP1) ? nqp.op.null(ctx67) : TMP1)))),
(ctx67["$target_is_stub"] = (nqp.op.iseq_s(ctx67,nqp.op.how(ctx67,nqp.op.what(ctx67,ctx67["$target_mo"]))["name"](ctx67,nqp.named({}),ctx67["$target_mo"]), ctx67.lookup("$stub_how")))),
(TMP2 = (TMP4 = ctx67["$source_is_stub"],TMP4.Bool(ctx67) ? (ctx67["$target_is_stub"]) : TMP4),TMP2.Bool(ctx67) ? (( ctx67.lookup("&merge_globals").apply(undefined,[ctx67,nqp.named({}),(TMP3 = nqp.op.who(ctx67, ctx67.lookup("$target"))["at_key"](ctx67,nqp.named({}), ctx67.lookup("$sym")),nqp.op.isnull(ctx67,TMP3) ? nqp.op.null(ctx67) : TMP3), ctx67.lookup("$val")]))) : (ctx67.die(ctx67,nqp.op.concat(ctx67,"Merging GLOBAL symbols failed: duplicate definition of symbol ", ctx67.lookup("$sym"))))))},static_info_2,ctx62).apply(undefined,[ctx62,nqp.empty_named()]))))})(ctx59,nqp.empty_named(),TMP2[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()))},static_info_3,ctx58))
cuid_25_1380203984_5957.update(sc.update_code_ref(0,function search_path(caller_ctx,_NAMED,param72,param73) {var ctx71 = new nqp.Ctx(caller_ctx,ctx58,'ctx71');
(ctx71["self"] = (param72));
(ctx71["$explicit_path"] = (param73));
;return (ctx71["self"],
ctx71["$explicit_path"],
(ctx71["@search_paths"] = (nqp.op.list(ctx71))),
ctx71["@search_paths"],
nqp.op.push(ctx71,ctx71["@search_paths"],"."),
nqp.op.push(ctx71,ctx71["@search_paths"],"blib"),
ctx71["@search_paths"])}))
cuid_26_1380203984_5957.update(sc.update_code_ref(1,function ctxsave(caller_ctx,_NAMED,param75) {var ctx74 = new nqp.Ctx(caller_ctx,ctx58,'ctx74');
(ctx74["self"] = (param75));
;return (ctx74["self"],
ctx74.bind_contextual("$*MAIN_CTX",nqp.op.ctxcaller(ctx74,nqp.op.ctx(ctx74))),
ctx74.bind_contextual("$*CTXSAVE",(0)))}))
cuid_27_1380203984_5957.update(sc.update_code_ref(2,function load_module(caller_ctx,_NAMED,param79,param80) {var ctx76 = new nqp.Ctx(caller_ctx,ctx58,'ctx76');
(ctx76["self"] = (param79));
(ctx76["$module_name"] = (param80));
(ctx76["@global_merge_target"] = (Array.prototype.slice.call(arguments,4)));
;var TMP1;
var RETURN;
return (ctx76["self"],
ctx76["$module_name"],
ctx76["@global_merge_target"],
(ctx76["$module_ctx"] = (nqp.op.null(ctx76))),
(ctx76["$path"] = (nqp.op.null(ctx76))),
(ctx76["$*CTXSAVE"] = (nqp.op.null(ctx76))),
(ctx76["$*MAIN_CTX"] = (nqp.op.null(ctx76))),
(ctx76["$preserve_global"] = (nqp.op.null(ctx76))),
(function _() {var return78 = {};RETURN = function _(caller_ctx,NAMED_,value) {return78.value = value;throw return78};try {return (ctx76["$module_ctx"],
(ctx76["$path"] = (nqp.op.join(ctx76,"/",nqp.op.split(ctx76,"::",ctx76["$module_name"])))),
ctx76.bind_contextual("$*CTXSAVE",nqp.op.decont(ctx76,ctx76["self"])),
ctx76.bind_contextual("$*MAIN_CTX",nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)),
(ctx76["$preserve_global"] = (nqp.op.getcurhllsym(ctx76,"GLOBAL"))),
(ctx76["$module_ctx"] = (nqp.op.loadbytecode(ctx76,ctx76["$path"]))),
nqp.op.bindcurhllsym(ctx76,"GLOBAL",ctx76["$preserve_global"]),
(TMP1 = nqp.op.defined(ctx76,ctx76["$module_ctx"]),TMP1.Bool(ctx76) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx77 = new nqp.Ctx(caller_ctx,ctx76,'ctx77');
;var TMP1,
TMP2,
TMP3,
TMP4,
TMP5;
return ((ctx77["$UNIT"] = (nqp.op.null(ctx77))),
(ctx77["$UNIT"] = (nqp.op.ctxlexpad(ctx77, ctx77.lookup("$module_ctx")))),
(TMP1 = nqp.op.isnull(ctx77,(TMP5 = ctx77["$UNIT"]["at_key"](ctx77,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx77,TMP5) ? nqp.op.null(ctx77) : TMP5)),TMP1.Bool(ctx77) ? (TMP1) : ((TMP2 = nqp.op.elems(ctx77, ctx77.lookup("@global_merge_target")),TMP2.Bool(ctx77) ? (( ctx77.lookup("&merge_globals").apply(undefined,[ctx77,nqp.named({}),(TMP3 =  ctx77.lookup("@global_merge_target")["at_pos"](ctx77,nqp.named({}),(0)),nqp.op.isnull(ctx77,TMP3) ? nqp.op.null(ctx77) : TMP3),(TMP4 = ctx77["$UNIT"]["at_key"](ctx77,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx77,TMP4) ? nqp.op.null(ctx77) : TMP4)]))) : TMP2))))},static_info_4,ctx76).apply(undefined,[ctx76,nqp.empty_named()])) : (nqp.op.null(ctx76))),
RETURN.apply(undefined,[ctx76,nqp.named({}),ctx76["$module_ctx"]]))} catch (e) {if (e === return78) { return return78.value;} else { throw e}}})())}))
;return (ctx58["$?PACKAGE"],
ctx58["$?CLASS"],
(ctx58["%modules_loaded"] = (nqp.op.hash(ctx58))),
(ctx58["%settings_loaded"] = (nqp.op.hash(ctx58))),
(ctx58["$stub_how"] = (nqp.op.null(ctx58))),
(ctx58["&merge_globals"] = (cuid_28_1380203984_5957)),
ctx58["%modules_loaded"],
ctx58["%settings_loaded"],
cuid_25_1380203984_5957,
cuid_26_1380203984_5957,
cuid_27_1380203984_5957,
(ctx58["$stub_how"] = ("KnowHOW")),
ctx58["&merge_globals"])})},name:"",outer:static_info_5,vars:{"$?PACKAGE":0,"$?CLASS":0,"%modules_loaded":0,"%settings_loaded":0,"$stub_how":0,"&merge_globals":0,"%modules_loaded":0,"%settings_loaded":0,"$stub_how":0,"&merge_globals":0}},
static_info_6 = {closure:function (some_outer) {return (function (caller_ctx,_NAMED) {var ctx81 = new nqp.Ctx(caller_ctx,null,'ctx81');
(ctx81["GLOBALish"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",0)));
(ctx81["$?PACKAGE"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",0)));
(ctx81["ModuleLoader"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)));
(ctx81["@ARGS"] = (Array.prototype.slice.call(arguments,2)));
;return (ctx81["@ARGS"],
ctx81["GLOBALish"],
ctx81["$?PACKAGE"],
ctx81["ModuleLoader"],
nqp.ctxsave(module.exports,ctx81),
new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx82 = new nqp.Ctx(caller_ctx,ctx81,'ctx82');
(ctx82["$?PACKAGE"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)));
(ctx82["$?CLASS"] = (nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)));
cuid_28_1380203984_5957.update(new nqp.CodeRef(function merge_globals(caller_ctx,_NAMED,param93,param94) {var ctx83 = new nqp.Ctx(caller_ctx,ctx82,'ctx83');
(ctx83["$target"] = (param93));
(ctx83["$source"] = (param94));
;var TMP1,
TMP2;
return (ctx83["$target"],
ctx83["$source"],
(ctx83["%known_symbols"] = (nqp.op.hash(ctx83))),
ctx83["%known_symbols"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx83,ctx83["$target"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param85) {var ctx84 = new nqp.Ctx(caller_ctx,ctx83,'ctx84');
(ctx84["$_"] = (param85));
;return (ctx84["$_"],
 ctx84.lookup("%known_symbols")["bind_key"](ctx84,nqp.named({}),nqp.op.iterkey_s(ctx84,ctx84["$_"]),(1)))})(ctx83,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
(TMP2 = nqp.iterate_over_as_array(nqp.op.who(ctx83,ctx83["$source"])),(function _() {for (var i=0;i<TMP2.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param92) {var ctx86 = new nqp.Ctx(caller_ctx,ctx83,'ctx86');
(ctx86["$_"] = (param92));
;var TMP1,
TMP2,
TMP3;
return ((ctx86["$sym"] = (nqp.op.null(ctx86))),
(ctx86["$val"] = (nqp.op.null(ctx86))),
ctx86["$_"],
(ctx86["$sym"] = (nqp.op.iterkey_s(ctx86,ctx86["$_"]))),
(ctx86["$val"] = (nqp.op.iterval(ctx86,ctx86["$_"]))),
(TMP1 = nqp.op.falsey(ctx86,nqp.op.existskey(ctx86, ctx86.lookup("%known_symbols"),ctx86["$sym"])),TMP1.Bool(ctx86) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx87 = new nqp.Ctx(caller_ctx,ctx86,'ctx87');
;var TMP1,
TMP2,
TMP3;
return ((ctx87["$source_is_stub"] = (nqp.op.null(ctx87))),
(ctx87["$source_mo"] = (nqp.op.null(ctx87))),
(ctx87["$source_is_stub"] = ((0))),
(ctx87["$source_mo"] = (nqp.op.how(ctx87, ctx87.lookup("$val")))),
(ctx87["$source_is_stub"] = ((TMP1 = (TMP2 = nqp.op.iseq_s(ctx87,nqp.op.how(ctx87,nqp.op.what(ctx87,ctx87["$source_mo"]))["name"](ctx87,nqp.named({}),ctx87["$source_mo"]), ctx87.lookup("$stub_how")),TMP2.Bool(ctx87) ? (nqp.op.falsey(ctx87,nqp.op.isnull(ctx87,nqp.op.who(ctx87, ctx87.lookup("$val"))))) : TMP2),TMP1.Bool(ctx87) ? (nqp.op.who(ctx87, ctx87.lookup("$val"))) : TMP1))),
(TMP3 = ctx87["$source_is_stub"],TMP3.Bool(ctx87) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx88 = new nqp.Ctx(caller_ctx,ctx87,'ctx88');
;var TMP1;
return ((ctx88["$source"] = (nqp.op.null(ctx88))),
(ctx88["$source_clone"] = (nqp.op.null(ctx88))),
(ctx88["%WHO_clone"] = (nqp.op.hash(ctx88))),
(ctx88["$source"] = ( ctx88.lookup("$val"))),
(ctx88["$source_clone"] = (nqp.op.how(ctx88,ctx88["$source"])["new_type"](ctx88,nqp.named({"name":nqp.op.how(ctx88,ctx88["$source"])["name"](ctx88,nqp.named({}),ctx88["$source"])})))),
nqp.op.how(ctx88,ctx88["$source_clone"])["compose"](ctx88,nqp.named({}),ctx88["$source_clone"]),
ctx88["%WHO_clone"],
(TMP1 = nqp.iterate_over_as_array(nqp.op.who(ctx88,ctx88["$source"])),(function _() {for (var i=0;i<TMP1.length;i+=1) {var __control__next = {};var __control__redo = {};var __control__last = {};try {(function (caller_ctx,_NAMED,param90) {var ctx89 = new nqp.Ctx(caller_ctx,ctx88,'ctx89');
(ctx89["$_"] = (param90));
;return (ctx89["$_"],
 ctx89.lookup("%WHO_clone")["bind_key"](ctx89,nqp.named({}),nqp.op.iterkey_s(ctx89,ctx89["$_"]),nqp.op.iterval(ctx89,ctx89["$_"])))})(ctx88,nqp.empty_named(),TMP1[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()),
nqp.op.setwho(ctx88,ctx88["$source_clone"],ctx88["%WHO_clone"]),
nqp.op.who(ctx88, ctx88.lookup("$target"))["bind_key"](ctx88,nqp.named({}), ctx88.lookup("$sym"),ctx88["$source_clone"]))},static_info_0,ctx87).apply(undefined,[ctx87,nqp.empty_named()])) : (nqp.op.who(ctx87, ctx87.lookup("$target"))["bind_key"](ctx87,nqp.named({}), ctx87.lookup("$sym"), ctx87.lookup("$val")))))},static_info_1,ctx86).apply(undefined,[ctx86,nqp.empty_named()])) : (TMP2 = nqp.op.eqaddr(ctx86,(TMP3 = nqp.op.who(ctx86, ctx86.lookup("$target"))["at_key"](ctx86,nqp.named({}),ctx86["$sym"]),nqp.op.isnull(ctx86,TMP3) ? nqp.op.null(ctx86) : TMP3),ctx86["$val"]),TMP2.Bool(ctx86) ? ((nqp.op.null(ctx86))) : new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx91 = new nqp.Ctx(caller_ctx,ctx86,'ctx91');
;var TMP1,
TMP2,
TMP3,
TMP4;
return ((ctx91["$source_mo"] = (nqp.op.null(ctx91))),
(ctx91["$source_is_stub"] = (nqp.op.null(ctx91))),
(ctx91["$target_mo"] = (nqp.op.null(ctx91))),
(ctx91["$target_is_stub"] = (nqp.op.null(ctx91))),
(ctx91["$source_mo"] = (nqp.op.how(ctx91, ctx91.lookup("$val")))),
(ctx91["$source_is_stub"] = (nqp.op.iseq_s(ctx91,nqp.op.how(ctx91,nqp.op.what(ctx91,ctx91["$source_mo"]))["name"](ctx91,nqp.named({}),ctx91["$source_mo"]), ctx91.lookup("$stub_how")))),
(ctx91["$target_mo"] = (nqp.op.how(ctx91,(TMP1 = nqp.op.who(ctx91, ctx91.lookup("$target"))["at_key"](ctx91,nqp.named({}), ctx91.lookup("$sym")),nqp.op.isnull(ctx91,TMP1) ? nqp.op.null(ctx91) : TMP1)))),
(ctx91["$target_is_stub"] = (nqp.op.iseq_s(ctx91,nqp.op.how(ctx91,nqp.op.what(ctx91,ctx91["$target_mo"]))["name"](ctx91,nqp.named({}),ctx91["$target_mo"]), ctx91.lookup("$stub_how")))),
(TMP2 = (TMP4 = ctx91["$source_is_stub"],TMP4.Bool(ctx91) ? (ctx91["$target_is_stub"]) : TMP4),TMP2.Bool(ctx91) ? (( ctx91.lookup("&merge_globals").apply(undefined,[ctx91,nqp.named({}),(TMP3 = nqp.op.who(ctx91, ctx91.lookup("$target"))["at_key"](ctx91,nqp.named({}), ctx91.lookup("$sym")),nqp.op.isnull(ctx91,TMP3) ? nqp.op.null(ctx91) : TMP3), ctx91.lookup("$val")]))) : (ctx91.die(ctx91,nqp.op.concat(ctx91,"Merging GLOBAL symbols failed: duplicate definition of symbol ", ctx91.lookup("$sym"))))))},static_info_2,ctx86).apply(undefined,[ctx86,nqp.empty_named()]))))})(ctx83,nqp.empty_named(),TMP2[i+0])} catch (e) {if (e === __control__last) {break} else if (e == __control__next) {continue} else if (e == __control__redo) {__skip__ = 1;continue} else { throw e}}}})()))},static_info_3,ctx82))
cuid_25_1380203984_5957.update(sc.update_code_ref(0,function search_path(caller_ctx,_NAMED,param96,param97) {var ctx95 = new nqp.Ctx(caller_ctx,ctx82,'ctx95');
(ctx95["self"] = (param96));
(ctx95["$explicit_path"] = (param97));
;return (ctx95["self"],
ctx95["$explicit_path"],
(ctx95["@search_paths"] = (nqp.op.list(ctx95))),
ctx95["@search_paths"],
nqp.op.push(ctx95,ctx95["@search_paths"],"."),
nqp.op.push(ctx95,ctx95["@search_paths"],"blib"),
ctx95["@search_paths"])}))
cuid_26_1380203984_5957.update(sc.update_code_ref(1,function ctxsave(caller_ctx,_NAMED,param99) {var ctx98 = new nqp.Ctx(caller_ctx,ctx82,'ctx98');
(ctx98["self"] = (param99));
;return (ctx98["self"],
ctx98.bind_contextual("$*MAIN_CTX",nqp.op.ctxcaller(ctx98,nqp.op.ctx(ctx98))),
ctx98.bind_contextual("$*CTXSAVE",(0)))}))
cuid_27_1380203984_5957.update(sc.update_code_ref(2,function load_module(caller_ctx,_NAMED,param103,param104) {var ctx100 = new nqp.Ctx(caller_ctx,ctx82,'ctx100');
(ctx100["self"] = (param103));
(ctx100["$module_name"] = (param104));
(ctx100["@global_merge_target"] = (Array.prototype.slice.call(arguments,4)));
;var TMP1;
var RETURN;
return (ctx100["self"],
ctx100["$module_name"],
ctx100["@global_merge_target"],
(ctx100["$module_ctx"] = (nqp.op.null(ctx100))),
(ctx100["$path"] = (nqp.op.null(ctx100))),
(ctx100["$*CTXSAVE"] = (nqp.op.null(ctx100))),
(ctx100["$*MAIN_CTX"] = (nqp.op.null(ctx100))),
(ctx100["$preserve_global"] = (nqp.op.null(ctx100))),
(function _() {var return102 = {};RETURN = function _(caller_ctx,NAMED_,value) {return102.value = value;throw return102};try {return (ctx100["$module_ctx"],
(ctx100["$path"] = (nqp.op.join(ctx100,"/",nqp.op.split(ctx100,"::",ctx100["$module_name"])))),
ctx100.bind_contextual("$*CTXSAVE",nqp.op.decont(ctx100,ctx100["self"])),
ctx100.bind_contextual("$*MAIN_CTX",nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)),
(ctx100["$preserve_global"] = (nqp.op.getcurhllsym(ctx100,"GLOBAL"))),
(ctx100["$module_ctx"] = (nqp.op.loadbytecode(ctx100,ctx100["$path"]))),
nqp.op.bindcurhllsym(ctx100,"GLOBAL",ctx100["$preserve_global"]),
(TMP1 = nqp.op.defined(ctx100,ctx100["$module_ctx"]),TMP1.Bool(ctx100) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx101 = new nqp.Ctx(caller_ctx,ctx100,'ctx101');
;var TMP1,
TMP2,
TMP3,
TMP4,
TMP5;
return ((ctx101["$UNIT"] = (nqp.op.null(ctx101))),
(ctx101["$UNIT"] = (nqp.op.ctxlexpad(ctx101, ctx101.lookup("$module_ctx")))),
(TMP1 = nqp.op.isnull(ctx101,(TMP5 = ctx101["$UNIT"]["at_key"](ctx101,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx101,TMP5) ? nqp.op.null(ctx101) : TMP5)),TMP1.Bool(ctx101) ? (TMP1) : ((TMP2 = nqp.op.elems(ctx101, ctx101.lookup("@global_merge_target")),TMP2.Bool(ctx101) ? (( ctx101.lookup("&merge_globals").apply(undefined,[ctx101,nqp.named({}),(TMP3 =  ctx101.lookup("@global_merge_target")["at_pos"](ctx101,nqp.named({}),(0)),nqp.op.isnull(ctx101,TMP3) ? nqp.op.null(ctx101) : TMP3),(TMP4 = ctx101["$UNIT"]["at_key"](ctx101,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx101,TMP4) ? nqp.op.null(ctx101) : TMP4)]))) : TMP2))))},static_info_4,ctx100).apply(undefined,[ctx100,nqp.empty_named()])) : (nqp.op.null(ctx100))),
RETURN.apply(undefined,[ctx100,nqp.named({}),ctx100["$module_ctx"]]))} catch (e) {if (e === return102) { return return102.value;} else { throw e}}})())}))
;return (ctx82["$?PACKAGE"],
ctx82["$?CLASS"],
(ctx82["%modules_loaded"] = (nqp.op.hash(ctx82))),
(ctx82["%settings_loaded"] = (nqp.op.hash(ctx82))),
(ctx82["$stub_how"] = (nqp.op.null(ctx82))),
(ctx82["&merge_globals"] = (cuid_28_1380203984_5957)),
ctx82["%modules_loaded"],
ctx82["%settings_loaded"],
cuid_25_1380203984_5957,
cuid_26_1380203984_5957,
cuid_27_1380203984_5957,
(ctx82["$stub_how"] = ("KnowHOW")),
ctx82["&merge_globals"])},static_info_5,ctx81).apply(undefined,[ctx81,nqp.empty_named()]),
nqp.op.bindcurhllsym(ctx81,"ModuleLoader",nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)))})},name:"",vars:{"@ARGS":0,"GLOBALish":0,"$?PACKAGE":0,"ModuleLoader":0}},
static_info_7 = {closure:function (some_outer) {return (function (caller_ctx,_NAMED) {var ctx105 = new nqp.Ctx(caller_ctx,null,'ctx105');
;return (cuid_29_1380203984_5957.apply(undefined,[ctx105,nqp.named({})]),
nqp.op.null(ctx105))})},name:"",vars:{}},
static_info_8 = {closure:function (some_outer) {return (function (caller_ctx,_NAMED) {var ctx106 = new nqp.Ctx(caller_ctx,null,'ctx106');
(ARGS = (Array.prototype.slice.call(arguments,2)));
;return (cuid_29_1380203984_5957.apply(undefined,[ctx106,nqp.named({})].concat(ARGS)),
nqp.op.null(ctx106))})},name:"",vars:{"ARGS":0}},
static_info_9 = {closure:function (ctx82) {return (function search_path(caller_ctx,_NAMED,param108,param109) {var ctx107 = new nqp.Ctx(caller_ctx,ctx82,'ctx107');
(ctx107["self"] = (param108));
(ctx107["$explicit_path"] = (param109));
;return (ctx107["self"],
ctx107["$explicit_path"],
(ctx107["@search_paths"] = (nqp.op.list(ctx107))),
ctx107["@search_paths"],
nqp.op.push(ctx107,ctx107["@search_paths"],"."),
nqp.op.push(ctx107,ctx107["@search_paths"],"blib"),
ctx107["@search_paths"])})},name:"search_path",outer:static_info_9,vars:{"self":0,"$explicit_path":0,"@search_paths":0,"@search_paths":0,"@search_paths":0,"@search_paths":0,"@search_paths":0}},
static_info_10 = {closure:function (ctx82) {return (function ctxsave(caller_ctx,_NAMED,param111) {var ctx110 = new nqp.Ctx(caller_ctx,ctx82,'ctx110');
(ctx110["self"] = (param111));
;return (ctx110["self"],
ctx110.bind_contextual("$*MAIN_CTX",nqp.op.ctxcaller(ctx110,nqp.op.ctx(ctx110))),
ctx110.bind_contextual("$*CTXSAVE",(0)))})},name:"ctxsave",outer:static_info_10,vars:{"self":0}},
static_info_11 = {closure:function (ctx82) {return (function load_module(caller_ctx,_NAMED,param115,param116) {var ctx112 = new nqp.Ctx(caller_ctx,ctx82,'ctx112');
(ctx112["self"] = (param115));
(ctx112["$module_name"] = (param116));
(ctx112["@global_merge_target"] = (Array.prototype.slice.call(arguments,4)));
;var TMP1;
var RETURN;
return (ctx112["self"],
ctx112["$module_name"],
ctx112["@global_merge_target"],
(ctx112["$module_ctx"] = (nqp.op.null(ctx112))),
(ctx112["$path"] = (nqp.op.null(ctx112))),
(ctx112["$*CTXSAVE"] = (nqp.op.null(ctx112))),
(ctx112["$*MAIN_CTX"] = (nqp.op.null(ctx112))),
(ctx112["$preserve_global"] = (nqp.op.null(ctx112))),
(function _() {var return114 = {};RETURN = function _(caller_ctx,NAMED_,value) {return114.value = value;throw return114};try {return (ctx112["$module_ctx"],
(ctx112["$path"] = (nqp.op.join(ctx112,"/",nqp.op.split(ctx112,"::",ctx112["$module_name"])))),
ctx112.bind_contextual("$*CTXSAVE",nqp.op.decont(ctx112,ctx112["self"])),
ctx112.bind_contextual("$*MAIN_CTX",nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)),
(ctx112["$preserve_global"] = (nqp.op.getcurhllsym(ctx112,"GLOBAL"))),
(ctx112["$module_ctx"] = (nqp.op.loadbytecode(ctx112,ctx112["$path"]))),
nqp.op.bindcurhllsym(ctx112,"GLOBAL",ctx112["$preserve_global"]),
(TMP1 = nqp.op.defined(ctx112,ctx112["$module_ctx"]),TMP1.Bool(ctx112) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx113 = new nqp.Ctx(caller_ctx,ctx112,'ctx113');
;var TMP1,
TMP2,
TMP3,
TMP4,
TMP5;
return ((ctx113["$UNIT"] = (nqp.op.null(ctx113))),
(ctx113["$UNIT"] = (nqp.op.ctxlexpad(ctx113, ctx113.lookup("$module_ctx")))),
(TMP1 = nqp.op.isnull(ctx113,(TMP5 = ctx113["$UNIT"]["at_key"](ctx113,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx113,TMP5) ? nqp.op.null(ctx113) : TMP5)),TMP1.Bool(ctx113) ? (TMP1) : ((TMP2 = nqp.op.elems(ctx113, ctx113.lookup("@global_merge_target")),TMP2.Bool(ctx113) ? (( ctx113.lookup("&merge_globals").apply(undefined,[ctx113,nqp.named({}),(TMP3 =  ctx113.lookup("@global_merge_target")["at_pos"](ctx113,nqp.named({}),(0)),nqp.op.isnull(ctx113,TMP3) ? nqp.op.null(ctx113) : TMP3),(TMP4 = ctx113["$UNIT"]["at_key"](ctx113,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx113,TMP4) ? nqp.op.null(ctx113) : TMP4)]))) : TMP2))))},static_info_4,ctx112).apply(undefined,[ctx112,nqp.empty_named()])) : (nqp.op.null(ctx112))),
RETURN.apply(undefined,[ctx112,nqp.named({}),ctx112["$module_ctx"]]))} catch (e) {if (e === return114) { return return114.value;} else { throw e}}})())})},name:"load_module",outer:static_info_11,vars:{"self":0,"$module_name":0,"@global_merge_target":0,"$module_ctx":0,"$path":0,"$*CTXSAVE":0,"$*MAIN_CTX":0,"$preserve_global":0,"$module_ctx":0,"$path":0,"$module_name":0,"self":0,"$preserve_global":0,"$module_ctx":0,"$path":0,"$preserve_global":0,"$module_ctx":0,"RETURN":0,"$module_ctx":0}};
var sc = nqp.op.createsc(top_ctx,"6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859");
nqp.op.scsetdesc(top_ctx,sc,"nqp-src/ModuleLoader.nqp");
/* set_code_refs ^{{{*/
nqp.set_code_refs(code_refs,[{closure:function (ctx2) {return (function search_path(caller_ctx,_NAMED,param28,param29) {var ctx27 = new nqp.Ctx(caller_ctx,ctx2,'ctx27');
(ctx27["self"] = (param28));
(ctx27["$explicit_path"] = (param29));
;return (ctx27["self"],
ctx27["$explicit_path"],
(ctx27["@search_paths"] = (nqp.op.list(ctx27))),
ctx27["@search_paths"],
nqp.op.push(ctx27,ctx27["@search_paths"],"."),
nqp.op.push(ctx27,ctx27["@search_paths"],"blib"),
ctx27["@search_paths"])})},name:"search_path",outer:static_info_9,vars:{"self":0,"$explicit_path":0,"@search_paths":0,"@search_paths":0,"@search_paths":0,"@search_paths":0,"@search_paths":0},code_ref:cuid_25_1380203984_5957},{closure:function (ctx2) {return (function ctxsave(caller_ctx,_NAMED,param31) {var ctx30 = new nqp.Ctx(caller_ctx,ctx2,'ctx30');
(ctx30["self"] = (param31));
;return (ctx30["self"],
ctx30.bind_contextual("$*MAIN_CTX",nqp.op.ctxcaller(ctx30,nqp.op.ctx(ctx30))),
ctx30.bind_contextual("$*CTXSAVE",(0)))})},name:"ctxsave",outer:static_info_10,vars:{"self":0},code_ref:cuid_26_1380203984_5957},{closure:function (ctx2) {return (function load_module(caller_ctx,_NAMED,param35,param36) {var ctx32 = new nqp.Ctx(caller_ctx,ctx2,'ctx32');
(ctx32["self"] = (param35));
(ctx32["$module_name"] = (param36));
(ctx32["@global_merge_target"] = (Array.prototype.slice.call(arguments,4)));
;var TMP1;
var RETURN;
return (ctx32["self"],
ctx32["$module_name"],
ctx32["@global_merge_target"],
(ctx32["$module_ctx"] = (nqp.op.null(ctx32))),
(ctx32["$path"] = (nqp.op.null(ctx32))),
(ctx32["$*CTXSAVE"] = (nqp.op.null(ctx32))),
(ctx32["$*MAIN_CTX"] = (nqp.op.null(ctx32))),
(ctx32["$preserve_global"] = (nqp.op.null(ctx32))),
(function _() {var return34 = {};RETURN = function _(caller_ctx,NAMED_,value) {return34.value = value;throw return34};try {return (ctx32["$module_ctx"],
(ctx32["$path"] = (nqp.op.join(ctx32,"/",nqp.op.split(ctx32,"::",ctx32["$module_name"])))),
ctx32.bind_contextual("$*CTXSAVE",nqp.op.decont(ctx32,ctx32["self"])),
ctx32.bind_contextual("$*MAIN_CTX",nqp.sc("6268B1AB08FADE8BAEC443EF1F7C9F8582FB9CFE-1380203986.41859",1)),
(ctx32["$preserve_global"] = (nqp.op.getcurhllsym(ctx32,"GLOBAL"))),
(ctx32["$module_ctx"] = (nqp.op.loadbytecode(ctx32,ctx32["$path"]))),
nqp.op.bindcurhllsym(ctx32,"GLOBAL",ctx32["$preserve_global"]),
(TMP1 = nqp.op.defined(ctx32,ctx32["$module_ctx"]),TMP1.Bool(ctx32) ? (new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx33 = new nqp.Ctx(caller_ctx,ctx32,'ctx33');
;var TMP1,
TMP2,
TMP3,
TMP4,
TMP5;
return ((ctx33["$UNIT"] = (nqp.op.null(ctx33))),
(ctx33["$UNIT"] = (nqp.op.ctxlexpad(ctx33, ctx33.lookup("$module_ctx")))),
(TMP1 = nqp.op.isnull(ctx33,(TMP5 = ctx33["$UNIT"]["at_key"](ctx33,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx33,TMP5) ? nqp.op.null(ctx33) : TMP5)),TMP1.Bool(ctx33) ? (TMP1) : ((TMP2 = nqp.op.elems(ctx33, ctx33.lookup("@global_merge_target")),TMP2.Bool(ctx33) ? (( ctx33.lookup("&merge_globals").apply(undefined,[ctx33,nqp.named({}),(TMP3 =  ctx33.lookup("@global_merge_target")["at_pos"](ctx33,nqp.named({}),(0)),nqp.op.isnull(ctx33,TMP3) ? nqp.op.null(ctx33) : TMP3),(TMP4 = ctx33["$UNIT"]["at_key"](ctx33,nqp.named({}),"GLOBALish"),nqp.op.isnull(ctx33,TMP4) ? nqp.op.null(ctx33) : TMP4)]))) : TMP2))))},static_info_4,ctx32).apply(undefined,[ctx32,nqp.empty_named()])) : (nqp.op.null(ctx32))),
RETURN.apply(undefined,[ctx32,nqp.named({}),ctx32["$module_ctx"]]))} catch (e) {if (e === return34) { return return34.value;} else { throw e}}})())})},name:"load_module",outer:static_info_11,vars:{"self":0,"$module_name":0,"@global_merge_target":0,"$module_ctx":0,"$path":0,"$*CTXSAVE":0,"$*MAIN_CTX":0,"$preserve_global":0,"$module_ctx":0,"$path":0,"$module_name":0,"self":0,"$preserve_global":0,"$module_ctx":0,"$path":0,"$preserve_global":0,"$module_ctx":0,"RETURN":0,"$module_ctx":0},code_ref:cuid_27_1380203984_5957}]);
/*}}}^*/
nqp.op.deserialize(top_ctx,"BgAAAEAAAAABAAAASAAAAAIAAABgAAAA/AEAAAQAAAA8AgAAhgIAAAAAAACGAgAAAAAAAIYCAACGAgAAAAAAAAYAAAAAAAAAAQAAAAAAAABkAAAAAQAAAMAAAABAAQAAAAAAAAIAAAAAAAAAAAAAAAoAAQAAAAIAAAACAAAAAAABAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAAAMAAAAAAAAAAQAAAAoAAAAAAAoAAwAAAAMAAAALAAAAAAAAAAAABAAAAAsAAAAAAAEAAAAFAAAACwAAAAAAAgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMA/////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAEAAAAAAAAAEAAAAAEAAAAHAAAABwAAAAAACgAAAAAAAgAAAAcAAAAAAAoAAwAAAAMAAAALAAAAAAAAAAAABAAAAAsAAAAAAAEAAAAFAAAACwAAAAAAAgAAAA==",sc,sh,code_refs,nqp.op.null(top_ctx));
/*}}}^*/
/* post_deserialize ^{{{*/
/*}}}^*/
/*}}}^*/
/* load ^{{{*/
if (require.main !== module) {new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx25 = new nqp.Ctx(caller_ctx,null,'ctx25');
;return (cuid_29_1380203984_5957.apply(undefined,[ctx25,nqp.named({})]),
nqp.op.null(ctx25))},static_info_7).apply(undefined,[top_ctx,nqp.empty_named()])}
/*}}}^*/
/* main ^{{{*/
if (require.main === module) {new nqp.CodeRef(function (caller_ctx,_NAMED) {var ctx26 = new nqp.Ctx(caller_ctx,null,'ctx26');
(ARGS = (Array.prototype.slice.call(arguments,2)));
;return (cuid_29_1380203984_5957.apply(undefined,[ctx26,nqp.named({})].concat(ARGS)),
nqp.op.null(ctx26))},static_info_8).apply(undefined,[top_ctx,nqp.empty_named()].concat(process.argv.slice(1)))}
/*}}}^*/
