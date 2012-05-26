.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "nqp_bigint_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("47_1338064445.054")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 0
    .const 'Sub' $P1384 = "61_1338064445.054" 
    capture_lex $P1384
    .const 'Sub' $P1081 = "51_1338064445.054" 
    capture_lex $P1081
    .const 'Sub' $P1040 = "50_1338064445.054" 
    capture_lex $P1040
    .const 'Sub' $P1006 = "48_1338064445.054" 
    capture_lex $P1006
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P1006 = "48_1338064445.054" 
    capture_lex $P1006
    $P1006()
.annotate 'line', 29
    .const 'Sub' $P1040 = "50_1338064445.054" 
    capture_lex $P1040
    $P1040()
.annotate 'line', 48
    .const 'Sub' $P1081 = "51_1338064445.054" 
    capture_lex $P1081
    $P1081()
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_1379
    set $P100, $P101
    goto if_1379_end
  if_1379:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_1379_end:
    .return ($P100)
    .const 'Sub' $P1381 = "60_1338064445.054" 
    .return ($P1381)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post62") :outer("47_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 0
    .const 'Sub' $P1001 = "47_1338064445.054" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P107
    get_class $P108, "LexPad"
    get_class $P109, "NQPLexPad"
    $P107."hll_map"($P108, $P109)
    nqp_create_sc $P110, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992"
    .local pmc cur_sc
    set cur_sc, $P110
    cur_sc."set_description"("src\\stage2\\QAST.nqp")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P111, "ModuleLoader"
    $P112 = $P111."load_setting"("NQPCORE")
    block."set_outer_ctx"($P112)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P111, "ModuleLoader"
    $P111."load_module"("NQPHLL")
    set $S100, "AQAAAEAAAAAFAAAAaAAAAAcAAACgAAAABA8AADsAAAC0EgAAjBkAAAAAAACMGQAAAAAAAIwZAACMGQAAAAAAAAQAAAAFAAAADgAAAA8AAABKAAAASwAAAKAAAAAAAAAAogAAAKMAAAABAAAAAAAAAAwAAAAKAQAAIwAAABoDAABEAAAAHAYAANQAAAAmDAAA1gAAAM4MAADcAAAArg0AAAAAAAApAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAKgAAAAMAAAACAAEAAAAXAAAABgAAAAIAAQAAAD4AAAAHAAAAAgABAAAATAAAAAgAAAACAAEAAABSAAAACQAAAAIAAQAAAFcAAAAKAAAAAgAAAAAAKwAAAAsAAAACAAAAAAAsAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAC0AAAAAAAAAAQAAAAoAAAAAAAoAEAAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAIAAAALAAAAEwAAAAIAAAAAAAIAAAAUAAAAAgACAAAADQAAABUAAAACAAIAAAAQAAAAFgAAAAIAAgAAABIAAAAXAAAAAgACAAAAEwAAABgAAAACAAIAAAAWAAAAGQAAAAIAAgAAABcAAAAaAAAAAgACAAAAGAAAABsAAAACAAAAAAADAAAAHAAAAAIAAAAAAAQAAAAdAAAAAgAAAAAABQAAAB4AAAACAAAAAAAGAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAAEAAAACAAIAAAAUAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAIAAAAUAAAACgACAAAAHwAAAAQAAAAAAAAAAAAgAAAABAABAAAAAAAAAAIAAAAAAAEAAAAKAAIAAAAhAAAABAACAAAAAAAAACIAAAAEAAMAAAAAAAAAAAAAAC4AAAAAAAAABwAAAAoAAAAAAAoAFgAAACQAAAACAAIAAAAIAAAAJQAAAAIAAgAAAAkAAAAmAAAAAgACAAAACgAAACcAAAACAAIAAAALAAAAKAAAAAIAAAAAAAIAAAApAAAAAgACAAAADQAAACoAAAACAAIAAAAQAAAAKwAAAAIAAgAAABIAAAAsAAAAAgACAAAAEwAAAC0AAAACAAIAAAAWAAAALgAAAAIAAgAAABcAAAAvAAAAAgACAAAAGAAAADAAAAACAAAAAAADAAAAMQAAAAIAAAAAAAQAAAAyAAAAAgAAAAAABQAAADMAAAACAAAAAAAGAAAANAAAAAIAAAAAAAgAAAA1AAAAAgAAAAAACQAAADYAAAACAAAAAAAKAAAANwAAAAIAAAAAAAsAAAA4AAAAAgAAAAAADAAAADkAAAACAAAAAAANAAAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAAcAAAACAAAAAAABAAAAAgACAAAAFAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAQAAAAAAAAAAgACAAAABwAAAAMAAgACAAAAFAAAAAoAAgAAADoAAAAEAAAAAAAAAAAAOwAAAAQAAQAAAAAAAAACAAAAAAABAAAACgACAAAAPAAAAAQAAgAAAAAAAAA9AAAABAADAAAAAAAAAAIAAAAAAAcAAAAKAAYAAAA+AAAABAAEAAAAAAAAAD8AAAAEAAUAAAAAAAAAQAAAAAQABgAAAAAAAABBAAAABAAHAAAAAAAAAEIAAAAEAAgAAAAAAAAAQwAAAAQACQAAAAAAAAAAAAAALwAAAAAAAAAOAAAACgAAAAAACgBOAAAARQAAAAIAAgAAAAgAAABGAAAAAgACAAAACQAAAEcAAAACAAIAAAAKAAAASAAAAAIAAgAAAAsAAABJAAAAAgADAAAAXwAAAEwAAAACAAIAAAANAAAATQAAAAIAAgAAABAAAABOAAAAAgACAAAAEgAAAE8AAAACAAIAAAATAAAAUAAAAAIAAwAAAGAAAABRAAAAAgADAAAAYQAAAFIAAAACAAMAAABiAAAAUwAAAAIAAwAAAGMAAABUAAAAAgADAAAAZAAAAFUAAAACAAMAAABlAAAAVgAAAAIAAwAAAGYAAABXAAAAAgADAAAAZwAAAFgAAAACAAMAAABoAAAAWQAAAAIAAwAAAGkAAABaAAAAAgADAAAAagAAAFsAAAACAAMAAABrAAAAXAAAAAIAAwAAAGwAAABdAAAAAgADAAAAbQAAAF4AAAACAAMAAABuAAAAXwAAAAIAAwAAAG8AAABgAAAAAgADAAAAcAAAAGEAAAACAAMAAABxAAAAYgAAAAIAAwAAAHIAAABjAAAAAgADAAAAcwAAAGQAAAACAAMAAAB0AAAAZQAAAAIAAwAAAHUAAABmAAAAAgADAAAAdgAAAGcAAAACAAMAAAB3AAAAaAAAAAIAAwAAAHgAAABpAAAAAgADAAAAeQAAAGoAAAACAAMAAAB6AAAAawAAAAIAAwAAAHsAAABsAAAAAgADAAAAfAAAAG0AAAACAAMAAAB9AAAAbgAAAAIAAwAAAH4AAABvAAAAAgADAAAAfwAAAHAAAAACAAMAAACAAAAAcQAAAAIAAwAAAIEAAAByAAAAAgADAAAAggAAAHMAAAACAAMAAACDAAAAdAAAAAIAAwAAAIQAAAB1AAAAAgADAAAAhQAAAHYAAAACAAMAAACGAAAAdwAAAAIAAwAAAIcAAAB4AAAAAgADAAAAiAAAAHkAAAACAAMAAACJAAAAegAAAAIAAwAAAIoAAAB7AAAAAgAAAAAADwAAAHwAAAACAAAAAAAQAAAAfQAAAAIAAAAAABEAAAB+AAAAAgAAAAAAEgAAAH8AAAACAAAAAAATAAAAgAAAAAIAAAAAABQAAACBAAAAAgAAAAAAFQAAAIIAAAACAAAAAAAWAAAAgwAAAAIAAAAAABcAAACEAAAAAgAAAAAAGAAAAIUAAAACAAAAAAAZAAAAhgAAAAIAAAAAABoAAACHAAAAAgAAAAAAGwAAAIgAAAACAAAAAAAcAAAAiQAAAAIAAAAAAB0AAACKAAAAAgAAAAAAHgAAAIsAAAACAAAAAAAfAAAAjAAAAAIAAAAAACAAAACNAAAAAgAAAAAAIQAAAI4AAAACAAAAAAAiAAAAjwAAAAIAAAAAACMAAACQAAAAAgAAAAAAJAAAAJEAAAACAAAAAAAlAAAAkgAAAAIAAAAAACYAAACTAAAAAgAAAAAAJwAAAJQAAAACAAAAAAAoAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAA4AAAACAAMAAABeAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAALAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAgAAAAcAAAADAAIAAwAAAF4AAAAKAAsAAACVAAAABAAAAAAAAAAAAJYAAAAEAAEAAAAAAAAAlwAAAAQAAgAAAAAAAACYAAAABAADAAAAAAAAAJkAAAAEAAQAAAAAAAAAmgAAAAQABQAAAAAAAACbAAAABAAGAAAAAAAAAJwAAAAEAAcAAAAAAAAAnQAAAAQACAAAAAAAAACeAAAABAAJAAAAAAAAAJ8AAAAEAAoAAAAAAAAAAgAAAAAADgAAAAMAAAAAADgAAAAAAAAAKgAAAAoAAQAAANUAAAACAAEAAAABAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAACoAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAKgAAAAMAAAAAADkAAAAAAAAAKwAAAAoABQAAANcAAAACAAMAAAABAAAA2AAAAAIAAwAAADwAAADZAAAAAgADAAAAXgAAANoAAAACAAMAAADVAAAA2wAAAAIAAwAAAJwAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAKwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAArAAAAAwAAAAAAOgAAAAAAAAAsAAAACgADAAAA3QAAAAIAAAAAAAEAAADeAAAAAgAAAAAABwAAAN8AAAACAAAAAAAOAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAACwAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAgAAAAUAAAAAAAAAAQAAAAIAAAAFAAAAEAAAAAEAAAACAAAABQAAACAAAAABAAAAAgAAAAUAAAAwAAAAAQAAAAIAAAAFAAAAQAAAAAEAAAAAAAAAAgAAAFAAAAAAAAAAAgAAAAUAAABQAAAAAQAAAAIAAAAFAAAAYAAAAAEAAAACAAAABQAAAHAAAAABAAAAAgAAAAUAAACAAAAAAQAAAAIAAAAFAAAAkAAAAAEAAAACAAAABQAAAKAAAAABAAAAAAAAAAMAAACwAAAAAAAAAAIAAAAFAAAAsAAAAAEAAAACAAAABQAAAMAAAAABAAAAAgAAAAUAAADQAAAAAQAAAAIAAAAFAAAA4AAAAAEAAAACAAAABQAAAPAAAAABAAAAAgAAAAUAAAAAAQAAAQAAAAIAAAAFAAAAEAEAAAEAAAACAAAABQAAACABAAABAAAAAgAAAAUAAAAwAQAAAQAAAAIAAAAFAAAAQAEAAAEAAAACAAAABQAAAFABAAABAAAAAgAAAAUAAABgAQAAAQAAAAIAAAAFAAAAcAEAAAEAAAACAAAABQAAAIABAAABAAAAAgAAAAUAAACQAQAAAQAAAAIAAAAFAAAAoAEAAAEAAAACAAAABQAAALABAAABAAAAAgAAAAUAAADAAQAAAQAAAAIAAAAFAAAA0AEAAAEAAAACAAAABQAAAOABAAABAAAAAgAAAAUAAADwAQAAAQAAAAIAAAAFAAAAAAIAAAEAAAACAAAABQAAABACAAABAAAAAgAAAAUAAAAgAgAAAQAAAAIAAAAFAAAAMAIAAAEAAAACAAAABQAAAEACAAABAAAABAAAAAAAAABQAgAAAQAAAAAAAAAEAAAAYAIAAAAAAAAAAAAABQAAAGACAAAAAAAAAAAAAAYAAABgAgAAAAAAAAUAAAAGAAAAYAIAAAEAAAAFAAAABgAAACYDAAABAAAABQAAAAYAAAA8BAAAAQAAAAUAAAAIAAAACAYAAAEAAAAFAAAACAAAABwGAAABAAAABQAAAAgAAAAwBgAAAQAAAAUAAAAIAAAARAYAAAEAAAAFAAAACAAAAFgGAAABAAAABQAAAAgAAABsBgAAAQAAAAUAAAAIAAAAgAYAAAEAAAAFAAAACAAAAJQGAAABAAAABAAAAAAAAACoBgAAAQAAAAQAAAAAAAAAuAYAAAEAAAAEAAAAAAAAAMgGAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAKEAAAAHAAAAAAAKAAAAAAAGAKQAAAAKAAIAAAClAAAAAgAAAAAAMAAAAKYAAAACAAAAAAAxAAAACgAFAAAApwAAAAIAAAAAAAIAAACoAAAAAgAAAAAAAwAAAKkAAAACAAAAAAAEAAAAqgAAAAIAAAAAAAUAAACrAAAAAgAAAAAABgAAAAEABwABAAAAAgACAAAAFAAAAAEAAQABAAEABAABAAAAAAAAAAcAAwAAAAIAAAAAAAEAAAACAAIAAAAUAAAAAgACAAAABwAAAAEAAQABAAEAAQAGAKwAAAAKAAYAAACtAAAAAgAAAAAAMgAAAK4AAAACAAAAAAAzAAAArwAAAAIAAAAAADQAAACwAAAAAgAAAAAANQAAALEAAAACAAAAAAA2AAAAsgAAAAIAAAAAADcAAAAKAAYAAACzAAAAAgAAAAAACAAAALQAAAACAAAAAAAJAAAAtQAAAAIAAAAAAAoAAAC2AAAAAgAAAAAACwAAALcAAAACAAAAAAAMAAAAuAAAAAIAAAAAAA0AAAABAAcAAQAAAAIAAAAAAAEAAAABAAEAAQABAAQAAQAAAAAAAAAHAAQAAAACAAAAAAAHAAAAAgAAAAAAAQAAAAIAAgAAABQAAAACAAIAAAAHAAAAAQABAAEAAQABAAYAuQAAAAEACgAaAAAAugAAAAIAAAAAAA8AAAC7AAAAAgAAAAAAEAAAALwAAAACAAAAAAARAAAAvQAAAAIAAAAAABIAAAC+AAAAAgAAAAAAEwAAAL8AAAACAAAAAAAUAAAAwAAAAAIAAAAAABUAAADBAAAAAgAAAAAAFgAAAMIAAAACAAAAAAAXAAAAwwAAAAIAAAAAABgAAADEAAAAAgAAAAAAGQAAAMUAAAACAAAAAAAaAAAAxgAAAAIAAAAAABsAAADHAAAAAgAAAAAAHAAAAMgAAAACAAAAAAAdAAAAyQAAAAIAAAAAAB4AAADKAAAAAgAAAAAAHwAAAMsAAAACAAAAAAAgAAAAzAAAAAIAAAAAACEAAADNAAAAAgAAAAAAIgAAAM4AAAACAAAAAAAjAAAAzwAAAAIAAAAAACQAAADQAAAAAgAAAAAAJQAAANEAAAACAAAAAAAmAAAA0gAAAAIAAAAAACcAAADTAAAAAgAAAAAAKAAAAAEABwABAAAAAgADAAAAXgAAAAEAAQABAAEABAABAAAAAAAAAAcAAwAAAAIAAAAAAA4AAAACAAMAAABeAAAAAgACAAAABwAAAAEAAQABAAEAAQAGAOAAAAADAAQAAAAAAAAAAAADAAYA4QAAAAMABAAAAAAAAAAAAAMABgDiAAAAAwAEAAAAAAAAAAAAAwAGAOMAAAADAAQAAAAAAAAAAAADAAYA5AAAAAMABAAAAAAAAAAAAAMABgDlAAAAAwAEAAAAAAAAAAAAAwAGAOYAAAADAAQAAAAAAAAAAAADAAYA5wAAAAMABAAAAAAAAAAAAAMA6AAAAAcAAAAAAAoAAAAAAOkAAAAHAAAAAAAKAAAAAADqAAAABwAAAAAACgAAAAAA"
    new $P111, "ResizableStringArray"
    .local pmc string_heap
    set string_heap, $P111
    null $S101
    push string_heap, $S101
    push string_heap, "P6opaque"
    push string_heap, "QRegex"
    push string_heap, "NQPCursorRole"
    push string_heap, "152819621F18B86657DB412D206298CA3534F307-1338064436.189"
    push string_heap, "src\\stage2\\QRegex.nqp"
    push string_heap, "NQPMatch"
    push string_heap, "NQPCursor"
    push string_heap, "NQPRegexMethod"
    push string_heap, "NQPRegex"
    push string_heap, "HLL"
    push string_heap, "QAST"
    push string_heap, "P6opaque"
    push string_heap, "CREATE"
    push string_heap, "2DEE75AFD50ED67BDF162F6BA56A80FA8956D48C-1338064435.275"
    push string_heap, "src\\stage2\\NQPCORE.setting"
    push string_heap, "bless"
    push string_heap, "BUILDALL"
    push string_heap, "BUILD_MAGIC"
    push string_heap, "new"
    push string_heap, "Str"
    push string_heap, "ACCEPTS"
    push string_heap, "isa"
    push string_heap, "__dump"
    push string_heap, "BUILD"
    push string_heap, "list"
    push string_heap, "hash"
    push string_heap, "name"
    push string_heap, "node"
    push string_heap, "push"
    push string_heap, "unshift"
    push string_heap, "@!array"
    push string_heap, "%!hash"
    push string_heap, "$!name"
    push string_heap, "$!node"
    push string_heap, "P6opaque"
    push string_heap, "CREATE"
    push string_heap, "bless"
    push string_heap, "BUILDALL"
    push string_heap, "BUILD_MAGIC"
    push string_heap, "new"
    push string_heap, "Str"
    push string_heap, "ACCEPTS"
    push string_heap, "isa"
    push string_heap, "__dump"
    push string_heap, "BUILD"
    push string_heap, "list"
    push string_heap, "hash"
    push string_heap, "name"
    push string_heap, "node"
    push string_heap, "push"
    push string_heap, "unshift"
    push string_heap, "rxtype"
    push string_heap, "subtype"
    push string_heap, "backtrack"
    push string_heap, "negate"
    push string_heap, "min"
    push string_heap, "max"
    push string_heap, "@!array"
    push string_heap, "%!hash"
    push string_heap, "$!name"
    push string_heap, "$!node"
    push string_heap, "$!rxtype"
    push string_heap, "$!subtype"
    push string_heap, "$!backtrack"
    push string_heap, "$!negate"
    push string_heap, "$!min"
    push string_heap, "$!max"
    push string_heap, "P6opaque"
    push string_heap, "CREATE"
    push string_heap, "bless"
    push string_heap, "BUILDALL"
    push string_heap, "BUILD_MAGIC"
    push string_heap, "new"
    push string_heap, "1B4BCF3CBDD2B9FEC4F38EAB1F0132580EC97417-1338064439.301"
    push string_heap, "src\\stage2\\gen\\NQPHLL.pm"
    push string_heap, "Str"
    push string_heap, "ACCEPTS"
    push string_heap, "isa"
    push string_heap, "__dump"
    push string_heap, "BUILD"
    push string_heap, "get_exports"
    push string_heap, "get_module"
    push string_heap, "language"
    push string_heap, "compiler"
    push string_heap, "config"
    push string_heap, "load_module"
    push string_heap, "import"
    push string_heap, "autoprint"
    push string_heap, "interactive"
    push string_heap, "eval"
    push string_heap, "ctxsave"
    push string_heap, "panic"
    push string_heap, "stages"
    push string_heap, "parsegrammar"
    push string_heap, "parseactions"
    push string_heap, "interactive_banner"
    push string_heap, "interactive_prompt"
    push string_heap, "compiler_progname"
    push string_heap, "commandline_options"
    push string_heap, "command_line"
    push string_heap, "command_eval"
    push string_heap, "process_args"
    push string_heap, "evalfiles"
    push string_heap, "compile"
    push string_heap, "parse"
    push string_heap, "past"
    push string_heap, "post"
    push string_heap, "pirbegin"
    push string_heap, "pir"
    push string_heap, "evalpmc"
    push string_heap, "dumper"
    push string_heap, "usage"
    push string_heap, "version"
    push string_heap, "show-config"
    push string_heap, "nqpevent"
    push string_heap, "removestage"
    push string_heap, "addstage"
    push string_heap, "parse_name"
    push string_heap, "lineof"
    push string_heap, "user-progname"
    push string_heap, "cli-options"
    push string_heap, "cli-arguments"
    push string_heap, "unique"
    push string_heap, "escape"
    push string_heap, "as_post"
    push string_heap, "post_children"
    push string_heap, "regex_post"
    push string_heap, "post_new"
    push string_heap, "alt"
    push string_heap, "altseq"
    push string_heap, "anchor"
    push string_heap, "cclass"
    push string_heap, "concat"
    push string_heap, "conj"
    push string_heap, "conjseq"
    push string_heap, "enumcharlist"
    push string_heap, "literal"
    push string_heap, "pass"
    push string_heap, "pastnode"
    push string_heap, "quant"
    push string_heap, "scan"
    push string_heap, "subcapture"
    push string_heap, "subrule"
    push string_heap, "uniprop"
    push string_heap, "ws"
    push string_heap, "regex_mark"
    push string_heap, "regex_peek"
    push string_heap, "regex_commit"
    push string_heap, "@!stages"
    push string_heap, "$!parsegrammar"
    push string_heap, "$!parseactions"
    push string_heap, "@!cmdoptions"
    push string_heap, "$!usage"
    push string_heap, "$!compiler_progname"
    push string_heap, "$!language"
    push string_heap, "%!config"
    push string_heap, "$!user_progname"
    push string_heap, "@!cli-arguments"
    push string_heap, "%!cli-options"
    push string_heap, "__6MODEL_CORE__"
    push string_heap, "GLOBALish"
    push string_heap, "5B6BCDEB97207A8A1AF979F9510A88333D9459D9-1338064432.041"
    push string_heap, "src\\stage2\\gen\\nqp-mo.pm"
    push string_heap, "QAST::Node"
    push string_heap, "$!name"
    push string_heap, "$!node"
    push string_heap, "new"
    push string_heap, "name"
    push string_heap, "node"
    push string_heap, "push"
    push string_heap, "unshift"
    push string_heap, "QAST::Regex"
    push string_heap, "$!rxtype"
    push string_heap, "$!subtype"
    push string_heap, "$!backtrack"
    push string_heap, "$!negate"
    push string_heap, "$!min"
    push string_heap, "$!max"
    push string_heap, "rxtype"
    push string_heap, "subtype"
    push string_heap, "backtrack"
    push string_heap, "negate"
    push string_heap, "min"
    push string_heap, "max"
    push string_heap, "QAST::Compiler"
    push string_heap, "unique"
    push string_heap, "escape"
    push string_heap, "as_post"
    push string_heap, "post_children"
    push string_heap, "regex_post"
    push string_heap, "post_new"
    push string_heap, "alt"
    push string_heap, "altseq"
    push string_heap, "anchor"
    push string_heap, "cclass"
    push string_heap, "concat"
    push string_heap, "conj"
    push string_heap, "conjseq"
    push string_heap, "enumcharlist"
    push string_heap, "literal"
    push string_heap, "pass"
    push string_heap, "pastnode"
    push string_heap, "quant"
    push string_heap, "scan"
    push string_heap, "subcapture"
    push string_heap, "subrule"
    push string_heap, "uniprop"
    push string_heap, "ws"
    push string_heap, "regex_mark"
    push string_heap, "regex_peek"
    push string_heap, "regex_commit"
    push string_heap, "P6opaque"
    push string_heap, "NFA"
    push string_heap, "P6opaque"
    push string_heap, "Grammar"
    push string_heap, "Actions"
    push string_heap, "Compiler"
    push string_heap, "CommandLine"
    push string_heap, "World"
    push string_heap, "P6opaque"
    push string_heap, "Node"
    push string_heap, "Regex"
    push string_heap, "Compiler"
    push string_heap, "$!name"
    push string_heap, "$!node"
    push string_heap, "$!rxtype"
    push string_heap, "$!subtype"
    push string_heap, "$!backtrack"
    push string_heap, "$!negate"
    push string_heap, "$!min"
    push string_heap, "$!max"
    push string_heap, "QRegex"
    push string_heap, "HLL"
    push string_heap, "QAST"
    .const 'Sub' $P1384 = "61_1338064445.054" 
    capture_lex $P1384
    $P113 = $P1384()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P113
    .const 'LexInfo' $P1422 = "47_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 0
    $P1422."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'LexInfo' $P1423 = "47_1338064445.054" 
    $P1423."finish_static_lexpad"()
    .const 'LexInfo' $P1424 = "47_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 0
    $P1424."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1425 = "47_1338064445.054" 
    $P1425."finish_static_lexpad"()
    .const '' $P1426 = "10_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 2
    set_sub_code_object $P1426, $P114
    .const '' $P1427 = "11_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 3
    set_sub_code_object $P1427, $P114
    .const '' $P1428 = "12_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 4
    set_sub_code_object $P1428, $P114
    .const '' $P1429 = "13_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 5
    set_sub_code_object $P1429, $P114
    .const '' $P1430 = "14_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 6
    set_sub_code_object $P1430, $P114
    .const 'LexInfo' $P1431 = "48_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 1
    $P1431."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1432 = "48_1338064445.054" 
    $P1432."finish_static_lexpad"()
    .const 'LexInfo' $P1433 = "48_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 1
    $P1433."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P1434 = "48_1338064445.054" 
    $P1434."finish_static_lexpad"()
    .const '' $P1435 = "15_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 8
    set_sub_code_object $P1435, $P114
    .const '' $P1436 = "16_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 9
    set_sub_code_object $P1436, $P114
    .const '' $P1437 = "17_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 10
    set_sub_code_object $P1437, $P114
    .const '' $P1438 = "18_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 11
    set_sub_code_object $P1438, $P114
    .const '' $P1439 = "19_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 12
    set_sub_code_object $P1439, $P114
    .const '' $P1440 = "20_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 13
    set_sub_code_object $P1440, $P114
    .const 'LexInfo' $P1441 = "50_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    $P1441."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1442 = "50_1338064445.054" 
    $P1442."finish_static_lexpad"()
    .const 'LexInfo' $P1443 = "50_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    $P1443."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P1444 = "50_1338064445.054" 
    $P1444."finish_static_lexpad"()
    .const '' $P1445 = "21_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 15
    set_sub_code_object $P1445, $P114
    .const '' $P1446 = "22_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 16
    set_sub_code_object $P1446, $P114
    .const '' $P1447 = "23_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 17
    set_sub_code_object $P1447, $P114
    .const '' $P1448 = "24_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 18
    set_sub_code_object $P1448, $P114
    .const '' $P1449 = "25_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 19
    set_sub_code_object $P1449, $P114
    .const '' $P1450 = "26_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 20
    set_sub_code_object $P1450, $P114
    .const '' $P1451 = "27_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 21
    set_sub_code_object $P1451, $P114
    .const '' $P1452 = "28_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 22
    set_sub_code_object $P1452, $P114
    .const '' $P1453 = "29_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 23
    set_sub_code_object $P1453, $P114
    .const '' $P1454 = "30_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 24
    set_sub_code_object $P1454, $P114
    .const '' $P1455 = "31_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 25
    set_sub_code_object $P1455, $P114
    .const '' $P1456 = "32_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 26
    set_sub_code_object $P1456, $P114
    .const '' $P1457 = "33_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 27
    set_sub_code_object $P1457, $P114
    .const '' $P1458 = "34_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 28
    set_sub_code_object $P1458, $P114
    .const '' $P1459 = "35_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 29
    set_sub_code_object $P1459, $P114
    .const '' $P1460 = "36_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 30
    set_sub_code_object $P1460, $P114
    .const '' $P1461 = "37_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 31
    set_sub_code_object $P1461, $P114
    .const '' $P1462 = "38_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 32
    set_sub_code_object $P1462, $P114
    .const '' $P1463 = "39_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 33
    set_sub_code_object $P1463, $P114
    .const '' $P1464 = "40_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 34
    set_sub_code_object $P1464, $P114
    .const '' $P1465 = "41_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 35
    set_sub_code_object $P1465, $P114
    .const '' $P1466 = "42_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 36
    set_sub_code_object $P1466, $P114
    .const '' $P1467 = "43_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 37
    set_sub_code_object $P1467, $P114
    .const '' $P1468 = "44_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 38
    set_sub_code_object $P1468, $P114
    .const '' $P1469 = "45_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 39
    set_sub_code_object $P1469, $P114
    .const '' $P1470 = "46_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 40
    set_sub_code_object $P1470, $P114
    .const 'LexInfo' $P1471 = "51_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 14
    $P1471."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1472 = "51_1338064445.054" 
    $P1472."finish_static_lexpad"()
    .const 'LexInfo' $P1473 = "51_1338064445.054" 
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 14
    $P1473."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P1474 = "51_1338064445.054" 
    $P1474."finish_static_lexpad"()
    nqp_get_sc_object $P114, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 0
    set_hll_global "GLOBAL", $P114
.end


.HLL "nqp"

.namespace []
.sub "_block1383"  :anon :subid("61_1338064445.054") :outer("47_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 0
    .const 'Sub' $P1385 = "10_1338064445.054" 
    .const 'Sub' $P1386 = "11_1338064445.054" 
    .const 'Sub' $P1387 = "12_1338064445.054" 
    .const 'Sub' $P1388 = "13_1338064445.054" 
    .const 'Sub' $P1389 = "14_1338064445.054" 
    .const 'Sub' $P1390 = "15_1338064445.054" 
    .const 'Sub' $P1391 = "16_1338064445.054" 
    .const 'Sub' $P1392 = "17_1338064445.054" 
    .const 'Sub' $P1393 = "18_1338064445.054" 
    .const 'Sub' $P1394 = "19_1338064445.054" 
    .const 'Sub' $P1395 = "20_1338064445.054" 
    .const 'Sub' $P1396 = "21_1338064445.054" 
    .const 'Sub' $P1397 = "22_1338064445.054" 
    .const 'Sub' $P1398 = "23_1338064445.054" 
    .const 'Sub' $P1399 = "24_1338064445.054" 
    .const 'Sub' $P1400 = "25_1338064445.054" 
    .const 'Sub' $P1401 = "26_1338064445.054" 
    .const 'Sub' $P1402 = "27_1338064445.054" 
    .const 'Sub' $P1403 = "28_1338064445.054" 
    .const 'Sub' $P1404 = "29_1338064445.054" 
    .const 'Sub' $P1405 = "30_1338064445.054" 
    .const 'Sub' $P1406 = "31_1338064445.054" 
    .const 'Sub' $P1407 = "32_1338064445.054" 
    .const 'Sub' $P1408 = "33_1338064445.054" 
    .const 'Sub' $P1409 = "34_1338064445.054" 
    .const 'Sub' $P1410 = "35_1338064445.054" 
    .const 'Sub' $P1411 = "36_1338064445.054" 
    .const 'Sub' $P1412 = "37_1338064445.054" 
    .const 'Sub' $P1413 = "38_1338064445.054" 
    .const 'Sub' $P1414 = "39_1338064445.054" 
    .const 'Sub' $P1415 = "40_1338064445.054" 
    .const 'Sub' $P1416 = "41_1338064445.054" 
    .const 'Sub' $P1417 = "42_1338064445.054" 
    .const 'Sub' $P1418 = "43_1338064445.054" 
    .const 'Sub' $P1419 = "44_1338064445.054" 
    .const 'Sub' $P1420 = "45_1338064445.054" 
    .const 'Sub' $P1421 = "46_1338064445.054" 
    new $P112, "ResizablePMCArray"
    push $P112, $P1385
    push $P112, $P1386
    push $P112, $P1387
    push $P112, $P1388
    push $P112, $P1389
    push $P112, $P1390
    push $P112, $P1391
    push $P112, $P1392
    push $P112, $P1393
    push $P112, $P1394
    push $P112, $P1395
    push $P112, $P1396
    push $P112, $P1397
    push $P112, $P1398
    push $P112, $P1399
    push $P112, $P1400
    push $P112, $P1401
    push $P112, $P1402
    push $P112, $P1403
    push $P112, $P1404
    push $P112, $P1405
    push $P112, $P1406
    push $P112, $P1407
    push $P112, $P1408
    push $P112, $P1409
    push $P112, $P1410
    push $P112, $P1411
    push $P112, $P1412
    push $P112, $P1413
    push $P112, $P1414
    push $P112, $P1415
    push $P112, $P1416
    push $P112, $P1417
    push $P112, $P1418
    push $P112, $P1419
    push $P112, $P1420
    push $P112, $P1421
    .return ($P112)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "_block1005"  :subid("48_1338064445.054") :outer("47_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 7
    .const 'Sub' $P1035 = "14_1338064445.054" 
    capture_lex $P1035
    .const 'Sub' $P1032 = "13_1338064445.054" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "12_1338064445.054" 
    capture_lex $P1026
    .const 'Sub' $P1020 = "11_1338064445.054" 
    capture_lex $P1020
    .const 'Sub' $P1009 = "10_1338064445.054" 
    capture_lex $P1009
    .lex "$?PACKAGE", $P1007
    .lex "$?CLASS", $P1008
.annotate 'line', 24
    .const 'Sub' $P1035 = "14_1338064445.054" 
    newclosure $P1038, $P1035
.annotate 'line', 7
    .return ($P1038)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.include "except_types.pasm"
.sub "new" :anon :subid("10_1338064445.054") :outer("48_1338064445.054")
    .param pmc param_1010
    .param pmc param_1011 :slurpy
    .param pmc param_1012 :slurpy :named
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 11
    .const 'Sub' $P1017 = "49_1338064445.054" 
    capture_lex $P1017
    .lex "self", param_1010
    .lex "@children", param_1011
    .lex "%options", param_1012
.annotate 'line', 12
    new $P100, "Undef"
    set $P1013, $P100
    .lex "$new", $P1013
    set $P101, param_1010
    nqp_decontainerize $P102, $P101
    $P103 = $P102."CREATE"()
    set $P1013, $P103
.annotate 'line', 13
    set $P101, $P1013
    unless_null $P101, vivify_63
    new $P101, "Undef"
  vivify_63:
    $P101."BUILD"()
.annotate 'line', 14
    set $P101, $P1013
    unless_null $P101, vivify_64
    new $P101, "Undef"
  vivify_64:
    $P102 = $P101."list"()
    set $P1014, param_1011
    unless_null $P1014, vivify_65
    $P1014 = root_new ['parrot';'ResizablePMCArray']
  vivify_65:
    splice $P102, $P1014, 0, 0
.annotate 'line', 15
    set $P1015, param_1012
    unless_null $P1015, vivify_66
    $P1015 = root_new ['parrot';'Hash']
  vivify_66:
    defined $I100, $P1015
    unless $I100, for_undef_67
    iter $P101, $P1015
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1019_handler
    push_eh $P103
  loop1019_test:
    unless $P101, loop1019_done
    shift $P102, $P101
  loop1019_redo:
    .const 'Sub' $P1017 = "49_1338064445.054" 
    capture_lex $P1017
    $P1017($P102)
  loop1019_next:
    goto loop1019_test
  loop1019_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1019_next
    eq $P104, .CONTROL_LOOP_REDO, loop1019_redo
  loop1019_done:
    pop_eh 
  for_undef_67:
.annotate 'line', 11
    set $P101, $P1013
    unless_null $P101, vivify_72
    new $P101, "Undef"
  vivify_72:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "_block1016"  :anon :subid("49_1338064445.054") :outer("10_1338064445.054")
    .param pmc param_1018
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 15
    .lex "$_", param_1018
.annotate 'line', 16
    find_lex $P103, "$new"
    unless_null $P103, vivify_68
    new $P103, "Undef"
  vivify_68:
    find_lex $P104, "$_"
    unless_null $P104, vivify_69
    new $P104, "Undef"
  vivify_69:
    $S100 = $P104."key"()
    find_method $P105, $P103, $S100
    find_lex $P106, "$new"
    unless_null $P106, vivify_70
    new $P106, "Undef"
  vivify_70:
    find_lex $P107, "$_"
    unless_null $P107, vivify_71
    new $P107, "Undef"
  vivify_71:
    $P108 = $P107."value"()
    $P109 = $P105($P106, $P108)
.annotate 'line', 15
    .return ($P109)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "name" :anon :subid("11_1338064445.054") :outer("48_1338064445.054")
    .param pmc param_1021
    .param pmc param_1022 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 21
    .lex "self", param_1021
    .lex "@value", param_1022
    set $P1024, param_1022
    unless_null $P1024, vivify_73
    $P1024 = root_new ['parrot';'ResizablePMCArray']
  vivify_73:
    unless $P1024, if_1023_end
    set $P1025, param_1022
    unless_null $P1025, vivify_74
    $P1025 = root_new ['parrot';'ResizablePMCArray']
  vivify_74:
    set $P100, $P1025[0]
    unless_null $P100, vivify_75
    new $P100, "Undef"
  vivify_75:
    set $P101, param_1021
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 1
    repr_bind_attr_obj $P102, $P103, "$!name", 2, $P100
  if_1023_end:
    set $P100, param_1021
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!name", 2
    unless_null $P103, vivify_76
    new $P103, "Undef"
  vivify_76:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "node" :anon :subid("12_1338064445.054") :outer("48_1338064445.054")
    .param pmc param_1027
    .param pmc param_1028 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 22
    .lex "self", param_1027
    .lex "@value", param_1028
    set $P1030, param_1028
    unless_null $P1030, vivify_77
    $P1030 = root_new ['parrot';'ResizablePMCArray']
  vivify_77:
    unless $P1030, if_1029_end
    set $P1031, param_1028
    unless_null $P1031, vivify_78
    $P1031 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
    set $P100, $P1031[0]
    unless_null $P100, vivify_79
    new $P100, "Undef"
  vivify_79:
    set $P101, param_1027
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 1
    repr_bind_attr_obj $P102, $P103, "$!node", 3, $P100
  if_1029_end:
    set $P100, param_1027
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!node", 3
    unless_null $P103, vivify_80
    new $P103, "Undef"
  vivify_80:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "push" :anon :subid("13_1338064445.054") :outer("48_1338064445.054")
    .param pmc param_1033
    .param pmc param_1034
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 23
    .lex "self", param_1033
    .lex "$value", param_1034
    set $P100, param_1033
    nqp_decontainerize $P101, $P100
    $P102 = $P101."list"()
    set $P103, param_1034
    unless_null $P103, vivify_81
    new $P103, "Undef"
  vivify_81:
    push $P102, $P103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "unshift" :anon :subid("14_1338064445.054") :outer("48_1338064445.054")
    .param pmc param_1036
    .param pmc param_1037
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 24
    .lex "self", param_1036
    .lex "$value", param_1037
    set $P100, param_1036
    nqp_decontainerize $P101, $P100
    $P102 = $P101."list"()
    set $P103, param_1037
    unless_null $P103, vivify_82
    new $P103, "Undef"
  vivify_82:
    unshift $P102, $P103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "_block1039"  :subid("50_1338064445.054") :outer("47_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 29
    .const 'Sub' $P1073 = "20_1338064445.054" 
    capture_lex $P1073
    .const 'Sub' $P1067 = "19_1338064445.054" 
    capture_lex $P1067
    .const 'Sub' $P1061 = "18_1338064445.054" 
    capture_lex $P1061
    .const 'Sub' $P1055 = "17_1338064445.054" 
    capture_lex $P1055
    .const 'Sub' $P1049 = "16_1338064445.054" 
    capture_lex $P1049
    .const 'Sub' $P1043 = "15_1338064445.054" 
    capture_lex $P1043
    .lex "$?PACKAGE", $P1041
    .lex "$?CLASS", $P1042
.annotate 'line', 42
    .const 'Sub' $P1073 = "20_1338064445.054" 
    newclosure $P1079, $P1073
.annotate 'line', 29
    .return ($P1079)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "rxtype" :anon :subid("15_1338064445.054") :outer("50_1338064445.054")
    .param pmc param_1044
    .param pmc param_1045 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 37
    .lex "self", param_1044
    .lex "@value", param_1045
    set $P1047, param_1045
    unless_null $P1047, vivify_83
    $P1047 = root_new ['parrot';'ResizablePMCArray']
  vivify_83:
    unless $P1047, if_1046_end
    set $P1048, param_1045
    unless_null $P1048, vivify_84
    $P1048 = root_new ['parrot';'ResizablePMCArray']
  vivify_84:
    set $P100, $P1048[0]
    unless_null $P100, vivify_85
    new $P100, "Undef"
  vivify_85:
    set $P101, param_1044
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_bind_attr_obj $P102, $P103, "$!rxtype", 4, $P100
  if_1046_end:
    set $P100, param_1044
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!rxtype", 4
    unless_null $P103, vivify_86
    new $P103, "Undef"
  vivify_86:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "subtype" :anon :subid("16_1338064445.054") :outer("50_1338064445.054")
    .param pmc param_1050
    .param pmc param_1051 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 38
    .lex "self", param_1050
    .lex "@value", param_1051
    set $P1053, param_1051
    unless_null $P1053, vivify_87
    $P1053 = root_new ['parrot';'ResizablePMCArray']
  vivify_87:
    unless $P1053, if_1052_end
    set $P1054, param_1051
    unless_null $P1054, vivify_88
    $P1054 = root_new ['parrot';'ResizablePMCArray']
  vivify_88:
    set $P100, $P1054[0]
    unless_null $P100, vivify_89
    new $P100, "Undef"
  vivify_89:
    set $P101, param_1050
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_bind_attr_obj $P102, $P103, "$!subtype", 5, $P100
  if_1052_end:
    set $P100, param_1050
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!subtype", 5
    unless_null $P103, vivify_90
    new $P103, "Undef"
  vivify_90:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "backtrack" :anon :subid("17_1338064445.054") :outer("50_1338064445.054")
    .param pmc param_1056
    .param pmc param_1057 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 39
    .lex "self", param_1056
    .lex "@value", param_1057
    set $P1059, param_1057
    unless_null $P1059, vivify_91
    $P1059 = root_new ['parrot';'ResizablePMCArray']
  vivify_91:
    unless $P1059, if_1058_end
    set $P1060, param_1057
    unless_null $P1060, vivify_92
    $P1060 = root_new ['parrot';'ResizablePMCArray']
  vivify_92:
    set $P100, $P1060[0]
    unless_null $P100, vivify_93
    new $P100, "Undef"
  vivify_93:
    set $P101, param_1056
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_bind_attr_obj $P102, $P103, "$!backtrack", 6, $P100
  if_1058_end:
    set $P100, param_1056
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!backtrack", 6
    unless_null $P103, vivify_94
    new $P103, "Undef"
  vivify_94:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "negate" :anon :subid("18_1338064445.054") :outer("50_1338064445.054")
    .param pmc param_1062
    .param pmc param_1063 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 40
    .lex "self", param_1062
    .lex "@value", param_1063
    set $P1065, param_1063
    unless_null $P1065, vivify_95
    $P1065 = root_new ['parrot';'ResizablePMCArray']
  vivify_95:
    unless $P1065, if_1064_end
    set $P1066, param_1063
    unless_null $P1066, vivify_96
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_96:
    set $P100, $P1066[0]
    unless_null $P100, vivify_97
    new $P100, "Undef"
  vivify_97:
    set $P101, param_1062
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_bind_attr_obj $P102, $P103, "$!negate", 7, $P100
  if_1064_end:
    set $P100, param_1062
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!negate", 7
    unless_null $P103, vivify_98
    new $P103, "Undef"
  vivify_98:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "min" :anon :subid("19_1338064445.054") :outer("50_1338064445.054")
    .param pmc param_1068
    .param pmc param_1069 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 41
    .lex "self", param_1068
    .lex "@value", param_1069
    set $P1071, param_1069
    unless_null $P1071, vivify_99
    $P1071 = root_new ['parrot';'ResizablePMCArray']
  vivify_99:
    unless $P1071, if_1070_end
    set $P1072, param_1069
    unless_null $P1072, vivify_100
    $P1072 = root_new ['parrot';'ResizablePMCArray']
  vivify_100:
    set $P100, $P1072[0]
    unless_null $P100, vivify_101
    new $P100, "Undef"
  vivify_101:
    set $P101, param_1068
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_bind_attr_obj $P102, $P103, "$!min", 8, $P100
  if_1070_end:
    set $P100, param_1068
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!min", 8
    unless_null $P103, vivify_102
    new $P103, "Undef"
  vivify_102:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "max" :anon :subid("20_1338064445.054") :outer("50_1338064445.054")
    .param pmc param_1074
    .param pmc param_1075 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 42
    .lex "self", param_1074
    .lex "@value", param_1075
    set $P1077, param_1075
    unless_null $P1077, vivify_103
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_103:
    unless $P1077, if_1076_end
    set $P1078, param_1075
    unless_null $P1078, vivify_104
    $P1078 = root_new ['parrot';'ResizablePMCArray']
  vivify_104:
    set $P100, $P1078[0]
    unless_null $P100, vivify_105
    new $P100, "Undef"
  vivify_105:
    set $P101, param_1074
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_bind_attr_obj $P102, $P103, "$!max", 9, $P100
  if_1076_end:
    set $P100, param_1074
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "F5FDAA09D866B2026EBA9586B919320AC111E8C1-1338064444.992", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!max", 9
    unless_null $P103, vivify_106
    new $P103, "Undef"
  vivify_106:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1080"  :subid("51_1338064445.054") :outer("47_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 48
    .const 'Sub' $P1374 = "46_1338064445.054" 
    capture_lex $P1374
    .const 'Sub' $P1363 = "45_1338064445.054" 
    capture_lex $P1363
    .const 'Sub' $P1357 = "44_1338064445.054" 
    capture_lex $P1357
    .const 'Sub' $P1354 = "43_1338064445.054" 
    capture_lex $P1354
    .const 'Sub' $P1346 = "42_1338064445.054" 
    capture_lex $P1346
    .const 'Sub' $P1304 = "41_1338064445.054" 
    capture_lex $P1304
    .const 'Sub' $P1295 = "40_1338064445.054" 
    capture_lex $P1295
    .const 'Sub' $P1287 = "39_1338064445.054" 
    capture_lex $P1287
    .const 'Sub' $P1244 = "38_1338064445.054" 
    capture_lex $P1244
    .const 'Sub' $P1236 = "37_1338064445.054" 
    capture_lex $P1236
    .const 'Sub' $P1223 = "36_1338064445.054" 
    capture_lex $P1223
    .const 'Sub' $P1211 = "35_1338064445.054" 
    capture_lex $P1211
    .const 'Sub' $P1202 = "34_1338064445.054" 
    capture_lex $P1202
    .const 'Sub' $P1192 = "33_1338064445.054" 
    capture_lex $P1192
    .const 'Sub' $P1189 = "32_1338064445.054" 
    capture_lex $P1189
    .const 'Sub' $P1181 = "31_1338064445.054" 
    capture_lex $P1181
    .const 'Sub' $P1167 = "30_1338064445.054" 
    capture_lex $P1167
    .const 'Sub' $P1153 = "29_1338064445.054" 
    capture_lex $P1153
    .const 'Sub' $P1141 = "28_1338064445.054" 
    capture_lex $P1141
    .const 'Sub' $P1138 = "27_1338064445.054" 
    capture_lex $P1138
    .const 'Sub' $P1132 = "26_1338064445.054" 
    capture_lex $P1132
    .const 'Sub' $P1122 = "25_1338064445.054" 
    capture_lex $P1122
    .const 'Sub' $P1118 = "24_1338064445.054" 
    capture_lex $P1118
    .const 'Sub' $P1097 = "23_1338064445.054" 
    capture_lex $P1097
    .const 'Sub' $P1094 = "22_1338064445.054" 
    capture_lex $P1094
    .const 'Sub' $P1090 = "21_1338064445.054" 
    capture_lex $P1090
    .lex "$?PACKAGE", $P1082
    .lex "$?CLASS", $P1083
.annotate 'line', 51
    new $P100, "Float"
    assign $P100, 10
    set $P101, $P1082
    get_who $P102, $P101
    set $P102["$serno"], $P100
.annotate 'line', 52

            $P0 = find_lex '$?CLASS'
            set_root_global ['parrot';'QAST'], 'Compiler', $P0
        
.annotate 'line', 229
    new $P100, "String"
    assign $P100, ".CCLASS_ANY"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1084, $P102["%cclass_code"]
    unless_null $P1084, vivify_107
    $P1084 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1084
  vivify_107:
    set $P1084["."], $P100
.annotate 'line', 230
    new $P100, "String"
    assign $P100, ".CCLASS_NUMERIC"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1085, $P102["%cclass_code"]
    unless_null $P1085, vivify_108
    $P1085 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1085
  vivify_108:
    set $P1085["d"], $P100
.annotate 'line', 231
    new $P100, "String"
    assign $P100, ".CCLASS_WHITESPACE"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1086, $P102["%cclass_code"]
    unless_null $P1086, vivify_109
    $P1086 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1086
  vivify_109:
    set $P1086["s"], $P100
.annotate 'line', 232
    new $P100, "String"
    assign $P100, ".CCLASS_WORD"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1087, $P102["%cclass_code"]
    unless_null $P1087, vivify_110
    $P1087 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1087
  vivify_110:
    set $P1087["w"], $P100
.annotate 'line', 233
    new $P100, "String"
    assign $P100, ".CCLASS_NEWLINE"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1088, $P102["%cclass_code"]
    unless_null $P1088, vivify_111
    $P1088 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1088
  vivify_111:
    set $P1088["n"], $P100
.annotate 'line', 234
    new $P100, "String"
    assign $P100, ".CCLASS_NEWLINE"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1089, $P102["%cclass_code"]
    unless_null $P1089, vivify_112
    $P1089 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1089
  vivify_112:
    set $P1089["nl"], $P100
.annotate 'line', 48
    set $P100, $P1082
    get_who $P101, $P100
    set $P102, $P101["$serno"]
    unless_null $P102, vivify_113
    new $P102, "Undef"
  vivify_113:
    set $P100, $P1082
    get_who $P101, $P100
    set $P1166, $P101["%cclass_code"]
    unless_null $P1166, vivify_480
    $P1166 = root_new ['parrot';'Hash']
  vivify_480:
.annotate 'line', 532
    .const 'Sub' $P1374 = "46_1338064445.054" 
    newclosure $P1378, $P1374
.annotate 'line', 48
    .return ($P1378)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "unique" :anon :subid("21_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1091
    .param pmc param_1092 :optional
    .param int has_param_1092 :opt_flag
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 58
    .lex "self", param_1091
    if has_param_1092, optparam_114
    new $P100, "String"
    assign $P100, ""
    set param_1092, $P100
  optparam_114:
    .lex "$prefix", param_1092
    set $P101, param_1092
    unless_null $P101, vivify_115
    new $P101, "Undef"
  vivify_115:
    find_lex $P102, "$?PACKAGE"
    get_who $P103, $P102
    set $P104, $P103["$serno"]
    unless_null $P104, vivify_116
    new $P104, "Undef"
  vivify_116:
    clone $P1093, $P104
    inc $P104
    concat $P105, $P101, $P1093
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "escape" :anon :subid("22_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1095
    .param pmc param_1096
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 59
    .lex "self", param_1095
    .lex "$str", param_1096
    new $P100, "String"
    assign $P100, "ucs4:\""
    set $P101, param_1096
    unless_null $P101, vivify_117
    new $P101, "Undef"
  vivify_117:
    set $S100, $P101
    escape $S101, $S100
    concat $P102, $P100, $S101
    concat $P103, $P102, "\""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "as_post" :anon :subid("23_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1098
    .param pmc param_1099
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 63
    .const 'Sub' $P1114 = "52_1338064445.054" 
    capture_lex $P1114
    .lex "self", param_1098
    .lex "$node", param_1099
.annotate 'line', 64
    new $P100, "Undef"
    set $P1100, $P100
    .lex "$ops", $P1100
.annotate 'line', 65
    new $P101, "Undef"
    set $P1101, $P101
    .lex "$prefix", $P1101
.annotate 'line', 66
    $P1103 = root_new ['parrot';'Hash']
    set $P1102, $P1103
    .lex "%*REG", $P1102
.annotate 'line', 69
    new $P102, "Undef"
    set $P1104, $P102
    .lex "$reglist", $P1104
.annotate 'line', 77
    new $P103, "Undef"
    set $P1105, $P103
    .lex "$startlabel", $P1105
.annotate 'line', 78
    new $P104, "Undef"
    set $P1106, $P104
    .lex "$donelabel", $P1106
.annotate 'line', 79
    new $P105, "Undef"
    set $P1107, $P105
    .lex "$restartlabel", $P1107
.annotate 'line', 80
    new $P106, "Undef"
    set $P1108, $P106
    .lex "$faillabel", $P1108
.annotate 'line', 81
    new $P107, "Undef"
    set $P1109, $P107
    .lex "$jumplabel", $P1109
.annotate 'line', 82
    new $P108, "Undef"
    set $P1110, $P108
    .lex "$cutlabel", $P1110
.annotate 'line', 83
    new $P109, "Undef"
    set $P1111, $P109
    .lex "$cstacklabel", $P1111
.annotate 'line', 87
    new $P110, "Undef"
    set $P1112, $P110
    .lex "$startreg", $P1112
.annotate 'line', 64
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    $P113 = $P112."post_new"("Ops")
    set $P1100, $P113
.annotate 'line', 65
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    $P113 = $P112."unique"("rx")
    concat $P114, $P113, "_"
    set $P1101, $P114
.annotate 'line', 63
    set $P113, $P1102
    unless_null $P113, vivify_118
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_119
    die "Contextual %*REG not found"
  vivify_119:
  vivify_118:
.annotate 'line', 69
    split $P111, " ", "tgt string pos int off int eos int rep int cur pmc curclass pmc bstack pmc cstack pmc"
    set $P1104, $P111
.annotate 'line', 70
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1117_handler
    push_eh $P114
  loop1117_test:
    set $P111, $P1104
    unless_null $P111, vivify_120
    new $P111, "Undef"
  vivify_120:
    unless $P111, loop1117_done
  loop1117_redo:
    .const 'Sub' $P1114 = "52_1338064445.054" 
    capture_lex $P1114
    $P1114()
  loop1117_next:
    goto loop1117_test
  loop1117_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1117_next
    eq $P115, .CONTROL_LOOP_REDO, loop1117_redo
  loop1117_done:
    pop_eh 
.annotate 'line', 77
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_130
    new $P113, "Undef"
  vivify_130:
    concat $P114, $P113, "start"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1105, $P115
.annotate 'line', 78
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_131
    new $P113, "Undef"
  vivify_131:
    concat $P114, $P113, "done"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1106, $P115
.annotate 'line', 79
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_132
    new $P113, "Undef"
  vivify_132:
    concat $P114, $P113, "restart"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1107, $P115
.annotate 'line', 80
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_133
    new $P113, "Undef"
  vivify_133:
    concat $P114, $P113, "fail"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1108, $P115
.annotate 'line', 81
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_134
    new $P113, "Undef"
  vivify_134:
    concat $P114, $P113, "jump"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1109, $P115
.annotate 'line', 82
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_135
    new $P113, "Undef"
  vivify_135:
    concat $P114, $P113, "cut"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1110, $P115
.annotate 'line', 83
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_136
    new $P113, "Undef"
  vivify_136:
    concat $P114, $P113, "cstack_done"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1111, $P115
.annotate 'line', 84
    set $P111, $P1108
    unless_null $P111, vivify_137
    new $P111, "Undef"
  vivify_137:
    set $P114, $P1102
    unless_null $P114, vivify_138
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_139
    die "Contextual %*REG not found"
  vivify_139:
    set $P1102, $P114
  vivify_138:
    set $P114["fail"], $P111
.annotate 'line', 87
    new $P111, "String"
    assign $P111, "("
    set $P114, $P1102
    unless_null $P114, vivify_140
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_141
    die "Contextual %*REG not found"
  vivify_141:
  vivify_140:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_142
    new $P115, "Undef"
  vivify_142:
    set $P118, $P1102
    unless_null $P118, vivify_143
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_144
    die "Contextual %*REG not found"
  vivify_144:
  vivify_143:
    set $P119, $P118["tgt"]
    unless_null $P119, vivify_145
    new $P119, "Undef"
  vivify_145:
    set $P122, $P1102
    unless_null $P122, vivify_146
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%REG"]
    unless_null $P122, vivify_147
    die "Contextual %*REG not found"
  vivify_147:
  vivify_146:
    set $P123, $P122["pos"]
    unless_null $P123, vivify_148
    new $P123, "Undef"
  vivify_148:
    set $P126, $P1102
    unless_null $P126, vivify_149
    get_hll_global $P124, "GLOBAL"
    get_who $P125, $P124
    set $P126, $P125["%REG"]
    unless_null $P126, vivify_150
    die "Contextual %*REG not found"
  vivify_150:
  vivify_149:
    set $P127, $P126["curclass"]
    unless_null $P127, vivify_151
    new $P127, "Undef"
  vivify_151:
    set $P130, $P1102
    unless_null $P130, vivify_152
    get_hll_global $P128, "GLOBAL"
    get_who $P129, $P128
    set $P130, $P129["%REG"]
    unless_null $P130, vivify_153
    die "Contextual %*REG not found"
  vivify_153:
  vivify_152:
    set $P131, $P130["bstack"]
    unless_null $P131, vivify_154
    new $P131, "Undef"
  vivify_154:
    new $P132, "ResizablePMCArray"
    push $P132, $P115
    push $P132, $P119
    push $P132, $P123
    push $P132, $P127
    push $P132, $P131
    push $P132, "$I19"
    join $S100, ", ", $P132
    concat $P133, $P111, $S100
    concat $P134, $P133, ")"
    set $P1112, $P134
.annotate 'line', 88
    set $P111, $P1100
    unless_null $P111, vivify_155
    new $P111, "Undef"
  vivify_155:
    set $P112, $P1112
    unless_null $P112, vivify_156
    new $P112, "Undef"
  vivify_156:
    $P111."push_pirop"("callmethod", "\"!cursor_start\"", "self", $P112 :named("result"))
.annotate 'line', 89
    set $P111, $P1100
    unless_null $P111, vivify_157
    new $P111, "Undef"
  vivify_157:
    set $P114, $P1102
    unless_null $P114, vivify_158
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_159
    die "Contextual %*REG not found"
  vivify_159:
  vivify_158:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_160
    new $P115, "Undef"
  vivify_160:
    $P111."push_pirop"("store_lex", unicode:"unicode:\"$\\x{a2}\"", $P115)
.annotate 'line', 90
    set $P111, $P1100
    unless_null $P111, vivify_161
    new $P111, "Undef"
  vivify_161:
    set $P114, $P1102
    unless_null $P114, vivify_162
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_163
    die "Contextual %*REG not found"
  vivify_163:
  vivify_162:
    set $P115, $P114["eos"]
    unless_null $P115, vivify_164
    new $P115, "Undef"
  vivify_164:
    set $P118, $P1102
    unless_null $P118, vivify_165
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_166
    die "Contextual %*REG not found"
  vivify_166:
  vivify_165:
    set $P119, $P118["tgt"]
    unless_null $P119, vivify_167
    new $P119, "Undef"
  vivify_167:
    $P111."push_pirop"("length", $P115, $P119)
.annotate 'line', 91
    set $P111, $P1100
    unless_null $P111, vivify_168
    new $P111, "Undef"
  vivify_168:
    set $P112, $P1107
    unless_null $P112, vivify_169
    new $P112, "Undef"
  vivify_169:
    $P111."push_pirop"("eq", "$I19", 1, $P112)
.annotate 'line', 92
    set $P111, $P1100
    unless_null $P111, vivify_170
    new $P111, "Undef"
  vivify_170:
    set $P112, param_1098
    nqp_decontainerize $P113, $P112
    set $P114, param_1099
    unless_null $P114, vivify_171
    new $P114, "Undef"
  vivify_171:
    $P115 = $P113."regex_post"($P114)
    $P111."push"($P115)
.annotate 'line', 93
    set $P111, $P1100
    unless_null $P111, vivify_172
    new $P111, "Undef"
  vivify_172:
    set $P112, $P1107
    unless_null $P112, vivify_173
    new $P112, "Undef"
  vivify_173:
    $P111."push"($P112)
.annotate 'line', 94
    set $P111, $P1100
    unless_null $P111, vivify_174
    new $P111, "Undef"
  vivify_174:
    set $P114, $P1102
    unless_null $P114, vivify_175
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_176
    die "Contextual %*REG not found"
  vivify_176:
  vivify_175:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_177
    new $P115, "Undef"
  vivify_177:
    set $P118, $P1102
    unless_null $P118, vivify_178
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_179
    die "Contextual %*REG not found"
  vivify_179:
  vivify_178:
    set $P119, $P118["cur"]
    unless_null $P119, vivify_180
    new $P119, "Undef"
  vivify_180:
    set $P122, $P1102
    unless_null $P122, vivify_181
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%REG"]
    unless_null $P122, vivify_182
    die "Contextual %*REG not found"
  vivify_182:
  vivify_181:
    set $P123, $P122["curclass"]
    unless_null $P123, vivify_183
    new $P123, "Undef"
  vivify_183:
    $P111."push_pirop"("repr_get_attr_obj", $P115, $P119, $P123, "\"$!cstack\"")
.annotate 'line', 95
    set $P111, $P1100
    unless_null $P111, vivify_184
    new $P111, "Undef"
  vivify_184:
    set $P112, $P1108
    unless_null $P112, vivify_185
    new $P112, "Undef"
  vivify_185:
    $P111."push"($P112)
.annotate 'line', 96
    set $P111, $P1100
    unless_null $P111, vivify_186
    new $P111, "Undef"
  vivify_186:
    set $P114, $P1102
    unless_null $P114, vivify_187
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_188
    die "Contextual %*REG not found"
  vivify_188:
  vivify_187:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_189
    new $P115, "Undef"
  vivify_189:
    set $P116, $P1106
    unless_null $P116, vivify_190
    new $P116, "Undef"
  vivify_190:
    $P111."push_pirop"("unless", $P115, $P116)
.annotate 'line', 97
    set $P111, $P1100
    unless_null $P111, vivify_191
    new $P111, "Undef"
  vivify_191:
    set $P114, $P1102
    unless_null $P114, vivify_192
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_193
    die "Contextual %*REG not found"
  vivify_193:
  vivify_192:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_194
    new $P115, "Undef"
  vivify_194:
    $P111."push_pirop"("pop", "$I19", $P115)
.annotate 'line', 98
    set $P111, $P1100
    unless_null $P111, vivify_195
    new $P111, "Undef"
  vivify_195:
    set $P114, $P1102
    unless_null $P114, vivify_196
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_197
    die "Contextual %*REG not found"
  vivify_197:
  vivify_196:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_198
    new $P115, "Undef"
  vivify_198:
    set $P116, $P1111
    unless_null $P116, vivify_199
    new $P116, "Undef"
  vivify_199:
    $P111."push_pirop"("if_null", $P115, $P116)
.annotate 'line', 99
    set $P111, $P1100
    unless_null $P111, vivify_200
    new $P111, "Undef"
  vivify_200:
    set $P114, $P1102
    unless_null $P114, vivify_201
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_202
    die "Contextual %*REG not found"
  vivify_202:
  vivify_201:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_203
    new $P115, "Undef"
  vivify_203:
    set $P116, $P1111
    unless_null $P116, vivify_204
    new $P116, "Undef"
  vivify_204:
    $P111."push_pirop"("unless", $P115, $P116)
.annotate 'line', 100
    set $P111, $P1100
    unless_null $P111, vivify_205
    new $P111, "Undef"
  vivify_205:
    $P111."push_pirop"("dec", "$I19")
.annotate 'line', 101
    set $P111, $P1100
    unless_null $P111, vivify_206
    new $P111, "Undef"
  vivify_206:
    set $P114, $P1102
    unless_null $P114, vivify_207
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_208
    die "Contextual %*REG not found"
  vivify_208:
  vivify_207:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_209
    new $P115, "Undef"
  vivify_209:
    concat $P116, $P115, "[$I19]"
    $P111."push_pirop"("set", "$P11", $P116)
.annotate 'line', 102
    set $P111, $P1100
    unless_null $P111, vivify_210
    new $P111, "Undef"
  vivify_210:
    set $P112, $P1111
    unless_null $P112, vivify_211
    new $P112, "Undef"
  vivify_211:
    $P111."push"($P112)
.annotate 'line', 103
    set $P111, $P1100
    unless_null $P111, vivify_212
    new $P111, "Undef"
  vivify_212:
    set $P114, $P1102
    unless_null $P114, vivify_213
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_214
    die "Contextual %*REG not found"
  vivify_214:
  vivify_213:
    set $P115, $P114["rep"]
    unless_null $P115, vivify_215
    new $P115, "Undef"
  vivify_215:
    set $P118, $P1102
    unless_null $P118, vivify_216
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_217
    die "Contextual %*REG not found"
  vivify_217:
  vivify_216:
    set $P119, $P118["bstack"]
    unless_null $P119, vivify_218
    new $P119, "Undef"
  vivify_218:
    $P111."push_pirop"("pop", $P115, $P119)
.annotate 'line', 104
    set $P111, $P1100
    unless_null $P111, vivify_219
    new $P111, "Undef"
  vivify_219:
    set $P114, $P1102
    unless_null $P114, vivify_220
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_221
    die "Contextual %*REG not found"
  vivify_221:
  vivify_220:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_222
    new $P115, "Undef"
  vivify_222:
    set $P118, $P1102
    unless_null $P118, vivify_223
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_224
    die "Contextual %*REG not found"
  vivify_224:
  vivify_223:
    set $P119, $P118["bstack"]
    unless_null $P119, vivify_225
    new $P119, "Undef"
  vivify_225:
    $P111."push_pirop"("pop", $P115, $P119)
.annotate 'line', 105
    set $P111, $P1100
    unless_null $P111, vivify_226
    new $P111, "Undef"
  vivify_226:
    set $P114, $P1102
    unless_null $P114, vivify_227
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_228
    die "Contextual %*REG not found"
  vivify_228:
  vivify_227:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_229
    new $P115, "Undef"
  vivify_229:
    $P111."push_pirop"("pop", "$I19", $P115)
.annotate 'line', 106
    set $P111, $P1100
    unless_null $P111, vivify_230
    new $P111, "Undef"
  vivify_230:
    set $P114, $P1102
    unless_null $P114, vivify_231
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_232
    die "Contextual %*REG not found"
  vivify_232:
  vivify_231:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_233
    new $P115, "Undef"
  vivify_233:
    set $P116, $P1106
    unless_null $P116, vivify_234
    new $P116, "Undef"
  vivify_234:
    $P111."push_pirop"("lt", $P115, -1, $P116)
.annotate 'line', 107
    set $P111, $P1100
    unless_null $P111, vivify_235
    new $P111, "Undef"
  vivify_235:
    set $P114, $P1102
    unless_null $P114, vivify_236
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_237
    die "Contextual %*REG not found"
  vivify_237:
  vivify_236:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_238
    new $P115, "Undef"
  vivify_238:
    set $P116, $P1108
    unless_null $P116, vivify_239
    new $P116, "Undef"
  vivify_239:
    $P111."push_pirop"("lt", $P115, 0, $P116)
.annotate 'line', 108
    set $P111, $P1100
    unless_null $P111, vivify_240
    new $P111, "Undef"
  vivify_240:
    set $P112, $P1108
    unless_null $P112, vivify_241
    new $P112, "Undef"
  vivify_241:
    $P111."push_pirop"("eq", "$I19", 0, $P112)
.annotate 'line', 110
    set $P111, $P1100
    unless_null $P111, vivify_242
    new $P111, "Undef"
  vivify_242:
    set $P114, $P1102
    unless_null $P114, vivify_243
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_244
    die "Contextual %*REG not found"
  vivify_244:
  vivify_243:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_245
    new $P115, "Undef"
  vivify_245:
    set $P116, $P1109
    unless_null $P116, vivify_246
    new $P116, "Undef"
  vivify_246:
    $P111."push_pirop"("if_null", $P115, $P116)
.annotate 'line', 111
    set $P111, $P1100
    unless_null $P111, vivify_247
    new $P111, "Undef"
  vivify_247:
    set $P114, $P1102
    unless_null $P114, vivify_248
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_249
    die "Contextual %*REG not found"
  vivify_249:
  vivify_248:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_250
    new $P115, "Undef"
  vivify_250:
    $P111."push_pirop"("elements", "$I18", $P115)
.annotate 'line', 112
    set $P111, $P1100
    unless_null $P111, vivify_251
    new $P111, "Undef"
  vivify_251:
    set $P112, $P1110
    unless_null $P112, vivify_252
    new $P112, "Undef"
  vivify_252:
    $P111."push_pirop"("le", "$I18", 0, $P112)
.annotate 'line', 113
    set $P111, $P1100
    unless_null $P111, vivify_253
    new $P111, "Undef"
  vivify_253:
    $P111."push_pirop"("dec", "$I18")
.annotate 'line', 114
    set $P111, $P1100
    unless_null $P111, vivify_254
    new $P111, "Undef"
  vivify_254:
    set $P114, $P1102
    unless_null $P114, vivify_255
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_256
    die "Contextual %*REG not found"
  vivify_256:
  vivify_255:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_257
    new $P115, "Undef"
  vivify_257:
    concat $P116, $P115, "[$I18]"
    $P111."push_pirop"("set", "$I18", $P116)
.annotate 'line', 115
    set $P111, $P1100
    unless_null $P111, vivify_258
    new $P111, "Undef"
  vivify_258:
    set $P112, $P1110
    unless_null $P112, vivify_259
    new $P112, "Undef"
  vivify_259:
    $P111."push"($P112)
.annotate 'line', 116
    set $P111, $P1100
    unless_null $P111, vivify_260
    new $P111, "Undef"
  vivify_260:
    set $P114, $P1102
    unless_null $P114, vivify_261
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_262
    die "Contextual %*REG not found"
  vivify_262:
  vivify_261:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_263
    new $P115, "Undef"
  vivify_263:
    $P111."push_pirop"("assign", $P115, "$I18")
.annotate 'line', 117
    set $P111, $P1100
    unless_null $P111, vivify_264
    new $P111, "Undef"
  vivify_264:
    set $P112, $P1109
    unless_null $P112, vivify_265
    new $P112, "Undef"
  vivify_265:
    $P111."push"($P112)
.annotate 'line', 118
    set $P111, $P1100
    unless_null $P111, vivify_266
    new $P111, "Undef"
  vivify_266:
    $P111."push_pirop"("jump", "$I19")
.annotate 'line', 119
    set $P111, $P1100
    unless_null $P111, vivify_267
    new $P111, "Undef"
  vivify_267:
    set $P112, $P1106
    unless_null $P112, vivify_268
    new $P112, "Undef"
  vivify_268:
    $P111."push"($P112)
.annotate 'line', 120
    set $P111, $P1100
    unless_null $P111, vivify_269
    new $P111, "Undef"
  vivify_269:
    set $P114, $P1102
    unless_null $P114, vivify_270
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_271
    die "Contextual %*REG not found"
  vivify_271:
  vivify_270:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_272
    new $P115, "Undef"
  vivify_272:
    $P111."push_pirop"("callmethod", "\"!cursor_fail\"", $P115)
.annotate 'line', 122
    set $P111, $P1100
    unless_null $P111, vivify_273
    new $P111, "Undef"
  vivify_273:
    set $P114, $P1102
    unless_null $P114, vivify_274
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_275
    die "Contextual %*REG not found"
  vivify_275:
  vivify_274:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_276
    new $P115, "Undef"
  vivify_276:
    $P111."result"($P115)
.annotate 'line', 63
    set $P111, $P1100
    unless_null $P111, vivify_277
    new $P111, "Undef"
  vivify_277:
    .return ($P111)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1113"  :anon :subid("52_1338064445.054") :outer("23_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 71
    new $P112, "Undef"
    set $P1115, $P112
    .lex "$reg", $P1115
.annotate 'line', 72
    new $P113, "Undef"
    set $P1116, $P113
    .lex "$name", $P1116
.annotate 'line', 71
    find_lex $P114, "$reglist"
    unless_null $P114, vivify_121
    new $P114, "Undef"
  vivify_121:
    shift $P115, $P114
    set $P1115, $P115
.annotate 'line', 72
    find_lex $P114, "$prefix"
    unless_null $P114, vivify_122
    new $P114, "Undef"
  vivify_122:
    set $P115, $P1115
    unless_null $P115, vivify_123
    new $P115, "Undef"
  vivify_123:
    concat $P116, $P114, $P115
    set $P117, $P1115
    unless_null $P117, vivify_124
    new $P117, "Undef"
  vivify_124:
    find_dynamic_lex $P120, "%*REG"
    unless_null $P120, vivify_125
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["%REG"]
    unless_null $P120, vivify_126
    die "Contextual %*REG not found"
  vivify_126:
    store_dynamic_lex "%*REG", $P120
  vivify_125:
    set $P120[$P117], $P116
    set $P1116, $P116
.annotate 'line', 73
    find_lex $P114, "$ops"
    unless_null $P114, vivify_127
    new $P114, "Undef"
  vivify_127:
    new $P115, "String"
    assign $P115, ".local "
    find_lex $P116, "$reglist"
    unless_null $P116, vivify_128
    new $P116, "Undef"
  vivify_128:
    shift $P117, $P116
    concat $P118, $P115, $P117
    set $P119, $P1116
    unless_null $P119, vivify_129
    new $P119, "Undef"
  vivify_129:
    $P120 = $P114."push_pirop"($P118, $P119)
.annotate 'line', 70
    .return ($P120)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "post_children" :anon :subid("24_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1119
    .param pmc param_1120
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 126
    .lex "self", param_1119
    .lex "$node", param_1120
.annotate 'line', 127

            $P0 = find_dynamic_lex '$*PASTCOMPILER'
            $P1 = find_lex '$node'
            ($P1121 :slurpy) = $P0.'post_children'($P1)
        
.annotate 'line', 126
    .return ($P1121)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "regex_post" :anon :subid("25_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1125
    .param pmc param_1126
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 134
    new $P1124, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1124, control_1123
    push_eh $P1124
    .lex "self", param_1125
    .lex "$node", param_1126
.annotate 'line', 136
    new $P100, "Undef"
    set $P1127, $P100
    .lex "$rxtype", $P1127
.annotate 'line', 135
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Node"]
    set $P105, param_1126
    unless_null $P105, vivify_278
    new $P105, "Undef"
  vivify_278:
    $P106 = $P104."ACCEPTS"($P105)
    unless $P106, if_1128_end
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    find_dynamic_lex $P110, "$*PASTCOMPILER"
    unless_null $P110, vivify_279
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["$PASTCOMPILER"]
    unless_null $P110, vivify_280
    die "Contextual $*PASTCOMPILER not found"
  vivify_280:
  vivify_279:
    set $P111, param_1126
    unless_null $P111, vivify_281
    new $P111, "Undef"
  vivify_281:
    $P112 = $P110."as_post"($P111)
    setattribute $P107, 'payload', $P112
    throw $P107
  if_1128_end:
.annotate 'line', 136
    set $P101, param_1126
    unless_null $P101, vivify_282
    new $P101, "Undef"
  vivify_282:
    $P102 = $P101."rxtype"()
    set $P1129, $P102
    defined $I1131, $P1129
    if $I1131, default_1130
    new $P103, "String"
    assign $P103, "concat"
    set $P1129, $P103
  default_1130:
    set $P1127, $P1129
.annotate 'line', 137
    set $P101, param_1125
    nqp_decontainerize $P102, $P101
    set $P103, param_1126
    unless_null $P103, vivify_283
    new $P103, "Undef"
  vivify_283:
    set $P104, $P1127
    unless_null $P104, vivify_284
    new $P104, "Undef"
  vivify_284:
    set $S100, $P104
    $P105 = $P102.$S100($P103)
.annotate 'line', 134
    .return ($P105)
  control_1123:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "post_new" :anon :subid("26_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1133
    .param pmc param_1134
    .param pmc param_1135 :slurpy
    .param pmc param_1136 :slurpy :named
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 140
    .lex "self", param_1133
    .lex "$type", param_1134
    .lex "@args", param_1135
    .lex "%options", param_1136
.annotate 'line', 141

            $P0 = find_lex '$type'
            $S0 = $P0
            $P0 = get_root_global ['parrot';'POST'], $S0
            $P1 = find_lex '@args'
            $P2 = find_lex '%options'
            $P1137 = $P0.'new'($P1 :flat, $P2 :flat :named)
        
.annotate 'line', 140
    .return ($P1137)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "alt" :anon :subid("27_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1139
    .param pmc param_1140
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 151
    .lex "self", param_1139
    .lex "$node", param_1140
    set $P100, param_1139
    nqp_decontainerize $P101, $P100
    set $P102, param_1140
    unless_null $P102, vivify_285
    new $P102, "Undef"
  vivify_285:
    $P103 = $P101."altseq"($P102)
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "altseq" :anon :subid("28_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1142
    .param pmc param_1143
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 153
    .lex "self", param_1142
    .lex "$node", param_1143
.annotate 'line', 154
    new $P100, "Undef"
    set $P1144, $P100
    .lex "$ops", $P1144
.annotate 'line', 155
    new $P101, "Undef"
    set $P1145, $P101
    .lex "$prefix", $P1145
.annotate 'line', 156
    new $P102, "Undef"
    set $P1146, $P102
    .lex "$altcount", $P1146
.annotate 'line', 157
    new $P103, "Undef"
    set $P1147, $P103
    .lex "$iter", $P1147
.annotate 'line', 158
    new $P104, "Undef"
    set $P1148, $P104
    .lex "$endlabel", $P1148
.annotate 'line', 159
    new $P105, "Undef"
    set $P1149, $P105
    .lex "$altlabel", $P1149
.annotate 'line', 160
    new $P106, "Undef"
    set $P1150, $P106
    .lex "$apost", $P1150
.annotate 'line', 154
    set $P107, param_1142
    nqp_decontainerize $P108, $P107
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_286
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_287
    die "Contextual %*REG not found"
  vivify_287:
  vivify_286:
    set $P112, $P111["cur"]
    unless_null $P112, vivify_288
    new $P112, "Undef"
  vivify_288:
    $P113 = $P108."post_new"("Ops", $P112 :named("result"))
    set $P1144, $P113
.annotate 'line', 155
    set $P107, param_1142
    nqp_decontainerize $P108, $P107
    $P109 = $P108."unique"("alt")
    concat $P110, $P109, "_"
    set $P1145, $P110
.annotate 'line', 156
    new $P107, "Float"
    assign $P107, 0
    set $P1146, $P107
.annotate 'line', 157
    set $P107, param_1143
    unless_null $P107, vivify_289
    new $P107, "Undef"
  vivify_289:
    $P108 = $P107."list"()
    iter $P109, $P108
    set $P1147, $P109
.annotate 'line', 158
    set $P107, param_1142
    nqp_decontainerize $P108, $P107
    set $P109, $P1145
    unless_null $P109, vivify_290
    new $P109, "Undef"
  vivify_290:
    concat $P110, $P109, "end"
    $P111 = $P108."post_new"("Label", $P110 :named("result"))
    set $P1148, $P111
.annotate 'line', 159
    set $P107, param_1142
    nqp_decontainerize $P108, $P107
    set $P109, $P1145
    unless_null $P109, vivify_291
    new $P109, "Undef"
  vivify_291:
    set $P110, $P1146
    unless_null $P110, vivify_292
    new $P110, "Undef"
  vivify_292:
    concat $P111, $P109, $P110
    $P112 = $P108."post_new"("Label", $P111 :named("result"))
    set $P1149, $P112
.annotate 'line', 160
    set $P107, param_1142
    nqp_decontainerize $P108, $P107
    set $P109, $P1147
    unless_null $P109, vivify_293
    new $P109, "Undef"
  vivify_293:
    shift $P110, $P109
    $P111 = $P108."regex_post"($P110)
    set $P1150, $P111
.annotate 'line', 161
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1152_handler
    push_eh $P108
  loop1152_test:
    set $P107, $P1147
    unless_null $P107, vivify_294
    new $P107, "Undef"
  vivify_294:
    unless $P107, loop1152_done
  loop1152_redo:
.annotate 'line', 162
    set $P108, $P1144
    unless_null $P108, vivify_295
    new $P108, "Undef"
  vivify_295:
    set $P109, $P1149
    unless_null $P109, vivify_296
    new $P109, "Undef"
  vivify_296:
    $P108."push"($P109)
.annotate 'line', 161
    set $P108, $P1146
    unless_null $P108, vivify_297
    new $P108, "Undef"
  vivify_297:
    clone $P1151, $P108
    inc $P108
.annotate 'line', 164
    set $P108, param_1142
    nqp_decontainerize $P109, $P108
    set $P110, $P1145
    unless_null $P110, vivify_298
    new $P110, "Undef"
  vivify_298:
    set $P111, $P1146
    unless_null $P111, vivify_299
    new $P111, "Undef"
  vivify_299:
    concat $P112, $P110, $P111
    $P113 = $P109."post_new"("Label", $P112 :named("result"))
    set $P1149, $P113
.annotate 'line', 165
    set $P108, param_1142
    nqp_decontainerize $P109, $P108
    set $P110, $P1144
    unless_null $P110, vivify_300
    new $P110, "Undef"
  vivify_300:
    set $P111, $P1149
    unless_null $P111, vivify_301
    new $P111, "Undef"
  vivify_301:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_302
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_303
    die "Contextual %*REG not found"
  vivify_303:
  vivify_302:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_304
    new $P115, "Undef"
  vivify_304:
    $P109."regex_mark"($P110, $P111, $P115, 0)
.annotate 'line', 166
    set $P108, $P1144
    unless_null $P108, vivify_305
    new $P108, "Undef"
  vivify_305:
    set $P109, $P1150
    unless_null $P109, vivify_306
    new $P109, "Undef"
  vivify_306:
    $P108."push"($P109)
.annotate 'line', 167
    set $P108, $P1144
    unless_null $P108, vivify_307
    new $P108, "Undef"
  vivify_307:
    set $P109, $P1148
    unless_null $P109, vivify_308
    new $P109, "Undef"
  vivify_308:
    $P108."push_pirop"("goto", $P109)
.annotate 'line', 168
    set $P108, param_1142
    nqp_decontainerize $P109, $P108
    set $P110, $P1147
    unless_null $P110, vivify_309
    new $P110, "Undef"
  vivify_309:
    shift $P111, $P110
    $P112 = $P109."regex_post"($P111)
    set $P1150, $P112
  loop1152_next:
.annotate 'line', 161
    goto loop1152_test
  loop1152_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1152_next
    eq $P109, .CONTROL_LOOP_REDO, loop1152_redo
  loop1152_done:
    pop_eh 
.annotate 'line', 170
    set $P107, $P1144
    unless_null $P107, vivify_310
    new $P107, "Undef"
  vivify_310:
    set $P108, $P1149
    unless_null $P108, vivify_311
    new $P108, "Undef"
  vivify_311:
    $P107."push"($P108)
.annotate 'line', 171
    set $P107, $P1144
    unless_null $P107, vivify_312
    new $P107, "Undef"
  vivify_312:
    set $P108, $P1150
    unless_null $P108, vivify_313
    new $P108, "Undef"
  vivify_313:
    $P107."push"($P108)
.annotate 'line', 172
    set $P107, $P1144
    unless_null $P107, vivify_314
    new $P107, "Undef"
  vivify_314:
    set $P108, $P1148
    unless_null $P108, vivify_315
    new $P108, "Undef"
  vivify_315:
    $P107."push"($P108)
.annotate 'line', 153
    set $P107, $P1144
    unless_null $P107, vivify_316
    new $P107, "Undef"
  vivify_316:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "anchor" :anon :subid("29_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1154
    .param pmc param_1155
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 176
    .lex "self", param_1154
    .lex "$node", param_1155
.annotate 'line', 177
    new $P100, "Undef"
    set $P1156, $P100
    .lex "$ops", $P1156
.annotate 'line', 178
    new $P101, "Undef"
    set $P1157, $P101
    .lex "$subtype", $P1157
.annotate 'line', 179
    new $P102, "Undef"
    set $P1158, $P102
    .lex "$donelabel", $P1158
.annotate 'line', 177
    set $P103, param_1154
    nqp_decontainerize $P104, $P103
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_317
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_318
    die "Contextual %*REG not found"
  vivify_318:
  vivify_317:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_319
    new $P108, "Undef"
  vivify_319:
    $P109 = $P104."post_new"("Ops", $P108 :named("result"))
    set $P1156, $P109
.annotate 'line', 178
    set $P103, param_1155
    unless_null $P103, vivify_320
    new $P103, "Undef"
  vivify_320:
    $P104 = $P103."subtype"()
    set $P1157, $P104
.annotate 'line', 179
    set $P103, param_1154
    nqp_decontainerize $P104, $P103
    set $P105, param_1154
    nqp_decontainerize $P106, $P105
    $P107 = $P106."unique"("rxanchor")
    concat $P108, $P107, "_done"
    $P109 = $P104."post_new"("Label", $P108 :named("result"))
    set $P1158, $P109
.annotate 'line', 180
    set $P103, $P1157
    unless_null $P103, vivify_321
    new $P103, "Undef"
  vivify_321:
    set $S100, $P103
    iseq $I100, $S100, "bos"
    if $I100, if_1159
.annotate 'line', 183
    set $P104, $P1157
    unless_null $P104, vivify_322
    new $P104, "Undef"
  vivify_322:
    set $S101, $P104
    iseq $I101, $S101, "eos"
    if $I101, if_1160
.annotate 'line', 186
    set $P105, $P1157
    unless_null $P105, vivify_323
    new $P105, "Undef"
  vivify_323:
    set $S102, $P105
    iseq $I102, $S102, "lwb"
    if $I102, if_1161
.annotate 'line', 194
    set $P106, $P1157
    unless_null $P106, vivify_324
    new $P106, "Undef"
  vivify_324:
    set $S103, $P106
    iseq $I103, $S103, "rwb"
    if $I103, if_1162
.annotate 'line', 202
    set $P107, $P1157
    unless_null $P107, vivify_325
    new $P107, "Undef"
  vivify_325:
    set $S104, $P107
    iseq $I104, $S104, "bol"
    if $I104, if_1163
.annotate 'line', 210
    set $P108, $P1157
    unless_null $P108, vivify_326
    new $P108, "Undef"
  vivify_326:
    set $S105, $P108
    iseq $I105, $S105, "eol"
    if $I105, if_1164
.annotate 'line', 220
    set $P109, $P1157
    unless_null $P109, vivify_327
    new $P109, "Undef"
  vivify_327:
    set $S106, $P109
    iseq $I106, $S106, "fail"
    unless $I106, if_1165_end
.annotate 'line', 221
    set $P110, $P1156
    unless_null $P110, vivify_328
    new $P110, "Undef"
  vivify_328:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_329
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_330
    die "Contextual %*REG not found"
  vivify_330:
  vivify_329:
    set $P114, $P113["fail"]
    unless_null $P114, vivify_331
    new $P114, "Undef"
  vivify_331:
    $P110."push_pirop"("goto", $P114)
  if_1165_end:
.annotate 'line', 220
    goto if_1164_end
  if_1164:
.annotate 'line', 211
    set $P109, $P1156
    unless_null $P109, vivify_332
    new $P109, "Undef"
  vivify_332:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_333
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_334
    die "Contextual %*REG not found"
  vivify_334:
  vivify_333:
    set $P113, $P112["tgt"]
    unless_null $P113, vivify_335
    new $P113, "Undef"
  vivify_335:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_336
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_337
    die "Contextual %*REG not found"
  vivify_337:
  vivify_336:
    set $P117, $P116["pos"]
    unless_null $P117, vivify_338
    new $P117, "Undef"
  vivify_338:
    $P109."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P113, $P117)
.annotate 'line', 212
    set $P109, $P1156
    unless_null $P109, vivify_339
    new $P109, "Undef"
  vivify_339:
    set $P110, $P1158
    unless_null $P110, vivify_340
    new $P110, "Undef"
  vivify_340:
    $P109."push_pirop"("if", "$I11", $P110)
.annotate 'line', 213
    set $P109, $P1156
    unless_null $P109, vivify_341
    new $P109, "Undef"
  vivify_341:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_342
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_343
    die "Contextual %*REG not found"
  vivify_343:
  vivify_342:
    set $P113, $P112["pos"]
    unless_null $P113, vivify_344
    new $P113, "Undef"
  vivify_344:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_345
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_346
    die "Contextual %*REG not found"
  vivify_346:
  vivify_345:
    set $P117, $P116["eos"]
    unless_null $P117, vivify_347
    new $P117, "Undef"
  vivify_347:
    find_dynamic_lex $P120, "%*REG"
    unless_null $P120, vivify_348
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["%REG"]
    unless_null $P120, vivify_349
    die "Contextual %*REG not found"
  vivify_349:
  vivify_348:
    set $P121, $P120["fail"]
    unless_null $P121, vivify_350
    new $P121, "Undef"
  vivify_350:
    $P109."push_pirop"("ne", $P113, $P117, $P121)
.annotate 'line', 214
    set $P109, $P1156
    unless_null $P109, vivify_351
    new $P109, "Undef"
  vivify_351:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_352
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_353
    die "Contextual %*REG not found"
  vivify_353:
  vivify_352:
    set $P113, $P112["pos"]
    unless_null $P113, vivify_354
    new $P113, "Undef"
  vivify_354:
    set $P114, $P1158
    unless_null $P114, vivify_355
    new $P114, "Undef"
  vivify_355:
    $P109."push_pirop"("eq", $P113, 0, $P114)
.annotate 'line', 215
    set $P109, $P1156
    unless_null $P109, vivify_356
    new $P109, "Undef"
  vivify_356:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_357
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_358
    die "Contextual %*REG not found"
  vivify_358:
  vivify_357:
    set $P113, $P112["pos"]
    unless_null $P113, vivify_359
    new $P113, "Undef"
  vivify_359:
    $P109."push_pirop"("sub", "$I11", $P113, 1)
.annotate 'line', 216
    set $P109, $P1156
    unless_null $P109, vivify_360
    new $P109, "Undef"
  vivify_360:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_361
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_362
    die "Contextual %*REG not found"
  vivify_362:
  vivify_361:
    set $P113, $P112["tgt"]
    unless_null $P113, vivify_363
    new $P113, "Undef"
  vivify_363:
    $P109."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P113, "$I11")
.annotate 'line', 217
    set $P109, $P1156
    unless_null $P109, vivify_364
    new $P109, "Undef"
  vivify_364:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_365
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_366
    die "Contextual %*REG not found"
  vivify_366:
  vivify_365:
    set $P113, $P112["fail"]
    unless_null $P113, vivify_367
    new $P113, "Undef"
  vivify_367:
    $P109."push_pirop"("if", "$I11", $P113)
.annotate 'line', 218
    set $P109, $P1156
    unless_null $P109, vivify_368
    new $P109, "Undef"
  vivify_368:
    set $P110, $P1158
    unless_null $P110, vivify_369
    new $P110, "Undef"
  vivify_369:
    $P109."push"($P110)
  if_1164_end:
.annotate 'line', 210
    goto if_1163_end
  if_1163:
.annotate 'line', 203
    set $P108, $P1156
    unless_null $P108, vivify_370
    new $P108, "Undef"
  vivify_370:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_371
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_372
    die "Contextual %*REG not found"
  vivify_372:
  vivify_371:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_373
    new $P112, "Undef"
  vivify_373:
    set $P113, $P1158
    unless_null $P113, vivify_374
    new $P113, "Undef"
  vivify_374:
    $P108."push_pirop"("eq", $P112, 0, $P113)
.annotate 'line', 204
    set $P108, $P1156
    unless_null $P108, vivify_375
    new $P108, "Undef"
  vivify_375:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_376
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_377
    die "Contextual %*REG not found"
  vivify_377:
  vivify_376:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_378
    new $P112, "Undef"
  vivify_378:
    find_dynamic_lex $P115, "%*REG"
    unless_null $P115, vivify_379
    get_hll_global $P113, "GLOBAL"
    get_who $P114, $P113
    set $P115, $P114["%REG"]
    unless_null $P115, vivify_380
    die "Contextual %*REG not found"
  vivify_380:
  vivify_379:
    set $P116, $P115["eos"]
    unless_null $P116, vivify_381
    new $P116, "Undef"
  vivify_381:
    find_dynamic_lex $P119, "%*REG"
    unless_null $P119, vivify_382
    get_hll_global $P117, "GLOBAL"
    get_who $P118, $P117
    set $P119, $P118["%REG"]
    unless_null $P119, vivify_383
    die "Contextual %*REG not found"
  vivify_383:
  vivify_382:
    set $P120, $P119["fail"]
    unless_null $P120, vivify_384
    new $P120, "Undef"
  vivify_384:
    $P108."push_pirop"("ge", $P112, $P116, $P120)
.annotate 'line', 205
    set $P108, $P1156
    unless_null $P108, vivify_385
    new $P108, "Undef"
  vivify_385:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_386
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_387
    die "Contextual %*REG not found"
  vivify_387:
  vivify_386:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_388
    new $P112, "Undef"
  vivify_388:
    $P108."push_pirop"("sub", "$I11", $P112, 1)
.annotate 'line', 206
    set $P108, $P1156
    unless_null $P108, vivify_389
    new $P108, "Undef"
  vivify_389:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_390
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_391
    die "Contextual %*REG not found"
  vivify_391:
  vivify_390:
    set $P112, $P111["tgt"]
    unless_null $P112, vivify_392
    new $P112, "Undef"
  vivify_392:
    $P108."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P112, "$I11")
.annotate 'line', 207
    set $P108, $P1156
    unless_null $P108, vivify_393
    new $P108, "Undef"
  vivify_393:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_394
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_395
    die "Contextual %*REG not found"
  vivify_395:
  vivify_394:
    set $P112, $P111["fail"]
    unless_null $P112, vivify_396
    new $P112, "Undef"
  vivify_396:
    $P108."push_pirop"("unless", "$I11", $P112)
.annotate 'line', 208
    set $P108, $P1156
    unless_null $P108, vivify_397
    new $P108, "Undef"
  vivify_397:
    set $P109, $P1158
    unless_null $P109, vivify_398
    new $P109, "Undef"
  vivify_398:
    $P108."push"($P109)
  if_1163_end:
.annotate 'line', 202
    goto if_1162_end
  if_1162:
.annotate 'line', 195
    set $P107, $P1156
    unless_null $P107, vivify_399
    new $P107, "Undef"
  vivify_399:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_400
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_401
    die "Contextual %*REG not found"
  vivify_401:
  vivify_400:
    set $P111, $P110["pos"]
    unless_null $P111, vivify_402
    new $P111, "Undef"
  vivify_402:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_403
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_404
    die "Contextual %*REG not found"
  vivify_404:
  vivify_403:
    set $P115, $P114["fail"]
    unless_null $P115, vivify_405
    new $P115, "Undef"
  vivify_405:
    $P107."push_pirop"("le", $P111, 0, $P115)
.annotate 'line', 196
    set $P107, $P1156
    unless_null $P107, vivify_406
    new $P107, "Undef"
  vivify_406:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_407
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_408
    die "Contextual %*REG not found"
  vivify_408:
  vivify_407:
    set $P111, $P110["tgt"]
    unless_null $P111, vivify_409
    new $P111, "Undef"
  vivify_409:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_410
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_411
    die "Contextual %*REG not found"
  vivify_411:
  vivify_410:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_412
    new $P115, "Undef"
  vivify_412:
    $P107."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P111, $P115)
.annotate 'line', 197
    set $P107, $P1156
    unless_null $P107, vivify_413
    new $P107, "Undef"
  vivify_413:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_414
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_415
    die "Contextual %*REG not found"
  vivify_415:
  vivify_414:
    set $P111, $P110["fail"]
    unless_null $P111, vivify_416
    new $P111, "Undef"
  vivify_416:
    $P107."push_pirop"("if", "$I11", $P111)
.annotate 'line', 198
    set $P107, $P1156
    unless_null $P107, vivify_417
    new $P107, "Undef"
  vivify_417:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_418
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_419
    die "Contextual %*REG not found"
  vivify_419:
  vivify_418:
    set $P111, $P110["pos"]
    unless_null $P111, vivify_420
    new $P111, "Undef"
  vivify_420:
    $P107."push_pirop"("sub", "$I11", $P111, 1)
.annotate 'line', 199
    set $P107, $P1156
    unless_null $P107, vivify_421
    new $P107, "Undef"
  vivify_421:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_422
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_423
    die "Contextual %*REG not found"
  vivify_423:
  vivify_422:
    set $P111, $P110["tgt"]
    unless_null $P111, vivify_424
    new $P111, "Undef"
  vivify_424:
    $P107."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P111, "$I11")
.annotate 'line', 200
    set $P107, $P1156
    unless_null $P107, vivify_425
    new $P107, "Undef"
  vivify_425:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_426
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_427
    die "Contextual %*REG not found"
  vivify_427:
  vivify_426:
    set $P111, $P110["fail"]
    unless_null $P111, vivify_428
    new $P111, "Undef"
  vivify_428:
    $P107."push_pirop"("unless", "$I11", $P111)
  if_1162_end:
.annotate 'line', 194
    goto if_1161_end
  if_1161:
.annotate 'line', 187
    set $P106, $P1156
    unless_null $P106, vivify_429
    new $P106, "Undef"
  vivify_429:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_430
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_431
    die "Contextual %*REG not found"
  vivify_431:
  vivify_430:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_432
    new $P110, "Undef"
  vivify_432:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_433
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_434
    die "Contextual %*REG not found"
  vivify_434:
  vivify_433:
    set $P114, $P113["eos"]
    unless_null $P114, vivify_435
    new $P114, "Undef"
  vivify_435:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_436
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_437
    die "Contextual %*REG not found"
  vivify_437:
  vivify_436:
    set $P118, $P117["fail"]
    unless_null $P118, vivify_438
    new $P118, "Undef"
  vivify_438:
    $P106."push_pirop"("ge", $P110, $P114, $P118)
.annotate 'line', 188
    set $P106, $P1156
    unless_null $P106, vivify_439
    new $P106, "Undef"
  vivify_439:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_440
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_441
    die "Contextual %*REG not found"
  vivify_441:
  vivify_440:
    set $P110, $P109["tgt"]
    unless_null $P110, vivify_442
    new $P110, "Undef"
  vivify_442:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_443
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_444
    die "Contextual %*REG not found"
  vivify_444:
  vivify_443:
    set $P114, $P113["pos"]
    unless_null $P114, vivify_445
    new $P114, "Undef"
  vivify_445:
    $P106."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P110, $P114)
.annotate 'line', 189
    set $P106, $P1156
    unless_null $P106, vivify_446
    new $P106, "Undef"
  vivify_446:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_447
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_448
    die "Contextual %*REG not found"
  vivify_448:
  vivify_447:
    set $P110, $P109["fail"]
    unless_null $P110, vivify_449
    new $P110, "Undef"
  vivify_449:
    $P106."push_pirop"("unless", "$I11", $P110)
.annotate 'line', 190
    set $P106, $P1156
    unless_null $P106, vivify_450
    new $P106, "Undef"
  vivify_450:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_451
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_452
    die "Contextual %*REG not found"
  vivify_452:
  vivify_451:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_453
    new $P110, "Undef"
  vivify_453:
    $P106."push_pirop"("sub", "$I11", $P110, 1)
.annotate 'line', 191
    set $P106, $P1156
    unless_null $P106, vivify_454
    new $P106, "Undef"
  vivify_454:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_455
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_456
    die "Contextual %*REG not found"
  vivify_456:
  vivify_455:
    set $P110, $P109["tgt"]
    unless_null $P110, vivify_457
    new $P110, "Undef"
  vivify_457:
    $P106."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P110, "$I11")
.annotate 'line', 192
    set $P106, $P1156
    unless_null $P106, vivify_458
    new $P106, "Undef"
  vivify_458:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_459
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_460
    die "Contextual %*REG not found"
  vivify_460:
  vivify_459:
    set $P110, $P109["fail"]
    unless_null $P110, vivify_461
    new $P110, "Undef"
  vivify_461:
    $P106."push_pirop"("if", "$I11", $P110)
  if_1161_end:
.annotate 'line', 186
    goto if_1160_end
  if_1160:
.annotate 'line', 184
    set $P105, $P1156
    unless_null $P105, vivify_462
    new $P105, "Undef"
  vivify_462:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_463
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_464
    die "Contextual %*REG not found"
  vivify_464:
  vivify_463:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_465
    new $P109, "Undef"
  vivify_465:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_466
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_467
    die "Contextual %*REG not found"
  vivify_467:
  vivify_466:
    set $P113, $P112["eos"]
    unless_null $P113, vivify_468
    new $P113, "Undef"
  vivify_468:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_469
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_470
    die "Contextual %*REG not found"
  vivify_470:
  vivify_469:
    set $P117, $P116["fail"]
    unless_null $P117, vivify_471
    new $P117, "Undef"
  vivify_471:
    $P105."push_pirop"("lt", $P109, $P113, $P117)
  if_1160_end:
.annotate 'line', 183
    goto if_1159_end
  if_1159:
.annotate 'line', 181
    set $P104, $P1156
    unless_null $P104, vivify_472
    new $P104, "Undef"
  vivify_472:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_473
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_474
    die "Contextual %*REG not found"
  vivify_474:
  vivify_473:
    set $P108, $P107["pos"]
    unless_null $P108, vivify_475
    new $P108, "Undef"
  vivify_475:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_476
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_477
    die "Contextual %*REG not found"
  vivify_477:
  vivify_476:
    set $P112, $P111["fail"]
    unless_null $P112, vivify_478
    new $P112, "Undef"
  vivify_478:
    $P104."push_pirop"("ne", $P108, 0, $P112)
  if_1159_end:
.annotate 'line', 176
    set $P103, $P1156
    unless_null $P103, vivify_479
    new $P103, "Undef"
  vivify_479:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "cclass" :anon :subid("30_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1168
    .param pmc param_1169
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 237
    .const 'Sub' $P1177 = "53_1338064445.054" 
    capture_lex $P1177
    .lex "self", param_1168
    .lex "$node", param_1169
.annotate 'line', 238
    new $P100, "Undef"
    set $P1170, $P100
    .lex "$ops", $P1170
.annotate 'line', 239
    new $P101, "Undef"
    set $P1171, $P101
    .lex "$subtype", $P1171
.annotate 'line', 241
    new $P102, "Undef"
    set $P1172, $P102
    .lex "$cclass", $P1172
.annotate 'line', 238
    set $P103, param_1168
    nqp_decontainerize $P104, $P103
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_481
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_482
    die "Contextual %*REG not found"
  vivify_482:
  vivify_481:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_483
    new $P108, "Undef"
  vivify_483:
    $P109 = $P104."post_new"("Ops", $P108 :named("result"))
    set $P1170, $P109
.annotate 'line', 239
    set $P103, param_1169
    unless_null $P103, vivify_484
    new $P103, "Undef"
  vivify_484:
    $P104 = $P103."subtype"()
    set $P1171, $P104
.annotate 'line', 240
    set $P103, $P1170
    unless_null $P103, vivify_485
    new $P103, "Undef"
  vivify_485:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_486
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_487
    die "Contextual %*REG not found"
  vivify_487:
  vivify_486:
    set $P107, $P106["pos"]
    unless_null $P107, vivify_488
    new $P107, "Undef"
  vivify_488:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_489
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_490
    die "Contextual %*REG not found"
  vivify_490:
  vivify_489:
    set $P111, $P110["eos"]
    unless_null $P111, vivify_491
    new $P111, "Undef"
  vivify_491:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_492
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_493
    die "Contextual %*REG not found"
  vivify_493:
  vivify_492:
    set $P115, $P114["fail"]
    unless_null $P115, vivify_494
    new $P115, "Undef"
  vivify_494:
    $P103."push_pirop"("ge", $P107, $P111, $P115)
.annotate 'line', 241
    set $P103, $P1171
    unless_null $P103, vivify_495
    new $P103, "Undef"
  vivify_495:
    set $S100, $P103
    downcase $S101, $S100
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P1173, $P105["%cclass_code"]
    unless_null $P1173, vivify_496
    $P1173 = root_new ['parrot';'Hash']
  vivify_496:
    set $P106, $P1173[$S101]
    unless_null $P106, vivify_497
    new $P106, "Undef"
  vivify_497:
    set $P1172, $P106
.annotate 'line', 242
    set $P103, $P1172
    unless_null $P103, vivify_498
    new $P103, "Undef"
  vivify_498:
    if $P103, unless_1174_end
    set $P104, param_1168
    nqp_decontainerize $P105, $P104
    new $P106, 'String'
    set $P106, "Unrecognized subtype '"
    set $P107, $P1171
    unless_null $P107, vivify_499
    new $P107, "Undef"
  vivify_499:
    concat $P108, $P106, $P107
    concat $P109, $P108, "' in QAST::Regex cclass"
    $P105."panic"($P109)
  unless_1174_end:
.annotate 'line', 244
    set $P103, $P1172
    unless_null $P103, vivify_500
    new $P103, "Undef"
  vivify_500:
    set $S100, $P103
    isne $I100, $S100, ".CCLASS_ANY"
    unless $I100, if_1175_end
    .const 'Sub' $P1177 = "53_1338064445.054" 
    capture_lex $P1177
    $P1177()
  if_1175_end:
.annotate 'line', 254
    set $P103, $P1170
    unless_null $P103, vivify_528
    new $P103, "Undef"
  vivify_528:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_529
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_530
    die "Contextual %*REG not found"
  vivify_530:
  vivify_529:
    set $P107, $P106["pos"]
    unless_null $P107, vivify_531
    new $P107, "Undef"
  vivify_531:
    $P103."push_pirop"("add", $P107, 1)
.annotate 'line', 237
    set $P103, $P1170
    unless_null $P103, vivify_532
    new $P103, "Undef"
  vivify_532:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1176"  :anon :subid("53_1338064445.054") :outer("30_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 245
    new $P104, "Undef"
    set $P1178, $P104
    .lex "$testop", $P1178
    find_lex $P106, "$node"
    unless_null $P106, vivify_501
    new $P106, "Undef"
  vivify_501:
    $P107 = $P106."negate"()
    if $P107, if_1179
    new $P109, "String"
    assign $P109, "unless"
    set $P105, $P109
    goto if_1179_end
  if_1179:
    new $P108, "String"
    assign $P108, "if"
    set $P105, $P108
  if_1179_end:
    set $P1178, $P105
.annotate 'line', 246
    find_lex $P105, "$ops"
    unless_null $P105, vivify_502
    new $P105, "Undef"
  vivify_502:
    find_lex $P106, "$cclass"
    unless_null $P106, vivify_503
    new $P106, "Undef"
  vivify_503:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_504
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_505
    die "Contextual %*REG not found"
  vivify_505:
  vivify_504:
    set $P110, $P109["tgt"]
    unless_null $P110, vivify_506
    new $P110, "Undef"
  vivify_506:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_507
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_508
    die "Contextual %*REG not found"
  vivify_508:
  vivify_507:
    set $P114, $P113["pos"]
    unless_null $P114, vivify_509
    new $P114, "Undef"
  vivify_509:
    $P105."push_pirop"("is_cclass", "$I11", $P106, $P110, $P114)
.annotate 'line', 247
    find_lex $P105, "$ops"
    unless_null $P105, vivify_510
    new $P105, "Undef"
  vivify_510:
    set $P106, $P1178
    unless_null $P106, vivify_511
    new $P106, "Undef"
  vivify_511:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_512
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_513
    die "Contextual %*REG not found"
  vivify_513:
  vivify_512:
    set $P110, $P109["fail"]
    unless_null $P110, vivify_514
    new $P110, "Undef"
  vivify_514:
    $P105."push_pirop"($P106, "$I11", $P110)
.annotate 'line', 248
    find_lex $P106, "$subtype"
    unless_null $P106, vivify_515
    new $P106, "Undef"
  vivify_515:
    set $S101, $P106
    iseq $I101, $S101, "nl"
    if $I101, if_1180
    new $P105, 'Integer'
    set $P105, $I101
    goto if_1180_end
  if_1180:
.annotate 'line', 249
    find_lex $P107, "$ops"
    unless_null $P107, vivify_516
    new $P107, "Undef"
  vivify_516:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_517
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_518
    die "Contextual %*REG not found"
  vivify_518:
  vivify_517:
    set $P111, $P110["tgt"]
    unless_null $P111, vivify_519
    new $P111, "Undef"
  vivify_519:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_520
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_521
    die "Contextual %*REG not found"
  vivify_521:
  vivify_520:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_522
    new $P115, "Undef"
  vivify_522:
    $P107."push_pirop"("substr", "$S10", $P111, $P115, 2)
.annotate 'line', 250
    find_lex $P107, "$ops"
    unless_null $P107, vivify_523
    new $P107, "Undef"
  vivify_523:
    $P107."push_pirop"("iseq", "$I11", "$S10", "\"\\r\\n\"")
.annotate 'line', 251
    find_lex $P107, "$ops"
    unless_null $P107, vivify_524
    new $P107, "Undef"
  vivify_524:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_525
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_526
    die "Contextual %*REG not found"
  vivify_526:
  vivify_525:
    set $P111, $P110["pos"]
    unless_null $P111, vivify_527
    new $P111, "Undef"
  vivify_527:
    $P112 = $P107."push_pirop"("add", $P111, "$I11")
.annotate 'line', 248
    set $P105, $P112
  if_1180_end:
.annotate 'line', 244
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "concat" :anon :subid("31_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1182
    .param pmc param_1183
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 258
    .const 'Sub' $P1186 = "54_1338064445.054" 
    capture_lex $P1186
    .lex "self", param_1182
    .lex "$node", param_1183
.annotate 'line', 259
    new $P100, "Undef"
    set $P1184, $P100
    .lex "$ops", $P1184
    set $P101, param_1182
    nqp_decontainerize $P102, $P101
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_533
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_534
    die "Contextual %*REG not found"
  vivify_534:
  vivify_533:
    set $P106, $P105["cur"]
    unless_null $P106, vivify_535
    new $P106, "Undef"
  vivify_535:
    $P107 = $P102."post_new"("Ops", $P106 :named("result"))
    set $P1184, $P107
.annotate 'line', 260
    set $P102, param_1183
    unless_null $P102, vivify_536
    new $P102, "Undef"
  vivify_536:
    $P103 = $P102."list"()
    defined $I100, $P103
    unless $I100, for_undef_537
    iter $P101, $P103
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1188_handler
    push_eh $P105
  loop1188_test:
    unless $P101, loop1188_done
    shift $P104, $P101
  loop1188_redo:
    .const 'Sub' $P1186 = "54_1338064445.054" 
    capture_lex $P1186
    $P1186($P104)
  loop1188_next:
    goto loop1188_test
  loop1188_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1188_next
    eq $P106, .CONTROL_LOOP_REDO, loop1188_redo
  loop1188_done:
    pop_eh 
  for_undef_537:
.annotate 'line', 258
    set $P101, $P1184
    unless_null $P101, vivify_540
    new $P101, "Undef"
  vivify_540:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1185"  :anon :subid("54_1338064445.054") :outer("31_1338064445.054")
    .param pmc param_1187
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 260
    .lex "$_", param_1187
    find_lex $P105, "$ops"
    unless_null $P105, vivify_538
    new $P105, "Undef"
  vivify_538:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$_"
    unless_null $P108, vivify_539
    new $P108, "Undef"
  vivify_539:
    $P109 = $P107."regex_post"($P108)
    $P110 = $P105."push"($P109)
    .return ($P110)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "conj" :anon :subid("32_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1190
    .param pmc param_1191
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 264
    .lex "self", param_1190
    .lex "$node", param_1191
    set $P100, param_1190
    nqp_decontainerize $P101, $P100
    set $P102, param_1191
    unless_null $P102, vivify_541
    new $P102, "Undef"
  vivify_541:
    $P103 = $P101."conjseq"($P102)
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "conjseq" :anon :subid("33_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1193
    .param pmc param_1194
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 266
    .lex "self", param_1193
    .lex "$node", param_1194
.annotate 'line', 267
    new $P100, "Undef"
    set $P1195, $P100
    .lex "$ops", $P1195
.annotate 'line', 268
    new $P101, "Undef"
    set $P1196, $P101
    .lex "$prefix", $P1196
.annotate 'line', 269
    new $P102, "Undef"
    set $P1197, $P102
    .lex "$conjlabel", $P1197
.annotate 'line', 270
    new $P103, "Undef"
    set $P1198, $P103
    .lex "$firstlabel", $P1198
.annotate 'line', 271
    new $P104, "Undef"
    set $P1199, $P104
    .lex "$iter", $P1199
.annotate 'line', 267
    set $P105, param_1193
    nqp_decontainerize $P106, $P105
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_542
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_543
    die "Contextual %*REG not found"
  vivify_543:
  vivify_542:
    set $P110, $P109["cur"]
    unless_null $P110, vivify_544
    new $P110, "Undef"
  vivify_544:
    $P111 = $P106."post_new"("Ops", $P110 :named("result"))
    set $P1195, $P111
.annotate 'line', 268
    set $P105, param_1193
    nqp_decontainerize $P106, $P105
    $P107 = $P106."unique"("rxconj")
    concat $P108, $P107, "_"
    set $P1196, $P108
.annotate 'line', 269
    set $P105, param_1193
    nqp_decontainerize $P106, $P105
    set $P107, $P1196
    unless_null $P107, vivify_545
    new $P107, "Undef"
  vivify_545:
    concat $P108, $P107, "fail"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1197, $P109
.annotate 'line', 270
    set $P105, param_1193
    nqp_decontainerize $P106, $P105
    set $P107, $P1196
    unless_null $P107, vivify_546
    new $P107, "Undef"
  vivify_546:
    concat $P108, $P107, "first"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1198, $P109
.annotate 'line', 271
    set $P105, param_1194
    unless_null $P105, vivify_547
    new $P105, "Undef"
  vivify_547:
    $P106 = $P105."list"()
    iter $P107, $P106
    set $P1199, $P107
.annotate 'line', 273
    set $P105, param_1193
    nqp_decontainerize $P106, $P105
    set $P107, $P1195
    unless_null $P107, vivify_548
    new $P107, "Undef"
  vivify_548:
    set $P108, $P1197
    unless_null $P108, vivify_549
    new $P108, "Undef"
  vivify_549:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_550
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_551
    die "Contextual %*REG not found"
  vivify_551:
  vivify_550:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_552
    new $P112, "Undef"
  vivify_552:
    $P106."regex_mark"($P107, $P108, $P112, 0)
.annotate 'line', 274
    set $P105, $P1195
    unless_null $P105, vivify_553
    new $P105, "Undef"
  vivify_553:
    set $P106, $P1198
    unless_null $P106, vivify_554
    new $P106, "Undef"
  vivify_554:
    $P105."push_pirop"("goto", $P106)
.annotate 'line', 275
    set $P105, $P1195
    unless_null $P105, vivify_555
    new $P105, "Undef"
  vivify_555:
    set $P106, $P1197
    unless_null $P106, vivify_556
    new $P106, "Undef"
  vivify_556:
    $P105."push"($P106)
.annotate 'line', 276
    set $P105, $P1195
    unless_null $P105, vivify_557
    new $P105, "Undef"
  vivify_557:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_558
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_559
    die "Contextual %*REG not found"
  vivify_559:
  vivify_558:
    set $P109, $P108["fail"]
    unless_null $P109, vivify_560
    new $P109, "Undef"
  vivify_560:
    $P105."push_pirop"("goto", $P109)
.annotate 'line', 278
    set $P105, $P1195
    unless_null $P105, vivify_561
    new $P105, "Undef"
  vivify_561:
    set $P106, $P1198
    unless_null $P106, vivify_562
    new $P106, "Undef"
  vivify_562:
    $P105."push"($P106)
.annotate 'line', 279
    set $P105, $P1195
    unless_null $P105, vivify_563
    new $P105, "Undef"
  vivify_563:
    set $P106, param_1193
    nqp_decontainerize $P107, $P106
    set $P108, $P1199
    unless_null $P108, vivify_564
    new $P108, "Undef"
  vivify_564:
    shift $P109, $P108
    $P110 = $P107."regex_post"($P109)
    $P105."push"($P110)
.annotate 'line', 281
    set $P105, param_1193
    nqp_decontainerize $P106, $P105
    set $P107, $P1195
    unless_null $P107, vivify_565
    new $P107, "Undef"
  vivify_565:
    set $P108, $P1197
    unless_null $P108, vivify_566
    new $P108, "Undef"
  vivify_566:
    $P106."regex_peek"($P107, $P108, "$I11")
.annotate 'line', 282
    set $P105, param_1193
    nqp_decontainerize $P106, $P105
    set $P107, $P1195
    unless_null $P107, vivify_567
    new $P107, "Undef"
  vivify_567:
    set $P108, $P1197
    unless_null $P108, vivify_568
    new $P108, "Undef"
  vivify_568:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_569
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_570
    die "Contextual %*REG not found"
  vivify_570:
  vivify_569:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_571
    new $P112, "Undef"
  vivify_571:
    $P106."regex_mark"($P107, $P108, "$I11", $P112)
.annotate 'line', 284
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1200_handler
    push_eh $P106
  loop1200_test:
    set $P105, $P1199
    unless_null $P105, vivify_572
    new $P105, "Undef"
  vivify_572:
    unless $P105, loop1200_done
  loop1200_redo:
.annotate 'line', 285
    set $P106, $P1195
    unless_null $P106, vivify_573
    new $P106, "Undef"
  vivify_573:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_574
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_575
    die "Contextual %*REG not found"
  vivify_575:
  vivify_574:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_576
    new $P110, "Undef"
  vivify_576:
    $P106."push_pirop"("set", $P110, "$I11")
.annotate 'line', 286
    set $P106, $P1195
    unless_null $P106, vivify_577
    new $P106, "Undef"
  vivify_577:
    set $P107, param_1193
    nqp_decontainerize $P108, $P107
    set $P109, $P1199
    unless_null $P109, vivify_578
    new $P109, "Undef"
  vivify_578:
    shift $P110, $P109
    $P111 = $P108."regex_post"($P110)
    $P106."push"($P111)
.annotate 'line', 287
    set $P106, param_1193
    nqp_decontainerize $P107, $P106
    set $P108, $P1195
    unless_null $P108, vivify_579
    new $P108, "Undef"
  vivify_579:
    set $P109, $P1197
    unless_null $P109, vivify_580
    new $P109, "Undef"
  vivify_580:
    $P107."regex_peek"($P108, $P109, "$I11", "$I12")
.annotate 'line', 288
    set $P106, $P1195
    unless_null $P106, vivify_581
    new $P106, "Undef"
  vivify_581:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_582
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_583
    die "Contextual %*REG not found"
  vivify_583:
  vivify_582:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_584
    new $P110, "Undef"
  vivify_584:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_585
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_586
    die "Contextual %*REG not found"
  vivify_586:
  vivify_585:
    set $P114, $P113["fail"]
    unless_null $P114, vivify_587
    new $P114, "Undef"
  vivify_587:
    $P106."push_pirop"("ne", $P110, "$I12", $P114)
  loop1200_next:
.annotate 'line', 284
    goto loop1200_test
  loop1200_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1200_next
    eq $P107, .CONTROL_LOOP_REDO, loop1200_redo
  loop1200_done:
    pop_eh 
.annotate 'line', 290
    set $P105, param_1194
    unless_null $P105, vivify_588
    new $P105, "Undef"
  vivify_588:
    $S100 = $P105."subtype"()
    iseq $I100, $S100, "zerowidth"
    unless $I100, if_1201_end
    set $P106, $P1195
    unless_null $P106, vivify_589
    new $P106, "Undef"
  vivify_589:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_590
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_591
    die "Contextual %*REG not found"
  vivify_591:
  vivify_590:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_592
    new $P110, "Undef"
  vivify_592:
    $P106."push_pirop"("set", $P110, "$I11")
  if_1201_end:
.annotate 'line', 266
    set $P105, $P1195
    unless_null $P105, vivify_593
    new $P105, "Undef"
  vivify_593:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "enumcharlist" :anon :subid("34_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1203
    .param pmc param_1204
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 294
    .lex "self", param_1203
    .lex "$node", param_1204
.annotate 'line', 295
    new $P100, "Undef"
    set $P1205, $P100
    .lex "$ops", $P1205
.annotate 'line', 296
    new $P101, "Undef"
    set $P1206, $P101
    .lex "$charlist", $P1206
.annotate 'line', 297
    new $P102, "Undef"
    set $P1207, $P102
    .lex "$testop", $P1207
.annotate 'line', 295
    set $P103, param_1203
    nqp_decontainerize $P104, $P103
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_594
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_595
    die "Contextual %*REG not found"
  vivify_595:
  vivify_594:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_596
    new $P108, "Undef"
  vivify_596:
    $P109 = $P104."post_new"("Ops", $P108 :named("result"))
    set $P1205, $P109
.annotate 'line', 296
    set $P103, param_1203
    nqp_decontainerize $P104, $P103
    set $P1208, param_1204
    unless_null $P1208, vivify_597
    $P1208 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $P105, $P1208[0]
    unless_null $P105, vivify_598
    new $P105, "Undef"
  vivify_598:
    $P106 = $P104."escape"($P105)
    set $P1206, $P106
.annotate 'line', 297
    set $P104, param_1204
    unless_null $P104, vivify_599
    new $P104, "Undef"
  vivify_599:
    $P105 = $P104."negate"()
    if $P105, if_1209
    new $P107, "String"
    assign $P107, "lt"
    set $P103, $P107
    goto if_1209_end
  if_1209:
    new $P106, "String"
    assign $P106, "ge"
    set $P103, $P106
  if_1209_end:
    set $P1207, $P103
.annotate 'line', 298
    set $P103, $P1205
    unless_null $P103, vivify_600
    new $P103, "Undef"
  vivify_600:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_601
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_602
    die "Contextual %*REG not found"
  vivify_602:
  vivify_601:
    set $P107, $P106["pos"]
    unless_null $P107, vivify_603
    new $P107, "Undef"
  vivify_603:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_604
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_605
    die "Contextual %*REG not found"
  vivify_605:
  vivify_604:
    set $P111, $P110["eos"]
    unless_null $P111, vivify_606
    new $P111, "Undef"
  vivify_606:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_607
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_608
    die "Contextual %*REG not found"
  vivify_608:
  vivify_607:
    set $P115, $P114["fail"]
    unless_null $P115, vivify_609
    new $P115, "Undef"
  vivify_609:
    $P103."push_pirop"("ge", $P107, $P111, $P115)
.annotate 'line', 299
    set $P103, $P1205
    unless_null $P103, vivify_610
    new $P103, "Undef"
  vivify_610:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_611
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_612
    die "Contextual %*REG not found"
  vivify_612:
  vivify_611:
    set $P107, $P106["tgt"]
    unless_null $P107, vivify_613
    new $P107, "Undef"
  vivify_613:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_614
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_615
    die "Contextual %*REG not found"
  vivify_615:
  vivify_614:
    set $P111, $P110["pos"]
    unless_null $P111, vivify_616
    new $P111, "Undef"
  vivify_616:
    $P103."push_pirop"("substr", "$S11", $P107, $P111, 1)
.annotate 'line', 300
    set $P103, $P1205
    unless_null $P103, vivify_617
    new $P103, "Undef"
  vivify_617:
    set $P104, $P1206
    unless_null $P104, vivify_618
    new $P104, "Undef"
  vivify_618:
    $P103."push_pirop"("index", "$I11", $P104, "$S11")
.annotate 'line', 301
    set $P103, $P1205
    unless_null $P103, vivify_619
    new $P103, "Undef"
  vivify_619:
    set $P104, $P1207
    unless_null $P104, vivify_620
    new $P104, "Undef"
  vivify_620:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_621
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_622
    die "Contextual %*REG not found"
  vivify_622:
  vivify_621:
    set $P108, $P107["fail"]
    unless_null $P108, vivify_623
    new $P108, "Undef"
  vivify_623:
    $P103."push_pirop"($P104, "$I11", 0, $P108)
.annotate 'line', 302
    set $P103, param_1204
    unless_null $P103, vivify_624
    new $P103, "Undef"
  vivify_624:
    $S100 = $P103."subtype"()
    iseq $I100, $S100, "zerowidth"
    if $I100, unless_1210_end
    set $P104, $P1205
    unless_null $P104, vivify_625
    new $P104, "Undef"
  vivify_625:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_626
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_627
    die "Contextual %*REG not found"
  vivify_627:
  vivify_626:
    set $P108, $P107["pos"]
    unless_null $P108, vivify_628
    new $P108, "Undef"
  vivify_628:
    $P104."push_pirop"("inc", $P108)
  unless_1210_end:
.annotate 'line', 294
    set $P103, $P1205
    unless_null $P103, vivify_629
    new $P103, "Undef"
  vivify_629:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "literal" :anon :subid("35_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1212
    .param pmc param_1213
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 306
    .lex "self", param_1212
    .lex "$node", param_1213
.annotate 'line', 307
    new $P100, "Undef"
    set $P1214, $P100
    .lex "$ops", $P1214
.annotate 'line', 308
    new $P101, "Undef"
    set $P1215, $P101
    .lex "$litconst", $P1215
.annotate 'line', 311
    new $P102, "Undef"
    set $P1216, $P102
    .lex "$litlen", $P1216
.annotate 'line', 312
    new $P103, "Undef"
    set $P1217, $P103
    .lex "$litpost", $P1217
.annotate 'line', 313
    new $P104, "Undef"
    set $P1218, $P104
    .lex "$cmpop", $P1218
.annotate 'line', 307
    set $P105, param_1212
    nqp_decontainerize $P106, $P105
    $P107 = $P106."post_new"("Ops")
    set $P1214, $P107
.annotate 'line', 308
    set $P1219, param_1213
    unless_null $P1219, vivify_630
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    set $P105, $P1219[0]
    unless_null $P105, vivify_631
    new $P105, "Undef"
  vivify_631:
    set $P1215, $P105
.annotate 'line', 310
    set $P105, param_1213
    unless_null $P105, vivify_632
    new $P105, "Undef"
  vivify_632:
    $S100 = $P105."subtype"()
    iseq $I100, $S100, "ignorecase"
    unless $I100, if_1220_end
.annotate 'line', 309
    set $P106, $P1215
    unless_null $P106, vivify_633
    new $P106, "Undef"
  vivify_633:
    set $S101, $P106
    downcase $S102, $S101
    new $P107, 'String'
    set $P107, $S102
    set $P1215, $P107
  if_1220_end:
.annotate 'line', 311
    set $P105, $P1215
    unless_null $P105, vivify_634
    new $P105, "Undef"
  vivify_634:
    set $S100, $P105
    length $I100, $S100
    new $P106, 'Integer'
    set $P106, $I100
    set $P1216, $P106
.annotate 'line', 312
    set $P105, param_1212
    nqp_decontainerize $P106, $P105
    set $P107, $P1215
    unless_null $P107, vivify_635
    new $P107, "Undef"
  vivify_635:
    $P108 = $P106."escape"($P107)
    set $P1217, $P108
.annotate 'line', 313
    set $P106, param_1213
    unless_null $P106, vivify_636
    new $P106, "Undef"
  vivify_636:
    $P107 = $P106."negate"()
    if $P107, if_1221
    new $P109, "String"
    assign $P109, "ne"
    set $P105, $P109
    goto if_1221_end
  if_1221:
    new $P108, "String"
    assign $P108, "eq"
    set $P105, $P108
  if_1221_end:
    set $P1218, $P105
.annotate 'line', 314
    set $P105, $P1214
    unless_null $P105, vivify_637
    new $P105, "Undef"
  vivify_637:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_638
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_639
    die "Contextual %*REG not found"
  vivify_639:
  vivify_638:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_640
    new $P109, "Undef"
  vivify_640:
    set $P110, $P1216
    unless_null $P110, vivify_641
    new $P110, "Undef"
  vivify_641:
    $P105."push_pirop"("add", "$I11", $P109, $P110)
.annotate 'line', 315
    set $P105, $P1214
    unless_null $P105, vivify_642
    new $P105, "Undef"
  vivify_642:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_643
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_644
    die "Contextual %*REG not found"
  vivify_644:
  vivify_643:
    set $P109, $P108["eos"]
    unless_null $P109, vivify_645
    new $P109, "Undef"
  vivify_645:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_646
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_647
    die "Contextual %*REG not found"
  vivify_647:
  vivify_646:
    set $P113, $P112["fail"]
    unless_null $P113, vivify_648
    new $P113, "Undef"
  vivify_648:
    $P105."push_pirop"("gt", "$I11", $P109, $P113)
.annotate 'line', 316
    set $P105, $P1214
    unless_null $P105, vivify_649
    new $P105, "Undef"
  vivify_649:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_650
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_651
    die "Contextual %*REG not found"
  vivify_651:
  vivify_650:
    set $P109, $P108["tgt"]
    unless_null $P109, vivify_652
    new $P109, "Undef"
  vivify_652:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_653
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_654
    die "Contextual %*REG not found"
  vivify_654:
  vivify_653:
    set $P113, $P112["pos"]
    unless_null $P113, vivify_655
    new $P113, "Undef"
  vivify_655:
    set $P114, $P1216
    unless_null $P114, vivify_656
    new $P114, "Undef"
  vivify_656:
    $P105."push_pirop"("substr", "$S10", $P109, $P113, $P114)
.annotate 'line', 318
    set $P105, param_1213
    unless_null $P105, vivify_657
    new $P105, "Undef"
  vivify_657:
    $S100 = $P105."subtype"()
    iseq $I100, $S100, "ignorecase"
    unless $I100, if_1222_end
.annotate 'line', 317
    set $P106, $P1214
    unless_null $P106, vivify_658
    new $P106, "Undef"
  vivify_658:
    $P106."push_pirop"("downcase", "$S10", "$S10")
  if_1222_end:
.annotate 'line', 319
    set $P105, $P1214
    unless_null $P105, vivify_659
    new $P105, "Undef"
  vivify_659:
    set $P106, $P1218
    unless_null $P106, vivify_660
    new $P106, "Undef"
  vivify_660:
    set $P107, $P1217
    unless_null $P107, vivify_661
    new $P107, "Undef"
  vivify_661:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_662
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_663
    die "Contextual %*REG not found"
  vivify_663:
  vivify_662:
    set $P111, $P110["fail"]
    unless_null $P111, vivify_664
    new $P111, "Undef"
  vivify_664:
    $P105."push_pirop"($P106, "$S10", $P107, $P111)
.annotate 'line', 320
    set $P105, $P1214
    unless_null $P105, vivify_665
    new $P105, "Undef"
  vivify_665:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_666
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_667
    die "Contextual %*REG not found"
  vivify_667:
  vivify_666:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_668
    new $P109, "Undef"
  vivify_668:
    set $P110, $P1216
    unless_null $P110, vivify_669
    new $P110, "Undef"
  vivify_669:
    $P105."push_pirop"("add", $P109, $P110)
.annotate 'line', 306
    set $P105, $P1214
    unless_null $P105, vivify_670
    new $P105, "Undef"
  vivify_670:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "pass" :anon :subid("36_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1224
    .param pmc param_1225
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 324
    .const 'Sub' $P1232 = "55_1338064445.054" 
    capture_lex $P1232
    .lex "self", param_1224
    .lex "$node", param_1225
.annotate 'line', 325
    new $P100, "Undef"
    set $P1226, $P100
    .lex "$ops", $P1226
.annotate 'line', 326
    $P1228 = root_new ['parrot';'ResizablePMCArray']
    set $P1227, $P1228
    .lex "@backtrack", $P1227
.annotate 'line', 325
    set $P101, param_1224
    nqp_decontainerize $P102, $P101
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_671
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_672
    die "Contextual %*REG not found"
  vivify_672:
  vivify_671:
    set $P106, $P105["cur"]
    unless_null $P106, vivify_673
    new $P106, "Undef"
  vivify_673:
    $P107 = $P102."post_new"("Ops", $P106 :named("result"))
    set $P1226, $P107
.annotate 'line', 327
    set $P101, param_1225
    unless_null $P101, vivify_674
    new $P101, "Undef"
  vivify_674:
    $S100 = $P101."backtrack"()
    isne $I100, $S100, "r"
    unless $I100, if_1229_end
.annotate 'line', 326
    new $P102, "ResizablePMCArray"
    push $P102, "'backtrack'=>1"
    set $P1227, $P102
  if_1229_end:
.annotate 'line', 328
    set $P101, param_1225
    unless_null $P101, vivify_675
    new $P101, "Undef"
  vivify_675:
    $P102 = $P101."name"()
    if $P102, if_1230
.annotate 'line', 333
    set $P104, $P1226
    unless_null $P104, vivify_676
    new $P104, "Undef"
  vivify_676:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_677
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_678
    die "Contextual %*REG not found"
  vivify_678:
  vivify_677:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_679
    new $P108, "Undef"
  vivify_679:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_680
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_681
    die "Contextual %*REG not found"
  vivify_681:
  vivify_680:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_682
    new $P112, "Undef"
  vivify_682:
    set $P1235, $P1227
    unless_null $P1235, vivify_683
    $P1235 = root_new ['parrot';'ResizablePMCArray']
  vivify_683:
    $P104."push_pirop"("callmethod", "\"!cursor_pass\"", $P108, $P112, $P1235 :flat)
.annotate 'line', 332
    goto if_1230_end
  if_1230:
.annotate 'line', 328
    .const 'Sub' $P1232 = "55_1338064445.054" 
    capture_lex $P1232
    $P1232()
  if_1230_end:
.annotate 'line', 335
    set $P101, $P1226
    unless_null $P101, vivify_696
    new $P101, "Undef"
  vivify_696:
    find_dynamic_lex $P104, "%*REG"
    unless_null $P104, vivify_697
    get_hll_global $P102, "GLOBAL"
    get_who $P103, $P102
    set $P104, $P103["%REG"]
    unless_null $P104, vivify_698
    die "Contextual %*REG not found"
  vivify_698:
  vivify_697:
    set $P105, $P104["cur"]
    unless_null $P105, vivify_699
    new $P105, "Undef"
  vivify_699:
    $P101."push_pirop"("return", $P105)
.annotate 'line', 324
    set $P101, $P1226
    unless_null $P101, vivify_700
    new $P101, "Undef"
  vivify_700:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1231"  :anon :subid("55_1338064445.054") :outer("36_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 329
    new $P103, "Undef"
    set $P1233, $P103
    .lex "$name", $P1233
    find_dynamic_lex $P106, "$*PASTCOMPILER"
    unless_null $P106, vivify_684
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["$PASTCOMPILER"]
    unless_null $P106, vivify_685
    die "Contextual $*PASTCOMPILER not found"
  vivify_685:
  vivify_684:
    find_lex $P107, "$node"
    unless_null $P107, vivify_686
    new $P107, "Undef"
  vivify_686:
    $P108 = $P107."name"()
    $P109 = $P106."as_post"($P108, "~" :named("rtype"))
    set $P1233, $P109
.annotate 'line', 330
    find_lex $P104, "$ops"
    unless_null $P104, vivify_687
    new $P104, "Undef"
  vivify_687:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_688
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_689
    die "Contextual %*REG not found"
  vivify_689:
  vivify_688:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_690
    new $P108, "Undef"
  vivify_690:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_691
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_692
    die "Contextual %*REG not found"
  vivify_692:
  vivify_691:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_693
    new $P112, "Undef"
  vivify_693:
    set $P113, $P1233
    unless_null $P113, vivify_694
    new $P113, "Undef"
  vivify_694:
    find_lex $P1234, "@backtrack"
    unless_null $P1234, vivify_695
    $P1234 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    $P114 = $P104."push_pirop"("callmethod", "\"!cursor_pass\"", $P108, $P112, $P113, $P1234 :flat)
.annotate 'line', 328
    .return ($P114)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "pastnode" :anon :subid("37_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1237
    .param pmc param_1238
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 339
    .lex "self", param_1237
    .lex "$node", param_1238
.annotate 'line', 340
    new $P100, "Undef"
    set $P1239, $P100
    .lex "$ops", $P1239
.annotate 'line', 343
    new $P101, "Undef"
    set $P1240, $P101
    .lex "$cpost", $P1240
.annotate 'line', 340
    set $P102, param_1237
    nqp_decontainerize $P103, $P102
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_701
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_702
    die "Contextual %*REG not found"
  vivify_702:
  vivify_701:
    set $P107, $P106["cur"]
    unless_null $P107, vivify_703
    new $P107, "Undef"
  vivify_703:
    $P108 = $P103."post_new"("Ops", $P107 :named("result"))
    set $P1239, $P108
.annotate 'line', 341
    set $P102, $P1239
    unless_null $P102, vivify_704
    new $P102, "Undef"
  vivify_704:
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_705
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_706
    die "Contextual %*REG not found"
  vivify_706:
  vivify_705:
    set $P106, $P105["cur"]
    unless_null $P106, vivify_707
    new $P106, "Undef"
  vivify_707:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_708
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_709
    die "Contextual %*REG not found"
  vivify_709:
  vivify_708:
    set $P110, $P109["curclass"]
    unless_null $P110, vivify_710
    new $P110, "Undef"
  vivify_710:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_711
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_712
    die "Contextual %*REG not found"
  vivify_712:
  vivify_711:
    set $P114, $P113["pos"]
    unless_null $P114, vivify_713
    new $P114, "Undef"
  vivify_713:
    $P102."push_pirop"("repr_bind_attr_int", $P106, $P110, "\"$!pos\"", $P114)
.annotate 'line', 342
    set $P102, $P1239
    unless_null $P102, vivify_714
    new $P102, "Undef"
  vivify_714:
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_715
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_716
    die "Contextual %*REG not found"
  vivify_716:
  vivify_715:
    set $P106, $P105["cur"]
    unless_null $P106, vivify_717
    new $P106, "Undef"
  vivify_717:
    $P102."push_pirop"("store_lex", unicode:"unicode:\"$\\x{a2}\"", $P106)
.annotate 'line', 343
    find_dynamic_lex $P104, "$*PASTCOMPILER"
    unless_null $P104, vivify_718
    get_hll_global $P102, "GLOBAL"
    get_who $P103, $P102
    set $P104, $P103["$PASTCOMPILER"]
    unless_null $P104, vivify_719
    die "Contextual $*PASTCOMPILER not found"
  vivify_719:
  vivify_718:
    set $P1241, param_1238
    unless_null $P1241, vivify_720
    $P1241 = root_new ['parrot';'ResizablePMCArray']
  vivify_720:
    set $P105, $P1241[0]
    unless_null $P105, vivify_721
    new $P105, "Undef"
  vivify_721:
    $P106 = $P104."as_post"($P105, "P" :named("rtype"))
    set $P1240, $P106
.annotate 'line', 344
    set $P102, $P1239
    unless_null $P102, vivify_722
    new $P102, "Undef"
  vivify_722:
    set $P103, $P1240
    unless_null $P103, vivify_723
    new $P103, "Undef"
  vivify_723:
    $P102."push"($P103)
.annotate 'line', 345
    set $P102, param_1238
    unless_null $P102, vivify_724
    new $P102, "Undef"
  vivify_724:
    $S100 = $P102."subtype"()
    iseq $I100, $S100, "zerowidth"
    unless $I100, if_1242_end
.annotate 'line', 346
    set $P103, $P1239
    unless_null $P103, vivify_725
    new $P103, "Undef"
  vivify_725:
    set $P105, param_1238
    unless_null $P105, vivify_726
    new $P105, "Undef"
  vivify_726:
    $P106 = $P105."negate"()
    if $P106, if_1243
    new $P108, "String"
    assign $P108, "unless"
    set $P104, $P108
    goto if_1243_end
  if_1243:
    new $P107, "String"
    assign $P107, "if"
    set $P104, $P107
  if_1243_end:
    set $P109, $P1240
    unless_null $P109, vivify_727
    new $P109, "Undef"
  vivify_727:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_728
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_729
    die "Contextual %*REG not found"
  vivify_729:
  vivify_728:
    set $P113, $P112["fail"]
    unless_null $P113, vivify_730
    new $P113, "Undef"
  vivify_730:
    $P103."push_pirop"($P104, $P109, $P113)
  if_1242_end:
.annotate 'line', 339
    set $P102, $P1239
    unless_null $P102, vivify_731
    new $P102, "Undef"
  vivify_731:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "quant" :anon :subid("38_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 351
    .const 'Sub' $P1267 = "56_1338064445.054" 
    capture_lex $P1267
    .lex "self", param_1245
    .lex "$node", param_1246
.annotate 'line', 352
    new $P100, "Undef"
    set $P1247, $P100
    .lex "$ops", $P1247
.annotate 'line', 353
    new $P101, "Undef"
    set $P1248, $P101
    .lex "$backtrack", $P1248
.annotate 'line', 354
    new $P102, "Undef"
    set $P1249, $P102
    .lex "$sep", $P1249
.annotate 'line', 355
    new $P103, "Undef"
    set $P1250, $P103
    .lex "$prefix", $P1250
.annotate 'line', 356
    new $P104, "Undef"
    set $P1251, $P104
    .lex "$looplabel", $P1251
.annotate 'line', 357
    new $P105, "Undef"
    set $P1252, $P105
    .lex "$donelabel", $P1252
.annotate 'line', 358
    new $P106, "Undef"
    set $P1253, $P106
    .lex "$min", $P1253
.annotate 'line', 359
    new $P107, "Undef"
    set $P1254, $P107
    .lex "$max", $P1254
.annotate 'line', 360
    new $P108, "Undef"
    set $P1255, $P108
    .lex "$needrep", $P1255
.annotate 'line', 361
    new $P109, "Undef"
    set $P1256, $P109
    .lex "$needmark", $P1256
.annotate 'line', 352
    set $P110, param_1245
    nqp_decontainerize $P111, $P110
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_732
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_733
    die "Contextual %*REG not found"
  vivify_733:
  vivify_732:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_734
    new $P115, "Undef"
  vivify_734:
    $P116 = $P111."post_new"("Ops", $P115 :named("result"))
    set $P1247, $P116
.annotate 'line', 353
    set $P111, param_1246
    unless_null $P111, vivify_735
    new $P111, "Undef"
  vivify_735:
    $P112 = $P111."backtrack"()
    unless $P112, unless_1257
    set $P110, $P112
    goto unless_1257_end
  unless_1257:
    new $P113, "String"
    assign $P113, "g"
    set $P110, $P113
  unless_1257_end:
    set $P1248, $P110
.annotate 'line', 354
    set $P1258, param_1246
    unless_null $P1258, vivify_736
    $P1258 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
    set $P110, $P1258[1]
    unless_null $P110, vivify_737
    new $P110, "Undef"
  vivify_737:
    set $P1249, $P110
.annotate 'line', 355
    set $P110, param_1245
    nqp_decontainerize $P111, $P110
    new $P112, "String"
    assign $P112, "rxquant"
    set $P113, $P1248
    unless_null $P113, vivify_738
    new $P113, "Undef"
  vivify_738:
    concat $P114, $P112, $P113
    $P115 = $P111."unique"($P114)
    set $P1250, $P115
.annotate 'line', 356
    set $P110, param_1245
    nqp_decontainerize $P111, $P110
    set $P112, $P1250
    unless_null $P112, vivify_739
    new $P112, "Undef"
  vivify_739:
    concat $P113, $P112, "_loop"
    $P114 = $P111."post_new"("Label", $P113 :named("result"))
    set $P1251, $P114
.annotate 'line', 357
    set $P110, param_1245
    nqp_decontainerize $P111, $P110
    set $P112, $P1250
    unless_null $P112, vivify_740
    new $P112, "Undef"
  vivify_740:
    concat $P113, $P112, "_done"
    $P114 = $P111."post_new"("Label", $P113 :named("result"))
    set $P1252, $P114
.annotate 'line', 358
    set $P111, param_1246
    unless_null $P111, vivify_741
    new $P111, "Undef"
  vivify_741:
    $P112 = $P111."min"()
    unless $P112, unless_1259
    set $P110, $P112
    goto unless_1259_end
  unless_1259:
    new $P113, "Float"
    assign $P113, 0
    set $P110, $P113
  unless_1259_end:
    set $P1253, $P110
.annotate 'line', 359
    set $P110, param_1246
    unless_null $P110, vivify_742
    new $P110, "Undef"
  vivify_742:
    $P111 = $P110."max"()
    set $P1260, $P111
    defined $I1262, $P1260
    if $I1262, default_1261
    new $P112, "Float"
    assign $P112, -1
    set $P1260, $P112
  default_1261:
    set $P1254, $P1260
.annotate 'line', 360
    set $P111, $P1253
    unless_null $P111, vivify_743
    new $P111, "Undef"
  vivify_743:
    set $N100, $P111
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, unless_1263
    new $P110, 'Integer'
    set $P110, $I100
    goto unless_1263_end
  unless_1263:
    set $P112, $P1254
    unless_null $P112, vivify_744
    new $P112, "Undef"
  vivify_744:
    set $N102, $P112
    set $N103, 1
    isgt $I101, $N102, $N103
    new $P110, 'Integer'
    set $P110, $I101
  unless_1263_end:
    set $P1255, $P110
.annotate 'line', 361
    set $P111, $P1255
    unless_null $P111, vivify_745
    new $P111, "Undef"
  vivify_745:
    unless $P111, unless_1264
    set $P110, $P111
    goto unless_1264_end
  unless_1264:
    set $P112, $P1248
    unless_null $P112, vivify_746
    new $P112, "Undef"
  vivify_746:
    set $S100, $P112
    iseq $I100, $S100, "r"
    new $P110, 'Integer'
    set $P110, $I100
  unless_1264_end:
    set $P1256, $P110
.annotate 'line', 363
    set $P110, $P1247
    unless_null $P110, vivify_747
    new $P110, "Undef"
  vivify_747:
    set $P111, $P1250
    unless_null $P111, vivify_748
    new $P111, "Undef"
  vivify_748:
    set $P112, $P1253
    unless_null $P112, vivify_749
    new $P112, "Undef"
  vivify_749:
    set $P113, $P1254
    unless_null $P113, vivify_750
    new $P113, "Undef"
  vivify_750:
    $P110."push_pirop"("inline", $P111, $P112, $P113, "  # rx %0 ** %1..%2" :named("inline"))
.annotate 'line', 365
    set $P110, $P1248
    unless_null $P110, vivify_751
    new $P110, "Undef"
  vivify_751:
    set $S100, $P110
    iseq $I100, $S100, "f"
    if $I100, if_1265
.annotate 'line', 387
    set $P113, $P1253
    unless_null $P113, vivify_752
    new $P113, "Undef"
  vivify_752:
    set $N100, $P113
    set $N101, 0
    iseq $I101, $N100, $N101
    if $I101, if_1278
.annotate 'line', 388
    set $P114, $P1256
    unless_null $P114, vivify_753
    new $P114, "Undef"
  vivify_753:
    unless $P114, if_1279_end
    set $P116, param_1245
    nqp_decontainerize $P117, $P116
    set $P118, $P1247
    unless_null $P118, vivify_754
    new $P118, "Undef"
  vivify_754:
    set $P119, $P1252
    unless_null $P119, vivify_755
    new $P119, "Undef"
  vivify_755:
    $P117."regex_mark"($P118, $P119, -1, 0)
  if_1279_end:
    goto if_1278_end
  if_1278:
.annotate 'line', 387
    set $P114, param_1245
    nqp_decontainerize $P116, $P114
    set $P117, $P1247
    unless_null $P117, vivify_756
    new $P117, "Undef"
  vivify_756:
    set $P118, $P1252
    unless_null $P118, vivify_757
    new $P118, "Undef"
  vivify_757:
    find_dynamic_lex $P121, "%*REG"
    unless_null $P121, vivify_758
    get_hll_global $P119, "GLOBAL"
    get_who $P120, $P119
    set $P121, $P120["%REG"]
    unless_null $P121, vivify_759
    die "Contextual %*REG not found"
  vivify_759:
  vivify_758:
    set $P122, $P121["pos"]
    unless_null $P122, vivify_760
    new $P122, "Undef"
  vivify_760:
    $P116."regex_mark"($P117, $P118, $P122, 0)
  if_1278_end:
.annotate 'line', 389
    set $P113, $P1247
    unless_null $P113, vivify_761
    new $P113, "Undef"
  vivify_761:
    set $P114, $P1251
    unless_null $P114, vivify_762
    new $P114, "Undef"
  vivify_762:
    $P113."push"($P114)
.annotate 'line', 390
    set $P113, $P1247
    unless_null $P113, vivify_763
    new $P113, "Undef"
  vivify_763:
    set $P114, param_1245
    nqp_decontainerize $P116, $P114
    set $P1280, param_1246
    unless_null $P1280, vivify_764
    $P1280 = root_new ['parrot';'ResizablePMCArray']
  vivify_764:
    set $P117, $P1280[0]
    unless_null $P117, vivify_765
    new $P117, "Undef"
  vivify_765:
    $P118 = $P116."regex_post"($P117)
    $P113."push"($P118)
.annotate 'line', 391
    set $P113, $P1256
    unless_null $P113, vivify_766
    new $P113, "Undef"
  vivify_766:
    unless $P113, if_1281_end
.annotate 'line', 392
    set $P114, param_1245
    nqp_decontainerize $P116, $P114
    set $P117, $P1247
    unless_null $P117, vivify_767
    new $P117, "Undef"
  vivify_767:
    set $P118, $P1252
    unless_null $P118, vivify_768
    new $P118, "Undef"
  vivify_768:
    find_dynamic_lex $P121, "%*REG"
    unless_null $P121, vivify_769
    get_hll_global $P119, "GLOBAL"
    get_who $P120, $P119
    set $P121, $P120["%REG"]
    unless_null $P121, vivify_770
    die "Contextual %*REG not found"
  vivify_770:
  vivify_769:
    set $P122, $P121["rep"]
    unless_null $P122, vivify_771
    new $P122, "Undef"
  vivify_771:
    $P116."regex_peek"($P117, $P118, "*", $P122)
.annotate 'line', 393
    set $P114, $P1248
    unless_null $P114, vivify_772
    new $P114, "Undef"
  vivify_772:
    set $S101, $P114
    iseq $I101, $S101, "r"
    unless $I101, if_1282_end
    set $P116, param_1245
    nqp_decontainerize $P117, $P116
    set $P118, $P1247
    unless_null $P118, vivify_773
    new $P118, "Undef"
  vivify_773:
    set $P119, $P1252
    unless_null $P119, vivify_774
    new $P119, "Undef"
  vivify_774:
    $P117."regex_commit"($P118, $P119)
  if_1282_end:
.annotate 'line', 394
    set $P114, $P1247
    unless_null $P114, vivify_775
    new $P114, "Undef"
  vivify_775:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_776
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_777
    die "Contextual %*REG not found"
  vivify_777:
  vivify_776:
    set $P119, $P118["rep"]
    unless_null $P119, vivify_778
    new $P119, "Undef"
  vivify_778:
    $P114."push_pirop"("inc", $P119)
.annotate 'line', 396
    set $P114, $P1254
    unless_null $P114, vivify_779
    new $P114, "Undef"
  vivify_779:
    set $N100, $P114
    set $N101, 1
    isgt $I101, $N100, $N101
    unless $I101, if_1283_end
.annotate 'line', 395
    set $P116, $P1247
    unless_null $P116, vivify_780
    new $P116, "Undef"
  vivify_780:
    find_dynamic_lex $P119, "%*REG"
    unless_null $P119, vivify_781
    get_hll_global $P117, "GLOBAL"
    get_who $P118, $P117
    set $P119, $P118["%REG"]
    unless_null $P119, vivify_782
    die "Contextual %*REG not found"
  vivify_782:
  vivify_781:
    set $P120, $P119["rep"]
    unless_null $P120, vivify_783
    new $P120, "Undef"
  vivify_783:
    set $P121, param_1246
    unless_null $P121, vivify_784
    new $P121, "Undef"
  vivify_784:
    $P122 = $P121."max"()
    set $P123, $P1252
    unless_null $P123, vivify_785
    new $P123, "Undef"
  vivify_785:
    $P116."push_pirop"("ge", $P120, $P122, $P123)
  if_1283_end:
  if_1281_end:
.annotate 'line', 398
    set $P113, $P1254
    unless_null $P113, vivify_786
    new $P113, "Undef"
  vivify_786:
    set $N100, $P113
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, unless_1284_end
.annotate 'line', 399
    set $P114, param_1245
    nqp_decontainerize $P116, $P114
    set $P117, $P1247
    unless_null $P117, vivify_787
    new $P117, "Undef"
  vivify_787:
    set $P118, $P1252
    unless_null $P118, vivify_788
    new $P118, "Undef"
  vivify_788:
    find_dynamic_lex $P121, "%*REG"
    unless_null $P121, vivify_789
    get_hll_global $P119, "GLOBAL"
    get_who $P120, $P119
    set $P121, $P120["%REG"]
    unless_null $P121, vivify_790
    die "Contextual %*REG not found"
  vivify_790:
  vivify_789:
    set $P122, $P121["pos"]
    unless_null $P122, vivify_791
    new $P122, "Undef"
  vivify_791:
    find_dynamic_lex $P125, "%*REG"
    unless_null $P125, vivify_792
    get_hll_global $P123, "GLOBAL"
    get_who $P124, $P123
    set $P125, $P124["%REG"]
    unless_null $P125, vivify_793
    die "Contextual %*REG not found"
  vivify_793:
  vivify_792:
    set $P126, $P125["rep"]
    unless_null $P126, vivify_794
    new $P126, "Undef"
  vivify_794:
    $P116."regex_mark"($P117, $P118, $P122, $P126)
.annotate 'line', 400
    set $P114, $P1249
    unless_null $P114, vivify_795
    new $P114, "Undef"
  vivify_795:
    unless $P114, if_1285_end
    set $P116, $P1247
    unless_null $P116, vivify_796
    new $P116, "Undef"
  vivify_796:
    set $P117, param_1245
    nqp_decontainerize $P118, $P117
    set $P119, $P1249
    unless_null $P119, vivify_797
    new $P119, "Undef"
  vivify_797:
    $P120 = $P118."regex_post"($P119)
    $P116."push"($P120)
  if_1285_end:
.annotate 'line', 401
    set $P114, $P1247
    unless_null $P114, vivify_798
    new $P114, "Undef"
  vivify_798:
    set $P116, $P1251
    unless_null $P116, vivify_799
    new $P116, "Undef"
  vivify_799:
    $P114."push_pirop"("goto", $P116)
  unless_1284_end:
.annotate 'line', 403
    set $P113, $P1247
    unless_null $P113, vivify_800
    new $P113, "Undef"
  vivify_800:
    set $P114, $P1252
    unless_null $P114, vivify_801
    new $P114, "Undef"
  vivify_801:
    $P113."push"($P114)
.annotate 'line', 405
    set $P113, $P1253
    unless_null $P113, vivify_802
    new $P113, "Undef"
  vivify_802:
    set $N100, $P113
    set $N101, 1
    isgt $I101, $N100, $N101
    unless $I101, if_1286_end
.annotate 'line', 404
    set $P114, $P1247
    unless_null $P114, vivify_803
    new $P114, "Undef"
  vivify_803:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_804
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_805
    die "Contextual %*REG not found"
  vivify_805:
  vivify_804:
    set $P119, $P118["rep"]
    unless_null $P119, vivify_806
    new $P119, "Undef"
  vivify_806:
    set $P120, param_1246
    unless_null $P120, vivify_807
    new $P120, "Undef"
  vivify_807:
    $P121 = $P120."min"()
    set $N102, $P121
    find_dynamic_lex $P124, "%*REG"
    unless_null $P124, vivify_808
    get_hll_global $P122, "GLOBAL"
    get_who $P123, $P122
    set $P124, $P123["%REG"]
    unless_null $P124, vivify_809
    die "Contextual %*REG not found"
  vivify_809:
  vivify_808:
    set $P125, $P124["fail"]
    unless_null $P125, vivify_810
    new $P125, "Undef"
  vivify_810:
    $P114."push_pirop"("lt", $P119, $N102, $P125)
  if_1286_end:
.annotate 'line', 386
    goto if_1265_end
  if_1265:
.annotate 'line', 365
    .const 'Sub' $P1267 = "56_1338064445.054" 
    capture_lex $P1267
    $P1267()
  if_1265_end:
.annotate 'line', 351
    set $P110, $P1247
    unless_null $P110, vivify_880
    new $P110, "Undef"
  vivify_880:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1266"  :anon :subid("56_1338064445.054") :outer("38_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 366
    new $P111, "Undef"
    set $P1268, $P111
    .lex "$seplabel", $P1268
.annotate 'line', 367
    new $P112, "Undef"
    set $P1269, $P112
    .lex "$ireg", $P1269
.annotate 'line', 366
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$prefix"
    unless_null $P115, vivify_811
    new $P115, "Undef"
  vivify_811:
    concat $P116, $P115, "_sep"
    $P117 = $P114."post_new"("Label", $P116 :named("result"))
    set $P1268, $P117
.annotate 'line', 367
    new $P113, "String"
    assign $P113, "$I12"
    set $P1269, $P113
.annotate 'line', 368
    find_lex $P113, "$ops"
    unless_null $P113, vivify_812
    new $P113, "Undef"
  vivify_812:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_813
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_814
    die "Contextual %*REG not found"
  vivify_814:
  vivify_813:
    set $P117, $P116["rep"]
    unless_null $P117, vivify_815
    new $P117, "Undef"
  vivify_815:
    $P113."push_pirop"("set", $P117, 0)
.annotate 'line', 369
    find_lex $P113, "$min"
    unless_null $P113, vivify_816
    new $P113, "Undef"
  vivify_816:
    set $N100, $P113
    set $N101, 1
    islt $I101, $N100, $N101
    unless $I101, if_1270_end
.annotate 'line', 370
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$ops"
    unless_null $P116, vivify_817
    new $P116, "Undef"
  vivify_817:
    find_lex $P117, "$looplabel"
    unless_null $P117, vivify_818
    new $P117, "Undef"
  vivify_818:
    find_dynamic_lex $P120, "%*REG"
    unless_null $P120, vivify_819
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["%REG"]
    unless_null $P120, vivify_820
    die "Contextual %*REG not found"
  vivify_820:
  vivify_819:
    set $P121, $P120["pos"]
    unless_null $P121, vivify_821
    new $P121, "Undef"
  vivify_821:
    find_dynamic_lex $P124, "%*REG"
    unless_null $P124, vivify_822
    get_hll_global $P122, "GLOBAL"
    get_who $P123, $P122
    set $P124, $P123["%REG"]
    unless_null $P124, vivify_823
    die "Contextual %*REG not found"
  vivify_823:
  vivify_822:
    set $P125, $P124["rep"]
    unless_null $P125, vivify_824
    new $P125, "Undef"
  vivify_824:
    $P115."regex_mark"($P116, $P117, $P121, $P125)
.annotate 'line', 371
    find_lex $P114, "$ops"
    unless_null $P114, vivify_825
    new $P114, "Undef"
  vivify_825:
    find_lex $P115, "$donelabel"
    unless_null $P115, vivify_826
    new $P115, "Undef"
  vivify_826:
    $P114."push_pirop"("goto", $P115)
  if_1270_end:
.annotate 'line', 373
    find_lex $P113, "$sep"
    unless_null $P113, vivify_827
    new $P113, "Undef"
  vivify_827:
    unless $P113, if_1271_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_828
    new $P114, "Undef"
  vivify_828:
    set $P115, $P1268
    unless_null $P115, vivify_829
    new $P115, "Undef"
  vivify_829:
    $P114."push_pirop"("goto", $P115)
  if_1271_end:
.annotate 'line', 374
    find_lex $P113, "$ops"
    unless_null $P113, vivify_830
    new $P113, "Undef"
  vivify_830:
    find_lex $P114, "$looplabel"
    unless_null $P114, vivify_831
    new $P114, "Undef"
  vivify_831:
    $P113."push"($P114)
.annotate 'line', 375
    find_lex $P113, "$ops"
    unless_null $P113, vivify_832
    new $P113, "Undef"
  vivify_832:
    set $P114, $P1269
    unless_null $P114, vivify_833
    new $P114, "Undef"
  vivify_833:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_834
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_835
    die "Contextual %*REG not found"
  vivify_835:
  vivify_834:
    set $P118, $P117["rep"]
    unless_null $P118, vivify_836
    new $P118, "Undef"
  vivify_836:
    $P113."push_pirop"("set", $P114, $P118)
.annotate 'line', 376
    find_lex $P113, "$sep"
    unless_null $P113, vivify_837
    new $P113, "Undef"
  vivify_837:
    unless $P113, if_1272_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_838
    new $P114, "Undef"
  vivify_838:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$sep"
    unless_null $P117, vivify_839
    new $P117, "Undef"
  vivify_839:
    $P118 = $P116."regex_post"($P117)
    $P114."push"($P118)
  if_1272_end:
.annotate 'line', 377
    find_lex $P113, "$sep"
    unless_null $P113, vivify_840
    new $P113, "Undef"
  vivify_840:
    unless $P113, if_1273_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_841
    new $P114, "Undef"
  vivify_841:
    set $P115, $P1268
    unless_null $P115, vivify_842
    new $P115, "Undef"
  vivify_842:
    $P114."push"($P115)
  if_1273_end:
.annotate 'line', 378
    find_lex $P113, "$ops"
    unless_null $P113, vivify_843
    new $P113, "Undef"
  vivify_843:
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P1274, "$node"
    unless_null $P1274, vivify_844
    $P1274 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $P116, $P1274[0]
    unless_null $P116, vivify_845
    new $P116, "Undef"
  vivify_845:
    $P117 = $P115."regex_post"($P116)
    $P113."push"($P117)
.annotate 'line', 379
    find_lex $P113, "$ops"
    unless_null $P113, vivify_846
    new $P113, "Undef"
  vivify_846:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_847
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_848
    die "Contextual %*REG not found"
  vivify_848:
  vivify_847:
    set $P117, $P116["rep"]
    unless_null $P117, vivify_849
    new $P117, "Undef"
  vivify_849:
    set $P118, $P1269
    unless_null $P118, vivify_850
    new $P118, "Undef"
  vivify_850:
    $P113."push_pirop"("set", $P117, $P118)
.annotate 'line', 380
    find_lex $P113, "$ops"
    unless_null $P113, vivify_851
    new $P113, "Undef"
  vivify_851:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_852
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_853
    die "Contextual %*REG not found"
  vivify_853:
  vivify_852:
    set $P117, $P116["rep"]
    unless_null $P117, vivify_854
    new $P117, "Undef"
  vivify_854:
    $P113."push_pirop"("inc", $P117)
.annotate 'line', 381
    find_lex $P113, "$min"
    unless_null $P113, vivify_855
    new $P113, "Undef"
  vivify_855:
    set $N100, $P113
    set $N101, 1
    isgt $I101, $N100, $N101
    unless $I101, if_1275_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_856
    new $P114, "Undef"
  vivify_856:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_857
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_858
    die "Contextual %*REG not found"
  vivify_858:
  vivify_857:
    set $P118, $P117["rep"]
    unless_null $P118, vivify_859
    new $P118, "Undef"
  vivify_859:
    find_lex $P119, "$min"
    unless_null $P119, vivify_860
    new $P119, "Undef"
  vivify_860:
    find_lex $P120, "$looplabel"
    unless_null $P120, vivify_861
    new $P120, "Undef"
  vivify_861:
    $P114."push_pirop"("lt", $P118, $P119, $P120)
  if_1275_end:
.annotate 'line', 382
    find_lex $P113, "$max"
    unless_null $P113, vivify_862
    new $P113, "Undef"
  vivify_862:
    set $N100, $P113
    set $N101, 1
    isgt $I101, $N100, $N101
    unless $I101, if_1276_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_863
    new $P114, "Undef"
  vivify_863:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_864
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_865
    die "Contextual %*REG not found"
  vivify_865:
  vivify_864:
    set $P118, $P117["rep"]
    unless_null $P118, vivify_866
    new $P118, "Undef"
  vivify_866:
    find_lex $P119, "$max"
    unless_null $P119, vivify_867
    new $P119, "Undef"
  vivify_867:
    find_lex $P120, "$donelabel"
    unless_null $P120, vivify_868
    new $P120, "Undef"
  vivify_868:
    $P114."push_pirop"("ge", $P118, $P119, $P120)
  if_1276_end:
.annotate 'line', 383
    find_lex $P113, "$max"
    unless_null $P113, vivify_869
    new $P113, "Undef"
  vivify_869:
    set $N100, $P113
    set $N101, 1
    isne $I101, $N100, $N101
    unless $I101, if_1277_end
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$ops"
    unless_null $P116, vivify_870
    new $P116, "Undef"
  vivify_870:
    find_lex $P117, "$looplabel"
    unless_null $P117, vivify_871
    new $P117, "Undef"
  vivify_871:
    find_dynamic_lex $P120, "%*REG"
    unless_null $P120, vivify_872
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["%REG"]
    unless_null $P120, vivify_873
    die "Contextual %*REG not found"
  vivify_873:
  vivify_872:
    set $P121, $P120["pos"]
    unless_null $P121, vivify_874
    new $P121, "Undef"
  vivify_874:
    find_dynamic_lex $P124, "%*REG"
    unless_null $P124, vivify_875
    get_hll_global $P122, "GLOBAL"
    get_who $P123, $P122
    set $P124, $P123["%REG"]
    unless_null $P124, vivify_876
    die "Contextual %*REG not found"
  vivify_876:
  vivify_875:
    set $P125, $P124["rep"]
    unless_null $P125, vivify_877
    new $P125, "Undef"
  vivify_877:
    $P115."regex_mark"($P116, $P117, $P121, $P125)
  if_1277_end:
.annotate 'line', 384
    find_lex $P113, "$ops"
    unless_null $P113, vivify_878
    new $P113, "Undef"
  vivify_878:
    find_lex $P114, "$donelabel"
    unless_null $P114, vivify_879
    new $P114, "Undef"
  vivify_879:
    $P115 = $P113."push"($P114)
.annotate 'line', 365
    .return ($P115)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "scan" :anon :subid("39_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1288
    .param pmc param_1289
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 410
    .lex "self", param_1288
    .lex "$node", param_1289
.annotate 'line', 411
    new $P100, "Undef"
    set $P1290, $P100
    .lex "$ops", $P1290
.annotate 'line', 412
    new $P101, "Undef"
    set $P1291, $P101
    .lex "$prefix", $P1291
.annotate 'line', 413
    new $P102, "Undef"
    set $P1292, $P102
    .lex "$looplabel", $P1292
.annotate 'line', 414
    new $P103, "Undef"
    set $P1293, $P103
    .lex "$scanlabel", $P1293
.annotate 'line', 415
    new $P104, "Undef"
    set $P1294, $P104
    .lex "$donelabel", $P1294
.annotate 'line', 411
    set $P105, param_1288
    nqp_decontainerize $P106, $P105
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_881
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_882
    die "Contextual %*REG not found"
  vivify_882:
  vivify_881:
    set $P110, $P109["cur"]
    unless_null $P110, vivify_883
    new $P110, "Undef"
  vivify_883:
    $P111 = $P106."post_new"("Ops", $P110 :named("result"))
    set $P1290, $P111
.annotate 'line', 412
    set $P105, param_1288
    nqp_decontainerize $P106, $P105
    $P107 = $P106."unique"("rxscan")
    set $P1291, $P107
.annotate 'line', 413
    set $P105, param_1288
    nqp_decontainerize $P106, $P105
    set $P107, $P1291
    unless_null $P107, vivify_884
    new $P107, "Undef"
  vivify_884:
    concat $P108, $P107, "_loop"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1292, $P109
.annotate 'line', 414
    set $P105, param_1288
    nqp_decontainerize $P106, $P105
    set $P107, $P1291
    unless_null $P107, vivify_885
    new $P107, "Undef"
  vivify_885:
    concat $P108, $P107, "_scan"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1293, $P109
.annotate 'line', 415
    set $P105, param_1288
    nqp_decontainerize $P106, $P105
    set $P107, $P1291
    unless_null $P107, vivify_886
    new $P107, "Undef"
  vivify_886:
    concat $P108, $P107, "_done"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1294, $P109
.annotate 'line', 416
    set $P105, $P1290
    unless_null $P105, vivify_887
    new $P105, "Undef"
  vivify_887:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_888
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_889
    die "Contextual %*REG not found"
  vivify_889:
  vivify_888:
    set $P109, $P108["curclass"]
    unless_null $P109, vivify_890
    new $P109, "Undef"
  vivify_890:
    $P105."push_pirop"("repr_get_attr_int", "$I11", "self", $P109, "\"$!from\"")
.annotate 'line', 417
    set $P105, $P1290
    unless_null $P105, vivify_891
    new $P105, "Undef"
  vivify_891:
    set $P106, $P1294
    unless_null $P106, vivify_892
    new $P106, "Undef"
  vivify_892:
    $P105."push_pirop"("ne", "$I11", -1, $P106)
.annotate 'line', 418
    set $P105, $P1290
    unless_null $P105, vivify_893
    new $P105, "Undef"
  vivify_893:
    set $P106, $P1293
    unless_null $P106, vivify_894
    new $P106, "Undef"
  vivify_894:
    $P105."push_pirop"("goto", $P106)
.annotate 'line', 419
    set $P105, $P1290
    unless_null $P105, vivify_895
    new $P105, "Undef"
  vivify_895:
    set $P106, $P1292
    unless_null $P106, vivify_896
    new $P106, "Undef"
  vivify_896:
    $P105."push"($P106)
.annotate 'line', 420
    set $P105, $P1290
    unless_null $P105, vivify_897
    new $P105, "Undef"
  vivify_897:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_898
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_899
    die "Contextual %*REG not found"
  vivify_899:
  vivify_898:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_900
    new $P109, "Undef"
  vivify_900:
    $P105."push_pirop"("inc", $P109)
.annotate 'line', 421
    set $P105, $P1290
    unless_null $P105, vivify_901
    new $P105, "Undef"
  vivify_901:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_902
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_903
    die "Contextual %*REG not found"
  vivify_903:
  vivify_902:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_904
    new $P109, "Undef"
  vivify_904:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_905
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_906
    die "Contextual %*REG not found"
  vivify_906:
  vivify_905:
    set $P113, $P112["eos"]
    unless_null $P113, vivify_907
    new $P113, "Undef"
  vivify_907:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_908
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_909
    die "Contextual %*REG not found"
  vivify_909:
  vivify_908:
    set $P117, $P116["fail"]
    unless_null $P117, vivify_910
    new $P117, "Undef"
  vivify_910:
    $P105."push_pirop"("gt", $P109, $P113, $P117)
.annotate 'line', 422
    set $P105, $P1290
    unless_null $P105, vivify_911
    new $P105, "Undef"
  vivify_911:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_912
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_913
    die "Contextual %*REG not found"
  vivify_913:
  vivify_912:
    set $P109, $P108["cur"]
    unless_null $P109, vivify_914
    new $P109, "Undef"
  vivify_914:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_915
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_916
    die "Contextual %*REG not found"
  vivify_916:
  vivify_915:
    set $P113, $P112["curclass"]
    unless_null $P113, vivify_917
    new $P113, "Undef"
  vivify_917:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_918
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_919
    die "Contextual %*REG not found"
  vivify_919:
  vivify_918:
    set $P117, $P116["pos"]
    unless_null $P117, vivify_920
    new $P117, "Undef"
  vivify_920:
    $P105."push_pirop"("repr_bind_attr_int", $P109, $P113, "\"$!from\"", $P117)
.annotate 'line', 423
    set $P105, $P1290
    unless_null $P105, vivify_921
    new $P105, "Undef"
  vivify_921:
    set $P106, $P1293
    unless_null $P106, vivify_922
    new $P106, "Undef"
  vivify_922:
    $P105."push"($P106)
.annotate 'line', 424
    set $P105, param_1288
    nqp_decontainerize $P106, $P105
    set $P107, $P1290
    unless_null $P107, vivify_923
    new $P107, "Undef"
  vivify_923:
    set $P108, $P1292
    unless_null $P108, vivify_924
    new $P108, "Undef"
  vivify_924:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_925
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_926
    die "Contextual %*REG not found"
  vivify_926:
  vivify_925:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_927
    new $P112, "Undef"
  vivify_927:
    $P106."regex_mark"($P107, $P108, $P112, 0)
.annotate 'line', 425
    set $P105, $P1290
    unless_null $P105, vivify_928
    new $P105, "Undef"
  vivify_928:
    set $P106, $P1294
    unless_null $P106, vivify_929
    new $P106, "Undef"
  vivify_929:
    $P105."push"($P106)
.annotate 'line', 410
    set $P105, $P1290
    unless_null $P105, vivify_930
    new $P105, "Undef"
  vivify_930:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "subcapture" :anon :subid("40_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1296
    .param pmc param_1297
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 429
    .lex "self", param_1296
    .lex "$node", param_1297
.annotate 'line', 430
    new $P100, "Undef"
    set $P1298, $P100
    .lex "$ops", $P1298
.annotate 'line', 431
    new $P101, "Undef"
    set $P1299, $P101
    .lex "$prefix", $P1299
.annotate 'line', 432
    new $P102, "Undef"
    set $P1300, $P102
    .lex "$donelabel", $P1300
.annotate 'line', 433
    new $P103, "Undef"
    set $P1301, $P103
    .lex "$faillabel", $P1301
.annotate 'line', 434
    new $P104, "Undef"
    set $P1302, $P104
    .lex "$name", $P1302
.annotate 'line', 430
    set $P105, param_1296
    nqp_decontainerize $P106, $P105
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_931
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_932
    die "Contextual %*REG not found"
  vivify_932:
  vivify_931:
    set $P110, $P109["cur"]
    unless_null $P110, vivify_933
    new $P110, "Undef"
  vivify_933:
    $P111 = $P106."post_new"("Ops", $P110 :named("result"))
    set $P1298, $P111
.annotate 'line', 431
    set $P105, param_1296
    nqp_decontainerize $P106, $P105
    $P107 = $P106."unique"("rxcap")
    set $P1299, $P107
.annotate 'line', 432
    set $P105, param_1296
    nqp_decontainerize $P106, $P105
    set $P107, $P1299
    unless_null $P107, vivify_934
    new $P107, "Undef"
  vivify_934:
    concat $P108, $P107, "_done"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1300, $P109
.annotate 'line', 433
    set $P105, param_1296
    nqp_decontainerize $P106, $P105
    set $P107, $P1299
    unless_null $P107, vivify_935
    new $P107, "Undef"
  vivify_935:
    concat $P108, $P107, "_fail"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1301, $P109
.annotate 'line', 434
    find_dynamic_lex $P107, "$*PASTCOMPILER"
    unless_null $P107, vivify_936
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["$PASTCOMPILER"]
    unless_null $P107, vivify_937
    die "Contextual $*PASTCOMPILER not found"
  vivify_937:
  vivify_936:
    set $P108, param_1297
    unless_null $P108, vivify_938
    new $P108, "Undef"
  vivify_938:
    $P109 = $P108."name"()
    $P110 = $P107."as_post"($P109, "*" :named("rtype"))
    set $P1302, $P110
.annotate 'line', 435
    set $P105, param_1296
    nqp_decontainerize $P106, $P105
    set $P107, $P1298
    unless_null $P107, vivify_939
    new $P107, "Undef"
  vivify_939:
    set $P108, $P1301
    unless_null $P108, vivify_940
    new $P108, "Undef"
  vivify_940:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_941
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_942
    die "Contextual %*REG not found"
  vivify_942:
  vivify_941:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_943
    new $P112, "Undef"
  vivify_943:
    $P106."regex_mark"($P107, $P108, $P112, 0)
.annotate 'line', 436
    set $P105, $P1298
    unless_null $P105, vivify_944
    new $P105, "Undef"
  vivify_944:
    set $P106, param_1296
    nqp_decontainerize $P107, $P106
    set $P1303, param_1297
    unless_null $P1303, vivify_945
    $P1303 = root_new ['parrot';'ResizablePMCArray']
  vivify_945:
    set $P108, $P1303[0]
    unless_null $P108, vivify_946
    new $P108, "Undef"
  vivify_946:
    $P109 = $P107."regex_post"($P108)
    $P105."push"($P109)
.annotate 'line', 437
    set $P105, param_1296
    nqp_decontainerize $P106, $P105
    set $P107, $P1298
    unless_null $P107, vivify_947
    new $P107, "Undef"
  vivify_947:
    set $P108, $P1301
    unless_null $P108, vivify_948
    new $P108, "Undef"
  vivify_948:
    $P106."regex_peek"($P107, $P108, "$I11")
.annotate 'line', 438
    set $P105, $P1298
    unless_null $P105, vivify_949
    new $P105, "Undef"
  vivify_949:
    set $P106, $P1302
    unless_null $P106, vivify_950
    new $P106, "Undef"
  vivify_950:
    $P105."push"($P106)
.annotate 'line', 439
    set $P105, $P1298
    unless_null $P105, vivify_951
    new $P105, "Undef"
  vivify_951:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_952
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_953
    die "Contextual %*REG not found"
  vivify_953:
  vivify_952:
    set $P109, $P108["cur"]
    unless_null $P109, vivify_954
    new $P109, "Undef"
  vivify_954:
    $P105."push_pirop"("callmethod", "\"!cursor_start_subcapture\"", $P109, "$I11", "$P11" :named("result"))
.annotate 'line', 440
    set $P105, $P1298
    unless_null $P105, vivify_955
    new $P105, "Undef"
  vivify_955:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_956
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_957
    die "Contextual %*REG not found"
  vivify_957:
  vivify_956:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_958
    new $P109, "Undef"
  vivify_958:
    $P105."push_pirop"("callmethod", "\"!cursor_pass\"", "$P11", $P109)
.annotate 'line', 441
    set $P105, $P1298
    unless_null $P105, vivify_959
    new $P105, "Undef"
  vivify_959:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_960
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_961
    die "Contextual %*REG not found"
  vivify_961:
  vivify_960:
    set $P109, $P108["cur"]
    unless_null $P109, vivify_962
    new $P109, "Undef"
  vivify_962:
    set $P110, $P1302
    unless_null $P110, vivify_963
    new $P110, "Undef"
  vivify_963:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_964
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_965
    die "Contextual %*REG not found"
  vivify_965:
  vivify_964:
    set $P114, $P113["cstack"]
    unless_null $P114, vivify_966
    new $P114, "Undef"
  vivify_966:
    $P105."push_pirop"("callmethod", "\"!cursor_capture\"", $P109, "$P11", $P110, $P114 :named("result"))
.annotate 'line', 443
    set $P105, $P1298
    unless_null $P105, vivify_967
    new $P105, "Undef"
  vivify_967:
    set $P106, $P1300
    unless_null $P106, vivify_968
    new $P106, "Undef"
  vivify_968:
    $P105."push_pirop"("goto", $P106)
.annotate 'line', 444
    set $P105, $P1298
    unless_null $P105, vivify_969
    new $P105, "Undef"
  vivify_969:
    set $P106, $P1301
    unless_null $P106, vivify_970
    new $P106, "Undef"
  vivify_970:
    $P105."push"($P106)
.annotate 'line', 445
    set $P105, $P1298
    unless_null $P105, vivify_971
    new $P105, "Undef"
  vivify_971:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_972
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_973
    die "Contextual %*REG not found"
  vivify_973:
  vivify_972:
    set $P109, $P108["fail"]
    unless_null $P109, vivify_974
    new $P109, "Undef"
  vivify_974:
    $P105."push_pirop"("goto", $P109)
.annotate 'line', 446
    set $P105, $P1298
    unless_null $P105, vivify_975
    new $P105, "Undef"
  vivify_975:
    set $P106, $P1300
    unless_null $P106, vivify_976
    new $P106, "Undef"
  vivify_976:
    $P105."push"($P106)
.annotate 'line', 429
    set $P105, $P1298
    unless_null $P105, vivify_977
    new $P105, "Undef"
  vivify_977:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "subrule" :anon :subid("41_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1305
    .param pmc param_1306
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 450
    .const 'Sub' $P1334 = "57_1338064445.054" 
    capture_lex $P1334
    .lex "self", param_1305
    .lex "$node", param_1306
.annotate 'line', 451
    new $P100, "Undef"
    set $P1307, $P100
    .lex "$ops", $P1307
.annotate 'line', 452
    new $P101, "Undef"
    set $P1308, $P101
    .lex "$name", $P1308
.annotate 'line', 453
    new $P102, "Undef"
    set $P1309, $P102
    .lex "$subtype", $P1309
.annotate 'line', 454
    new $P103, "Undef"
    set $P1310, $P103
    .lex "$cpn", $P1310
.annotate 'line', 455
    $P1312 = root_new ['parrot';'ResizablePMCArray']
    set $P1311, $P1312
    .lex "@pargs", $P1311
.annotate 'line', 456
    $P1314 = root_new ['parrot';'ResizablePMCArray']
    set $P1313, $P1314
    .lex "@nargs", $P1313
.annotate 'line', 457
    new $P104, "Undef"
    set $P1315, $P104
    .lex "$subpost", $P1315
.annotate 'line', 458
    new $P105, "Undef"
    set $P1316, $P105
    .lex "$testop", $P1316
.annotate 'line', 459
    new $P106, "Undef"
    set $P1317, $P106
    .lex "$captured", $P1317
.annotate 'line', 451
    set $P107, param_1305
    nqp_decontainerize $P108, $P107
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_978
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_979
    die "Contextual %*REG not found"
  vivify_979:
  vivify_978:
    set $P112, $P111["cur"]
    unless_null $P112, vivify_980
    new $P112, "Undef"
  vivify_980:
    $P113 = $P108."post_new"("Ops", $P112 :named("result"))
    set $P1307, $P113
.annotate 'line', 452
    find_dynamic_lex $P109, "$*PASTCOMPILER"
    unless_null $P109, vivify_981
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["$PASTCOMPILER"]
    unless_null $P109, vivify_982
    die "Contextual $*PASTCOMPILER not found"
  vivify_982:
  vivify_981:
    set $P110, param_1306
    unless_null $P110, vivify_983
    new $P110, "Undef"
  vivify_983:
    $P111 = $P110."name"()
    $P112 = $P109."as_post"($P111, "*" :named("rtype"))
    set $P1308, $P112
.annotate 'line', 453
    set $P107, param_1306
    unless_null $P107, vivify_984
    new $P107, "Undef"
  vivify_984:
    $P108 = $P107."subtype"()
    set $P1309, $P108
.annotate 'line', 454
    set $P107, param_1305
    nqp_decontainerize $P108, $P107
    set $P1318, param_1306
    unless_null $P1318, vivify_985
    $P1318 = root_new ['parrot';'ResizablePMCArray']
  vivify_985:
    set $P109, $P1318[0]
    unless_null $P109, vivify_986
    new $P109, "Undef"
  vivify_986:
    $P110 = $P108."post_children"($P109)
    set $P1310, $P110
.annotate 'line', 455
    set $P1320, $P1310
    unless_null $P1320, vivify_987
    $P1320 = root_new ['parrot';'ResizablePMCArray']
  vivify_987:
    set $P107, $P1320[1]
    unless_null $P107, vivify_988
    new $P107, "Undef"
  vivify_988:
    set $P1319, $P107
    defined $I1322, $P1319
    if $I1322, default_1321
    new $P108, "ResizablePMCArray"
    set $P1319, $P108
  default_1321:
    set $P1311, $P1319
.annotate 'line', 456
    set $P1324, $P1310
    unless_null $P1324, vivify_989
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_989:
    set $P107, $P1324[2]
    unless_null $P107, vivify_990
    new $P107, "Undef"
  vivify_990:
    set $P1323, $P107
    defined $I1326, $P1323
    if $I1326, default_1325
    new $P108, "ResizablePMCArray"
    set $P1323, $P108
  default_1325:
    set $P1313, $P1323
.annotate 'line', 457
    set $P1327, $P1311
    unless_null $P1327, vivify_991
    $P1327 = root_new ['parrot';'ResizablePMCArray']
  vivify_991:
    shift $P107, $P1327
    set $P1315, $P107
.annotate 'line', 458
    set $P108, param_1306
    unless_null $P108, vivify_992
    new $P108, "Undef"
  vivify_992:
    $P109 = $P108."negate"()
    if $P109, if_1328
    new $P111, "String"
    assign $P111, "lt"
    set $P107, $P111
    goto if_1328_end
  if_1328:
    new $P110, "String"
    assign $P110, "ge"
    set $P107, $P110
  if_1328_end:
    set $P1316, $P107
.annotate 'line', 459
    new $P107, "Float"
    assign $P107, 0
    set $P1317, $P107
.annotate 'line', 460
    set $P107, $P1307
    unless_null $P107, vivify_993
    new $P107, "Undef"
  vivify_993:
    set $P1329, $P1310
    unless_null $P1329, vivify_994
    $P1329 = root_new ['parrot';'ResizablePMCArray']
  vivify_994:
    set $P108, $P1329[0]
    unless_null $P108, vivify_995
    new $P108, "Undef"
  vivify_995:
    $P107."push"($P108)
.annotate 'line', 461
    set $P107, $P1307
    unless_null $P107, vivify_996
    new $P107, "Undef"
  vivify_996:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_997
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_998
    die "Contextual %*REG not found"
  vivify_998:
  vivify_997:
    set $P111, $P110["cur"]
    unless_null $P111, vivify_999
    new $P111, "Undef"
  vivify_999:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_1000
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_1001
    die "Contextual %*REG not found"
  vivify_1001:
  vivify_1000:
    set $P115, $P114["curclass"]
    unless_null $P115, vivify_1002
    new $P115, "Undef"
  vivify_1002:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1003
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1004
    die "Contextual %*REG not found"
  vivify_1004:
  vivify_1003:
    set $P119, $P118["pos"]
    unless_null $P119, vivify_1005
    new $P119, "Undef"
  vivify_1005:
    $P107."push_pirop"("repr_bind_attr_int", $P111, $P115, "\"$!pos\"", $P119)
.annotate 'line', 462
    set $P107, $P1307
    unless_null $P107, vivify_1006
    new $P107, "Undef"
  vivify_1006:
    set $P108, $P1315
    unless_null $P108, vivify_1007
    new $P108, "Undef"
  vivify_1007:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_1008
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_1009
    die "Contextual %*REG not found"
  vivify_1009:
  vivify_1008:
    set $P112, $P111["cur"]
    unless_null $P112, vivify_1010
    new $P112, "Undef"
  vivify_1010:
    set $P1330, $P1311
    unless_null $P1330, vivify_1011
    $P1330 = root_new ['parrot';'ResizablePMCArray']
  vivify_1011:
    set $P1331, $P1313
    unless_null $P1331, vivify_1012
    $P1331 = root_new ['parrot';'ResizablePMCArray']
  vivify_1012:
    $P107."push_pirop"("callmethod", $P108, $P112, $P1330 :flat, $P1331 :flat, "$P11" :named("result"))
.annotate 'line', 463
    set $P107, $P1307
    unless_null $P107, vivify_1013
    new $P107, "Undef"
  vivify_1013:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_1014
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_1015
    die "Contextual %*REG not found"
  vivify_1015:
  vivify_1014:
    set $P111, $P110["curclass"]
    unless_null $P111, vivify_1016
    new $P111, "Undef"
  vivify_1016:
    $P107."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P111, "\"$!pos\"")
.annotate 'line', 464
    set $P107, $P1307
    unless_null $P107, vivify_1017
    new $P107, "Undef"
  vivify_1017:
    set $P108, $P1316
    unless_null $P108, vivify_1018
    new $P108, "Undef"
  vivify_1018:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_1019
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_1020
    die "Contextual %*REG not found"
  vivify_1020:
  vivify_1019:
    set $P112, $P111["fail"]
    unless_null $P112, vivify_1021
    new $P112, "Undef"
  vivify_1021:
    $P107."push_pirop"($P108, "$I11", "0", $P112)
.annotate 'line', 465
    set $P107, $P1309
    unless_null $P107, vivify_1022
    new $P107, "Undef"
  vivify_1022:
    set $S100, $P107
    isne $I100, $S100, "zerowidth"
    unless $I100, if_1332_end
    .const 'Sub' $P1334 = "57_1338064445.054" 
    capture_lex $P1334
    $P1334()
  if_1332_end:
.annotate 'line', 501
    set $P108, $P1317
    unless_null $P108, vivify_1088
    new $P108, "Undef"
  vivify_1088:
    isfalse $I100, $P108
    if $I100, if_1344
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1344_end
  if_1344:
    set $P109, $P1309
    unless_null $P109, vivify_1089
    new $P109, "Undef"
  vivify_1089:
    set $S100, $P109
    iseq $I101, $S100, "capture"
    new $P107, 'Integer'
    set $P107, $I101
  if_1344_end:
    unless $P107, if_1343_end
.annotate 'line', 499
    set $P110, $P1307
    unless_null $P110, vivify_1090
    new $P110, "Undef"
  vivify_1090:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_1091
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_1092
    die "Contextual %*REG not found"
  vivify_1092:
  vivify_1091:
    set $P114, $P113["cur"]
    unless_null $P114, vivify_1093
    new $P114, "Undef"
  vivify_1093:
    set $P115, $P1308
    unless_null $P115, vivify_1094
    new $P115, "Undef"
  vivify_1094:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1095
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1096
    die "Contextual %*REG not found"
  vivify_1096:
  vivify_1095:
    set $P119, $P118["cstack"]
    unless_null $P119, vivify_1097
    new $P119, "Undef"
  vivify_1097:
    $P110."push_pirop"("callmethod", "\"!cursor_capture\"", $P114, "$P11", $P115, $P119 :named("result"))
  if_1343_end:
.annotate 'line', 503
    set $P107, $P1309
    unless_null $P107, vivify_1098
    new $P107, "Undef"
  vivify_1098:
    set $S100, $P107
    iseq $I100, $S100, "zerowidth"
    if $I100, unless_1345_end
.annotate 'line', 502
    set $P108, $P1307
    unless_null $P108, vivify_1099
    new $P108, "Undef"
  vivify_1099:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_1100
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_1101
    die "Contextual %*REG not found"
  vivify_1101:
  vivify_1100:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_1102
    new $P112, "Undef"
  vivify_1102:
    find_dynamic_lex $P115, "%*REG"
    unless_null $P115, vivify_1103
    get_hll_global $P113, "GLOBAL"
    get_who $P114, $P113
    set $P115, $P114["%REG"]
    unless_null $P115, vivify_1104
    die "Contextual %*REG not found"
  vivify_1104:
  vivify_1103:
    set $P116, $P115["curclass"]
    unless_null $P116, vivify_1105
    new $P116, "Undef"
  vivify_1105:
    $P108."push_pirop"("repr_get_attr_int", $P112, "$P11", $P116, "\"$!pos\"")
  unless_1345_end:
.annotate 'line', 450
    set $P107, $P1307
    unless_null $P107, vivify_1106
    new $P107, "Undef"
  vivify_1106:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1333"  :anon :subid("57_1338064445.054") :outer("41_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 465
    .const 'Sub' $P1340 = "58_1338064445.054" 
    capture_lex $P1340
.annotate 'line', 466
    new $P108, "Undef"
    set $P1335, $P108
    .lex "$rxname", $P1335
.annotate 'line', 467
    new $P109, "Undef"
    set $P1336, $P109
    .lex "$passlabel", $P1336
.annotate 'line', 466
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    $P112 = $P111."unique"("rxsubrule")
    set $P1335, $P112
.annotate 'line', 467
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    set $P112, $P1335
    unless_null $P112, vivify_1023
    new $P112, "Undef"
  vivify_1023:
    concat $P113, $P112, "_pass"
    $P114 = $P111."post_new"("Label", $P113 :named("result"))
    set $P1336, $P114
.annotate 'line', 468
    find_lex $P111, "$node"
    unless_null $P111, vivify_1024
    new $P111, "Undef"
  vivify_1024:
    $S101 = $P111."backtrack"()
    iseq $I101, $S101, "r"
    if $I101, if_1337
.annotate 'line', 474
    .const 'Sub' $P1340 = "58_1338064445.054" 
    capture_lex $P1340
    $P114 = $P1340()
    set $P110, $P114
.annotate 'line', 468
    goto if_1337_end
  if_1337:
.annotate 'line', 469
    find_lex $P113, "$subtype"
    unless_null $P113, vivify_1083
    new $P113, "Undef"
  vivify_1083:
    set $S102, $P113
    iseq $I102, $S102, "method"
    unless $I102, unless_1338
    new $P112, 'Integer'
    set $P112, $I102
    goto unless_1338_end
  unless_1338:
.annotate 'line', 470
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$ops"
    unless_null $P116, vivify_1084
    new $P116, "Undef"
  vivify_1084:
    set $P117, $P1336
    unless_null $P117, vivify_1085
    new $P117, "Undef"
  vivify_1085:
    $P115."regex_mark"($P116, $P117, -1, 0)
.annotate 'line', 471
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1086
    new $P114, "Undef"
  vivify_1086:
    set $P115, $P1336
    unless_null $P115, vivify_1087
    new $P115, "Undef"
  vivify_1087:
    $P116 = $P114."push"($P115)
.annotate 'line', 469
    set $P112, $P116
  unless_1338_end:
.annotate 'line', 468
    set $P110, $P112
  if_1337_end:
.annotate 'line', 465
    .return ($P110)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1339"  :anon :subid("58_1338064445.054") :outer("57_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 475
    new $P113, "Undef"
    set $P1341, $P113
    .lex "$backlabel", $P1341
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$rxname"
    unless_null $P116, vivify_1025
    new $P116, "Undef"
  vivify_1025:
    concat $P117, $P116, "_back"
    $P118 = $P115."post_new"("Label", $P117 :named("result"))
    set $P1341, $P118
.annotate 'line', 476
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1026
    new $P114, "Undef"
  vivify_1026:
    find_lex $P115, "$passlabel"
    unless_null $P115, vivify_1027
    new $P115, "Undef"
  vivify_1027:
    $P114."push_pirop"("goto", $P115)
.annotate 'line', 477
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1028
    new $P114, "Undef"
  vivify_1028:
    set $P115, $P1341
    unless_null $P115, vivify_1029
    new $P115, "Undef"
  vivify_1029:
    $P114."push"($P115)
.annotate 'line', 478
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1030
    new $P114, "Undef"
  vivify_1030:
    $P114."push_pirop"("callmethod", "\"!cursor_next\"", "$P11", "$P11" :named("result"))
.annotate 'line', 479
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1031
    new $P114, "Undef"
  vivify_1031:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1032
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1033
    die "Contextual %*REG not found"
  vivify_1033:
  vivify_1032:
    set $P118, $P117["curclass"]
    unless_null $P118, vivify_1034
    new $P118, "Undef"
  vivify_1034:
    $P114."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P118, "\"$!pos\"")
.annotate 'line', 480
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1035
    new $P114, "Undef"
  vivify_1035:
    find_lex $P115, "$testop"
    unless_null $P115, vivify_1036
    new $P115, "Undef"
  vivify_1036:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1037
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1038
    die "Contextual %*REG not found"
  vivify_1038:
  vivify_1037:
    set $P119, $P118["fail"]
    unless_null $P119, vivify_1039
    new $P119, "Undef"
  vivify_1039:
    $P114."push_pirop"($P115, "$I11", "0", $P119)
.annotate 'line', 481
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1040
    new $P114, "Undef"
  vivify_1040:
    find_lex $P115, "$passlabel"
    unless_null $P115, vivify_1041
    new $P115, "Undef"
  vivify_1041:
    $P114."push"($P115)
.annotate 'line', 482
    find_lex $P114, "$subtype"
    unless_null $P114, vivify_1042
    new $P114, "Undef"
  vivify_1042:
    set $S102, $P114
    iseq $I102, $S102, "capture"
    if $I102, if_1342
.annotate 'line', 488
    find_lex $P115, "$ops"
    unless_null $P115, vivify_1043
    new $P115, "Undef"
  vivify_1043:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1044
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1045
    die "Contextual %*REG not found"
  vivify_1045:
  vivify_1044:
    set $P119, $P118["cur"]
    unless_null $P119, vivify_1046
    new $P119, "Undef"
  vivify_1046:
    find_dynamic_lex $P122, "%*REG"
    unless_null $P122, vivify_1047
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%REG"]
    unless_null $P122, vivify_1048
    die "Contextual %*REG not found"
  vivify_1048:
  vivify_1047:
    set $P123, $P122["cstack"]
    unless_null $P123, vivify_1049
    new $P123, "Undef"
  vivify_1049:
    $P115."push_pirop"("callmethod", "\"!cursor_push_cstack\"", $P119, "$P11", $P123 :named("result"))
.annotate 'line', 487
    goto if_1342_end
  if_1342:
.annotate 'line', 483
    find_lex $P115, "$ops"
    unless_null $P115, vivify_1050
    new $P115, "Undef"
  vivify_1050:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1051
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1052
    die "Contextual %*REG not found"
  vivify_1052:
  vivify_1051:
    set $P119, $P118["cur"]
    unless_null $P119, vivify_1053
    new $P119, "Undef"
  vivify_1053:
    find_lex $P120, "$name"
    unless_null $P120, vivify_1054
    new $P120, "Undef"
  vivify_1054:
    find_dynamic_lex $P123, "%*REG"
    unless_null $P123, vivify_1055
    get_hll_global $P121, "GLOBAL"
    get_who $P122, $P121
    set $P123, $P122["%REG"]
    unless_null $P123, vivify_1056
    die "Contextual %*REG not found"
  vivify_1056:
  vivify_1055:
    set $P124, $P123["cstack"]
    unless_null $P124, vivify_1057
    new $P124, "Undef"
  vivify_1057:
    $P115."push_pirop"("callmethod", "\"!cursor_capture\"", $P119, "$P11", $P120, $P124 :named("result"))
.annotate 'line', 485
    new $P115, "Float"
    assign $P115, 1
    store_lex "$captured", $P115
  if_1342_end:
.annotate 'line', 491
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1058
    new $P114, "Undef"
  vivify_1058:
    set $P115, $P1341
    unless_null $P115, vivify_1059
    new $P115, "Undef"
  vivify_1059:
    $P114."push_pirop"("set_addr", "$I11", $P115)
.annotate 'line', 492
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1060
    new $P114, "Undef"
  vivify_1060:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1061
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1062
    die "Contextual %*REG not found"
  vivify_1062:
  vivify_1061:
    set $P118, $P117["bstack"]
    unless_null $P118, vivify_1063
    new $P118, "Undef"
  vivify_1063:
    $P114."push_pirop"("push", $P118, "$I11")
.annotate 'line', 493
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1064
    new $P114, "Undef"
  vivify_1064:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1065
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1066
    die "Contextual %*REG not found"
  vivify_1066:
  vivify_1065:
    set $P118, $P117["bstack"]
    unless_null $P118, vivify_1067
    new $P118, "Undef"
  vivify_1067:
    $P114."push_pirop"("push", $P118, 0)
.annotate 'line', 494
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1068
    new $P114, "Undef"
  vivify_1068:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1069
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1070
    die "Contextual %*REG not found"
  vivify_1070:
  vivify_1069:
    set $P118, $P117["bstack"]
    unless_null $P118, vivify_1071
    new $P118, "Undef"
  vivify_1071:
    find_dynamic_lex $P121, "%*REG"
    unless_null $P121, vivify_1072
    get_hll_global $P119, "GLOBAL"
    get_who $P120, $P119
    set $P121, $P120["%REG"]
    unless_null $P121, vivify_1073
    die "Contextual %*REG not found"
  vivify_1073:
  vivify_1072:
    set $P122, $P121["pos"]
    unless_null $P122, vivify_1074
    new $P122, "Undef"
  vivify_1074:
    $P114."push_pirop"("push", $P118, $P122)
.annotate 'line', 495
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1075
    new $P114, "Undef"
  vivify_1075:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1076
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1077
    die "Contextual %*REG not found"
  vivify_1077:
  vivify_1076:
    set $P118, $P117["cstack"]
    unless_null $P118, vivify_1078
    new $P118, "Undef"
  vivify_1078:
    $P114."push_pirop"("elements", "$I11", $P118)
.annotate 'line', 496
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1079
    new $P114, "Undef"
  vivify_1079:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1080
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1081
    die "Contextual %*REG not found"
  vivify_1081:
  vivify_1080:
    set $P118, $P117["bstack"]
    unless_null $P118, vivify_1082
    new $P118, "Undef"
  vivify_1082:
    $P119 = $P114."push_pirop"("push", $P118, "$I11")
.annotate 'line', 474
    .return ($P119)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "uniprop" :anon :subid("42_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1347
    .param pmc param_1348
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 507
    .lex "self", param_1347
    .lex "$node", param_1348
.annotate 'line', 508
    new $P100, "Undef"
    set $P1349, $P100
    .lex "$ops", $P1349
.annotate 'line', 509
    new $P101, "Undef"
    set $P1350, $P101
    .lex "$cmpop", $P1350
.annotate 'line', 508
    set $P102, param_1347
    nqp_decontainerize $P103, $P102
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_1107
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_1108
    die "Contextual %*REG not found"
  vivify_1108:
  vivify_1107:
    set $P107, $P106["cur"]
    unless_null $P107, vivify_1109
    new $P107, "Undef"
  vivify_1109:
    $P108 = $P103."post_new"("Ops", $P107 :named("result"))
    set $P1349, $P108
.annotate 'line', 509
    set $P103, param_1348
    unless_null $P103, vivify_1110
    new $P103, "Undef"
  vivify_1110:
    $P104 = $P103."negate"()
    if $P104, if_1351
    new $P106, "String"
    assign $P106, "eq"
    set $P102, $P106
    goto if_1351_end
  if_1351:
    new $P105, "String"
    assign $P105, "ne"
    set $P102, $P105
  if_1351_end:
    set $P1350, $P102
.annotate 'line', 510
    set $P102, $P1349
    unless_null $P102, vivify_1111
    new $P102, "Undef"
  vivify_1111:
    new $P103, "String"
    assign $P103, "\""
    set $P1352, param_1348
    unless_null $P1352, vivify_1112
    $P1352 = root_new ['parrot';'ResizablePMCArray']
  vivify_1112:
    set $P104, $P1352[0]
    unless_null $P104, vivify_1113
    new $P104, "Undef"
  vivify_1113:
    concat $P105, $P103, $P104
    concat $P106, $P105, "\""
    $P102."push_pirop"("assign", "$S10", $P106)
.annotate 'line', 511
    set $P102, $P1349
    unless_null $P102, vivify_1114
    new $P102, "Undef"
  vivify_1114:
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_1115
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_1116
    die "Contextual %*REG not found"
  vivify_1116:
  vivify_1115:
    set $P106, $P105["tgt"]
    unless_null $P106, vivify_1117
    new $P106, "Undef"
  vivify_1117:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_1118
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_1119
    die "Contextual %*REG not found"
  vivify_1119:
  vivify_1118:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_1120
    new $P110, "Undef"
  vivify_1120:
    $P102."push_pirop"("is_uprop", "$I11", "$S10", $P106, $P110)
.annotate 'line', 512
    set $P102, $P1349
    unless_null $P102, vivify_1121
    new $P102, "Undef"
  vivify_1121:
    set $P103, $P1350
    unless_null $P103, vivify_1122
    new $P103, "Undef"
  vivify_1122:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_1123
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_1124
    die "Contextual %*REG not found"
  vivify_1124:
  vivify_1123:
    set $P107, $P106["fail"]
    unless_null $P107, vivify_1125
    new $P107, "Undef"
  vivify_1125:
    $P102."push_pirop"($P103, "$I11", 0, $P107)
.annotate 'line', 513
    set $P102, param_1348
    unless_null $P102, vivify_1126
    new $P102, "Undef"
  vivify_1126:
    $S100 = $P102."subtype"()
    iseq $I100, $S100, "zerowidth"
    if $I100, unless_1353_end
    set $P103, $P1349
    unless_null $P103, vivify_1127
    new $P103, "Undef"
  vivify_1127:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_1128
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_1129
    die "Contextual %*REG not found"
  vivify_1129:
  vivify_1128:
    set $P107, $P106["pos"]
    unless_null $P107, vivify_1130
    new $P107, "Undef"
  vivify_1130:
    $P103."push_pirop"("inc", $P107)
  unless_1353_end:
.annotate 'line', 507
    set $P102, $P1349
    unless_null $P102, vivify_1131
    new $P102, "Undef"
  vivify_1131:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "ws" :anon :subid("43_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1355
    .param pmc param_1356
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 518
    .lex "self", param_1355
    .lex "$node", param_1356
    set $P100, param_1355
    nqp_decontainerize $P101, $P100
    set $P102, param_1356
    unless_null $P102, vivify_1132
    new $P102, "Undef"
  vivify_1132:
    $P103 = $P101."subrule"($P102)
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "regex_mark" :anon :subid("44_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1358
    .param pmc param_1359
    .param pmc param_1360
    .param pmc param_1361
    .param pmc param_1362
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 520
    .lex "self", param_1358
    .lex "$ops", param_1359
    .lex "$mark", param_1360
    .lex "$pos", param_1361
    .lex "$rep", param_1362
.annotate 'line', 521
    set $P100, param_1359
    unless_null $P100, vivify_1133
    new $P100, "Undef"
  vivify_1133:
    find_dynamic_lex $P103, "%*REG"
    unless_null $P103, vivify_1134
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%REG"]
    unless_null $P103, vivify_1135
    die "Contextual %*REG not found"
  vivify_1135:
  vivify_1134:
    set $P104, $P103["bstack"]
    unless_null $P104, vivify_1136
    new $P104, "Undef"
  vivify_1136:
    set $P105, param_1360
    unless_null $P105, vivify_1137
    new $P105, "Undef"
  vivify_1137:
    set $P106, param_1361
    unless_null $P106, vivify_1138
    new $P106, "Undef"
  vivify_1138:
    set $P107, param_1362
    unless_null $P107, vivify_1139
    new $P107, "Undef"
  vivify_1139:
    $P108 = $P100."push_pirop"("nqp_rxmark", $P104, $P105, $P106, $P107)
.annotate 'line', 520
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "regex_peek" :anon :subid("45_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1364
    .param pmc param_1365
    .param pmc param_1366
    .param pmc param_1367 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 524
    .const 'Sub' $P1370 = "59_1338064445.054" 
    capture_lex $P1370
    .lex "self", param_1364
    .lex "$ops", param_1365
    .lex "$mark", param_1366
    .lex "@regs", param_1367
.annotate 'line', 525
    set $P100, param_1365
    unless_null $P100, vivify_1140
    new $P100, "Undef"
  vivify_1140:
    find_dynamic_lex $P103, "%*REG"
    unless_null $P103, vivify_1141
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%REG"]
    unless_null $P103, vivify_1142
    die "Contextual %*REG not found"
  vivify_1142:
  vivify_1141:
    set $P104, $P103["bstack"]
    unless_null $P104, vivify_1143
    new $P104, "Undef"
  vivify_1143:
    set $P105, param_1366
    unless_null $P105, vivify_1144
    new $P105, "Undef"
  vivify_1144:
    $P100."push_pirop"("nqp_rxpeek", "$I19", $P104, $P105)
.annotate 'line', 526
    set $P1368, param_1367
    unless_null $P1368, vivify_1145
    $P1368 = root_new ['parrot';'ResizablePMCArray']
  vivify_1145:
    defined $I100, $P1368
    unless $I100, for_undef_1146
    iter $P100, $P1368
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1373_handler
    push_eh $P103
  loop1373_test:
    unless $P100, loop1373_done
    shift $P101, $P100
  loop1373_redo:
    .const 'Sub' $P1370 = "59_1338064445.054" 
    capture_lex $P1370
    $P1370($P101)
  loop1373_next:
    goto loop1373_test
  loop1373_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1373_next
    eq $P104, .CONTROL_LOOP_REDO, loop1373_redo
  loop1373_done:
    pop_eh 
  for_undef_1146:
.annotate 'line', 524
    .return ($P100)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1369"  :anon :subid("59_1338064445.054") :outer("45_1338064445.054")
    .param pmc param_1371
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 526
    .lex "$_", param_1371
.annotate 'line', 527
    find_lex $P102, "$ops"
    unless_null $P102, vivify_1147
    new $P102, "Undef"
  vivify_1147:
    $P102."push_pirop"("inc", "$I19")
.annotate 'line', 528
    find_lex $P103, "$_"
    unless_null $P103, vivify_1148
    new $P103, "Undef"
  vivify_1148:
    set $S100, $P103
    isne $I101, $S100, "*"
    if $I101, if_1372
    new $P102, 'Integer'
    set $P102, $I101
    goto if_1372_end
  if_1372:
    find_lex $P104, "$ops"
    unless_null $P104, vivify_1149
    new $P104, "Undef"
  vivify_1149:
    find_lex $P105, "$_"
    unless_null $P105, vivify_1150
    new $P105, "Undef"
  vivify_1150:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_1151
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_1152
    die "Contextual %*REG not found"
  vivify_1152:
  vivify_1151:
    set $P109, $P108["bstack"]
    unless_null $P109, vivify_1153
    new $P109, "Undef"
  vivify_1153:
    concat $P110, $P109, "[$I19]"
    $P111 = $P104."push_pirop"("set", $P105, $P110)
    set $P102, $P111
  if_1372_end:
.annotate 'line', 526
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "regex_commit" :anon :subid("46_1338064445.054") :outer("51_1338064445.054")
    .param pmc param_1375
    .param pmc param_1376
    .param pmc param_1377
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 532
    .lex "self", param_1375
    .lex "$ops", param_1376
    .lex "$mark", param_1377
.annotate 'line', 533
    set $P100, param_1376
    unless_null $P100, vivify_1154
    new $P100, "Undef"
  vivify_1154:
    find_dynamic_lex $P103, "%*REG"
    unless_null $P103, vivify_1155
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%REG"]
    unless_null $P103, vivify_1156
    die "Contextual %*REG not found"
  vivify_1156:
  vivify_1155:
    set $P104, $P103["bstack"]
    unless_null $P104, vivify_1157
    new $P104, "Undef"
  vivify_1157:
    set $P105, param_1377
    unless_null $P105, vivify_1158
    new $P105, "Undef"
  vivify_1158:
    $P106 = $P100."push_pirop"("nqp_rxcommit", $P104, $P105)
.annotate 'line', 532
    .return ($P106)
.end


.HLL "nqp"

.namespace []
.sub "_block1380" :load :anon :subid("60_1338064445.054")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1
    .const '' $P1382 = "47_1338064445.054" 
    $P106 = $P1382()
    .return ($P106)
.end

