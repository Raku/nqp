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
.sub "_block1000"  :anon :subid("47_1339198201.402")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 0
    .const 'Sub' $P1400 = "62_1339198201.402" 
    capture_lex $P1400
    .const 'Sub' $P1081 = "51_1339198201.402" 
    capture_lex $P1081
    .const 'Sub' $P1040 = "50_1339198201.402" 
    capture_lex $P1040
    .const 'Sub' $P1006 = "48_1339198201.402" 
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
    .const 'Sub' $P1006 = "48_1339198201.402" 
    capture_lex $P1006
    $P1006()
.annotate 'line', 29
    .const 'Sub' $P1040 = "50_1339198201.402" 
    capture_lex $P1040
    $P1040()
.annotate 'line', 48
    .const 'Sub' $P1081 = "51_1339198201.402" 
    capture_lex $P1081
    $P1081()
.annotate 'line', 1
    set $P101, param_1002
    if $P101, if_1395
    set $P100, $P101
    goto if_1395_end
  if_1395:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P102, "ModuleLoader"
    getinterp $P103
    set $P104, $P103["context"]
    $P105 = $P102."set_mainline_module"($P104)
    set $P100, $P105
  if_1395_end:
    .return ($P100)
    .const 'Sub' $P1397 = "61_1339198201.402" 
    .return ($P1397)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post63") :outer("47_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 0
    .const 'Sub' $P1001 = "47_1339198201.402" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P107
    get_class $P108, "LexPad"
    get_class $P109, "NQPLexPad"
    $P107."hll_map"($P108, $P109)
    nqp_create_sc $P110, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341"
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
    set $S100, "AQAAAEAAAAAFAAAAaAAAAAcAAACgAAAA9g4AADsAAACmEgAAAhsAAAAAAAACGwAAAAAAAAIbAAACGwAAAAAAAAQAAAAFAAAADgAAAA8AAABKAAAASwAAAJ8AAAAAAAAAoQAAAKIAAAABAAAAAAAAAAwAAAAKAQAAIwAAABoDAABEAAAAHAYAANMAAAAYDAAA1QAAAMAMAADbAAAAoA0AAAAAAAApAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAKgAAAAMAAAACAAEAAAAZAAAABgAAAAIAAQAAAEIAAAAHAAAAAgABAAAAUAAAAAgAAAACAAEAAABWAAAACQAAAAIAAQAAAFsAAAAKAAAAAgAAAAAAKwAAAAsAAAACAAAAAAAsAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAC0AAAAAAAAAAQAAAAoAAAAAAAoAEAAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAIAAAALAAAAEwAAAAIAAAAAAAIAAAAUAAAAAgACAAAADQAAABUAAAACAAIAAAAQAAAAFgAAAAIAAgAAABIAAAAXAAAAAgACAAAAEwAAABgAAAACAAIAAAAWAAAAGQAAAAIAAgAAABcAAAAaAAAAAgACAAAAGAAAABsAAAACAAAAAAADAAAAHAAAAAIAAAAAAAQAAAAdAAAAAgAAAAAABQAAAB4AAAACAAAAAAAGAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAAEAAAACAAIAAAAUAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAIAAAAUAAAACgACAAAAHwAAAAQAAAAAAAAAAAAgAAAABAABAAAAAAAAAAIAAAAAAAEAAAAKAAIAAAAhAAAABAACAAAAAAAAACIAAAAEAAMAAAAAAAAAAAAAAC4AAAAAAAAABwAAAAoAAAAAAAoAFgAAACQAAAACAAIAAAAIAAAAJQAAAAIAAgAAAAkAAAAmAAAAAgACAAAACgAAACcAAAACAAIAAAALAAAAKAAAAAIAAAAAAAIAAAApAAAAAgACAAAADQAAACoAAAACAAIAAAAQAAAAKwAAAAIAAgAAABIAAAAsAAAAAgACAAAAEwAAAC0AAAACAAIAAAAWAAAALgAAAAIAAgAAABcAAAAvAAAAAgACAAAAGAAAADAAAAACAAAAAAADAAAAMQAAAAIAAAAAAAQAAAAyAAAAAgAAAAAABQAAADMAAAACAAAAAAAGAAAANAAAAAIAAAAAAAgAAAA1AAAAAgAAAAAACQAAADYAAAACAAAAAAAKAAAANwAAAAIAAAAAAAsAAAA4AAAAAgAAAAAADAAAADkAAAACAAAAAAANAAAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAAcAAAACAAAAAAABAAAAAgACAAAAFAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAQAAAAAAAAAAgACAAAABwAAAAMAAgACAAAAFAAAAAoAAgAAADoAAAAEAAAAAAAAAAAAOwAAAAQAAQAAAAAAAAACAAAAAAABAAAACgACAAAAPAAAAAQAAgAAAAAAAAA9AAAABAADAAAAAAAAAAIAAAAAAAcAAAAKAAYAAAA+AAAABAAEAAAAAAAAAD8AAAAEAAUAAAAAAAAAQAAAAAQABgAAAAAAAABBAAAABAAHAAAAAAAAAEIAAAAEAAgAAAAAAAAAQwAAAAQACQAAAAAAAAAAAAAALwAAAAAAAAAOAAAACgAAAAAACgBNAAAARQAAAAIAAgAAAAgAAABGAAAAAgACAAAACQAAAEcAAAACAAIAAAAKAAAASAAAAAIAAgAAAAsAAABJAAAAAgADAAAAXwAAAEwAAAACAAIAAAANAAAATQAAAAIAAgAAABAAAABOAAAAAgACAAAAEgAAAE8AAAACAAIAAAATAAAAUAAAAAIAAwAAAGAAAABRAAAAAgADAAAAYQAAAFIAAAACAAMAAABiAAAAUwAAAAIAAwAAAGMAAABUAAAAAgADAAAAZAAAAFUAAAACAAMAAABlAAAAVgAAAAIAAwAAAGYAAABXAAAAAgADAAAAZwAAAFgAAAACAAMAAABoAAAAWQAAAAIAAwAAAGkAAABaAAAAAgADAAAAagAAAFsAAAACAAMAAABrAAAAXAAAAAIAAwAAAGwAAABdAAAAAgADAAAAbQAAAF4AAAACAAMAAABuAAAAXwAAAAIAAwAAAG8AAABgAAAAAgADAAAAcAAAAGEAAAACAAMAAABxAAAAYgAAAAIAAwAAAHIAAABjAAAAAgADAAAAcwAAAGQAAAACAAMAAAB0AAAAZQAAAAIAAwAAAHUAAABmAAAAAgADAAAAdgAAAGcAAAACAAMAAAB3AAAAaAAAAAIAAwAAAHgAAABpAAAAAgADAAAAeQAAAGoAAAACAAMAAAB6AAAAawAAAAIAAwAAAHsAAABsAAAAAgADAAAAfAAAAG0AAAACAAMAAAB9AAAAbgAAAAIAAwAAAH4AAABvAAAAAgADAAAAfwAAAHAAAAACAAMAAACAAAAAcQAAAAIAAwAAAIEAAAByAAAAAgADAAAAggAAAHMAAAACAAMAAACDAAAAdAAAAAIAAwAAAIQAAAB1AAAAAgADAAAAhQAAAHYAAAACAAMAAACGAAAAdwAAAAIAAwAAAIcAAAB4AAAAAgADAAAAiAAAAHkAAAACAAMAAACJAAAAegAAAAIAAAAAAA8AAAB7AAAAAgAAAAAAEAAAAHwAAAACAAAAAAARAAAAfQAAAAIAAAAAABIAAAB+AAAAAgAAAAAAEwAAAH8AAAACAAAAAAAUAAAAgAAAAAIAAAAAABUAAACBAAAAAgAAAAAAFgAAAIIAAAACAAAAAAAXAAAAgwAAAAIAAAAAABgAAACEAAAAAgAAAAAAGQAAAIUAAAACAAAAAAAaAAAAhgAAAAIAAAAAABsAAACHAAAAAgAAAAAAHAAAAIgAAAACAAAAAAAdAAAAiQAAAAIAAAAAAB4AAACKAAAAAgAAAAAAHwAAAIsAAAACAAAAAAAgAAAAjAAAAAIAAAAAACEAAACNAAAAAgAAAAAAIgAAAI4AAAACAAAAAAAjAAAAjwAAAAIAAAAAACQAAACQAAAAAgAAAAAAJQAAAJEAAAACAAAAAAAmAAAAkgAAAAIAAAAAACcAAACTAAAAAgAAAAAAKAAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAAOAAAAAgADAAAAXgAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAMAAABeAAAACgALAAAAlAAAAAQAAAAAAAAAAACVAAAABAABAAAAAAAAAJYAAAAEAAIAAAAAAAAAlwAAAAQAAwAAAAAAAACYAAAABAAEAAAAAAAAAJkAAAAEAAUAAAAAAAAAmgAAAAQABgAAAAAAAACbAAAABAAHAAAAAAAAAJwAAAAEAAgAAAAAAAAAnQAAAAQACQAAAAAAAACeAAAABAAKAAAAAAAAAAIAAAAAAA4AAAADAAAAAAA4AAAAAAAAACoAAAAKAAEAAADUAAAAAgABAAAAAQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAqAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAACoAAAADAAAAAAA5AAAAAAAAACsAAAAKAAUAAADWAAAAAgADAAAAAQAAANcAAAACAAMAAAA8AAAA2AAAAAIAAwAAAF4AAADZAAAAAgADAAAA1AAAANoAAAACAAMAAACbAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAACsAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAKwAAAAMAAAAAADoAAAAAAAAALAAAAAoAAwAAANwAAAACAAAAAAABAAAA3QAAAAIAAAAAAAcAAADeAAAAAgAAAAAADgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAsAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAIAAAAFAAAAAAAAAAEAAAACAAAABQAAABAAAAABAAAAAgAAAAUAAAAgAAAAAQAAAAIAAAAFAAAAMAAAAAEAAAACAAAABQAAAEAAAAABAAAAAAAAAAIAAABQAAAAAAAAAAIAAAAFAAAAUAAAAAEAAAACAAAABQAAAGAAAAABAAAAAgAAAAUAAABwAAAAAQAAAAIAAAAFAAAAgAAAAAEAAAACAAAABQAAAJAAAAABAAAAAgAAAAUAAACgAAAAAQAAAAAAAAADAAAAsAAAAAAAAAACAAAABQAAALAAAAABAAAAAgAAAAUAAADAAAAAAQAAAAIAAAAFAAAA0AAAAAEAAAACAAAABQAAAOAAAAABAAAAAgAAAAUAAADwAAAAAQAAAAIAAAAFAAAAAAEAAAEAAAACAAAABQAAABABAAABAAAAAgAAAAUAAAAgAQAAAQAAAAIAAAAFAAAAMAEAAAEAAAACAAAABQAAAEABAAABAAAAAgAAAAUAAABQAQAAAQAAAAIAAAAFAAAAYAEAAAEAAAACAAAABQAAAHABAAABAAAAAgAAAAUAAACAAQAAAQAAAAIAAAAFAAAAkAEAAAEAAAACAAAABQAAAKABAAABAAAAAgAAAAUAAACwAQAAAQAAAAIAAAAFAAAAwAEAAAEAAAACAAAABQAAANABAAABAAAAAgAAAAUAAADgAQAAAQAAAAIAAAAFAAAA8AEAAAEAAAACAAAABQAAAAACAAABAAAAAgAAAAUAAAAQAgAAAQAAAAIAAAAFAAAAIAIAAAEAAAACAAAABQAAADACAAABAAAAAgAAAAUAAABAAgAAAQAAAAQAAAAAAAAAUAIAAAEAAAAAAAAABAAAAGACAAAAAAAAAAAAAAUAAABgAgAAAAAAAAAAAAAGAAAAYAIAAAAAAAAFAAAABgAAAGACAAABAAAABQAAAAYAAABeAwAAAQAAAAUAAAAGAAAAtgQAAAEAAAAFAAAACAAAAIwHAAABAAAABQAAAAgAAACgBwAAAQAAAAUAAAAIAAAAtAcAAAEAAAAFAAAACAAAAMgHAAABAAAABQAAAAgAAADcBwAAAQAAAAUAAAAIAAAA8AcAAAEAAAAFAAAACAAAAAQIAAABAAAABQAAAAgAAAAYCAAAAQAAAAQAAAAAAAAALAgAAAEAAAAEAAAAAAAAADwIAAABAAAABAAAAAAAAABMCAAAAQAAAAsAAAAAAAAAAAABAAEAAQALAAAAAAABAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAsAAAAAAAMAAAABAAEAAQALAAAAAAAEAAAAAQABAAEACwAAAAAABQAAAAEAAQABAAsAAAAAAAYAAAABAAEAAQALAAAAAAAHAAAAAQABAAEACwAAAAAACAAAAAEAAQABAAsAAAAAAAkAAAABAAEAAQALAAAAAAAKAAAAAQABAAEACwAAAAAACwAAAAEAAQABAAsAAAAAAAwAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAEAAQABAAsAAAAAAA8AAAABAAEAAQALAAAAAAAQAAAAAQABAAEACwAAAAAAEQAAAAEAAQABAAsAAAAAABIAAAABAAEAAQALAAAAAAATAAAAAQABAAEACwAAAAAAFAAAAAEAAQABAAsAAAAAABUAAAABAAEAAQALAAAAAAAWAAAAAQABAAEACwAAAAAAFwAAAAEAAQABAAsAAAAAABgAAAABAAEAAQALAAAAAAAZAAAAAQABAAEACwAAAAAAGgAAAAEAAQABAAsAAAAAABsAAAABAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEAAQABAAsAAAAAAB4AAAABAAEAAQALAAAAAAAfAAAAAQABAAEACwAAAAAAIAAAAAEAAQABAAsAAAAAACEAAAABAAEAAQALAAAAAAAiAAAAAQABAAEACwAAAAAAIwAAAAEAAQABAAsAAAAAACQAAAABAAEAAQCgAAAABwAAAAAACgAAAAAABgCjAAAACgACAAAApAAAAAIAAAAAADAAAAClAAAAAgAAAAAAMQAAAAoABQAAAKYAAAACAAAAAAACAAAApwAAAAIAAAAAAAMAAACoAAAAAgAAAAAABAAAAKkAAAACAAAAAAAFAAAAqgAAAAIAAAAAAAYAAAAHAAUAAAACAAAAAAACAAAAAgAAAAAAAwAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAEABwABAAAAAgACAAAAFAAAAAEAAQABAAEABAABAAAAAAAAAAcAAwAAAAIAAAAAAAEAAAACAAIAAAAUAAAAAgACAAAABwAAAAEAAQABAAEAAQAGAKsAAAAKAAYAAACsAAAAAgAAAAAAMgAAAK0AAAACAAAAAAAzAAAArgAAAAIAAAAAADQAAACvAAAAAgAAAAAANQAAALAAAAACAAAAAAA2AAAAsQAAAAIAAAAAADcAAAAKAAYAAACyAAAAAgAAAAAACAAAALMAAAACAAAAAAAJAAAAtAAAAAIAAAAAAAoAAAC1AAAAAgAAAAAACwAAALYAAAACAAAAAAAMAAAAtwAAAAIAAAAAAA0AAAAHAAYAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAABAAcAAQAAAAIAAAAAAAEAAAABAAEAAQABAAQAAQAAAAAAAAAHAAQAAAACAAAAAAAHAAAAAgAAAAAAAQAAAAIAAgAAABQAAAACAAIAAAAHAAAAAQABAAEAAQABAAYAuAAAAAEACgAaAAAAuQAAAAIAAAAAAA8AAAC6AAAAAgAAAAAAEAAAALsAAAACAAAAAAARAAAAvAAAAAIAAAAAABIAAAC9AAAAAgAAAAAAEwAAAL4AAAACAAAAAAAUAAAAvwAAAAIAAAAAABUAAADAAAAAAgAAAAAAFgAAAMEAAAACAAAAAAAXAAAAwgAAAAIAAAAAABgAAADDAAAAAgAAAAAAGQAAAMQAAAACAAAAAAAaAAAAxQAAAAIAAAAAABsAAADGAAAAAgAAAAAAHAAAAMcAAAACAAAAAAAdAAAAyAAAAAIAAAAAAB4AAADJAAAAAgAAAAAAHwAAAMoAAAACAAAAAAAgAAAAywAAAAIAAAAAACEAAADMAAAAAgAAAAAAIgAAAM0AAAACAAAAAAAjAAAAzgAAAAIAAAAAACQAAADPAAAAAgAAAAAAJQAAANAAAAACAAAAAAAmAAAA0QAAAAIAAAAAACcAAADSAAAAAgAAAAAAKAAAAAcAGgAAAAIAAAAAAA8AAAACAAAAAAAQAAAAAgAAAAAAEQAAAAIAAAAAABIAAAACAAAAAAATAAAAAgAAAAAAFAAAAAIAAAAAABUAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAIAAAAAACcAAAACAAAAAAAoAAAAAQAHAAEAAAACAAMAAABeAAAAAQABAAEAAQAEAAEAAAAAAAAABwADAAAAAgAAAAAADgAAAAIAAwAAAF4AAAACAAIAAAAHAAAAAQABAAEAAQABAAYA3wAAAAMABAAAAAAAAAAAAAMABgDgAAAAAwAEAAAAAAAAAAAAAwAGAOEAAAADAAQAAAAAAAAAAAADAAYA4gAAAAMABAAAAAAAAAAAAAMABgDjAAAAAwAEAAAAAAAAAAAAAwAGAOQAAAADAAQAAAAAAAAAAAADAAYA5QAAAAMABAAAAAAAAAAAAAMABgDmAAAAAwAEAAAAAAAAAAAAAwDnAAAABwAAAAAACgAAAAAA6AAAAAcAAAAAAAoAAAAAAOkAAAAHAAAAAAAKAAAAAAA="
    new $P111, "ResizableStringArray"
    .local pmc string_heap
    set string_heap, $P111
    null $S101
    push string_heap, $S101
    push string_heap, "P6opaque"
    push string_heap, "QRegex"
    push string_heap, "NQPCursorRole"
    push string_heap, "7E033569F34177212576FDA0294C745BCE7F0C4A-1339198192.75"
    push string_heap, "src\\stage2\\QRegex.nqp"
    push string_heap, "NQPMatch"
    push string_heap, "NQPCursor"
    push string_heap, "NQPRegexMethod"
    push string_heap, "NQPRegex"
    push string_heap, "HLL"
    push string_heap, "QAST"
    push string_heap, "P6opaque"
    push string_heap, "CREATE"
    push string_heap, "24B4A3E094679322365C61BEF17761CEF7D3E30E-1339198191.905"
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
    push string_heap, "54DD3D9E2816C7F360D1C1838968658EF1A82929-1339198196.075"
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
    push string_heap, "A3DB3273A2077DB914C15AD26D3E0F31B6D99854-1339198188.799"
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
    .const 'Sub' $P1400 = "62_1339198201.402" 
    capture_lex $P1400
    $P113 = $P1400()
    nqp_deserialize_sc $S100, cur_sc, string_heap, $P113
    .const 'LexInfo' $P1438 = "47_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 0
    $P1438."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'LexInfo' $P1439 = "47_1339198201.402" 
    $P1439."finish_static_lexpad"()
    .const 'LexInfo' $P1440 = "47_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 0
    $P1440."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1441 = "47_1339198201.402" 
    $P1441."finish_static_lexpad"()
    .const '' $P1442 = "10_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 2
    set_sub_code_object $P1442, $P114
    .const '' $P1443 = "11_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 3
    set_sub_code_object $P1443, $P114
    .const '' $P1444 = "12_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 4
    set_sub_code_object $P1444, $P114
    .const '' $P1445 = "13_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 5
    set_sub_code_object $P1445, $P114
    .const '' $P1446 = "14_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 6
    set_sub_code_object $P1446, $P114
    .const 'LexInfo' $P1447 = "48_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 1
    $P1447."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1448 = "48_1339198201.402" 
    $P1448."finish_static_lexpad"()
    .const 'LexInfo' $P1449 = "48_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 1
    $P1449."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P1450 = "48_1339198201.402" 
    $P1450."finish_static_lexpad"()
    .const '' $P1451 = "15_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 8
    set_sub_code_object $P1451, $P114
    .const '' $P1452 = "16_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 9
    set_sub_code_object $P1452, $P114
    .const '' $P1453 = "17_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 10
    set_sub_code_object $P1453, $P114
    .const '' $P1454 = "18_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 11
    set_sub_code_object $P1454, $P114
    .const '' $P1455 = "19_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 12
    set_sub_code_object $P1455, $P114
    .const '' $P1456 = "20_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 13
    set_sub_code_object $P1456, $P114
    .const 'LexInfo' $P1457 = "50_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    $P1457."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1458 = "50_1339198201.402" 
    $P1458."finish_static_lexpad"()
    .const 'LexInfo' $P1459 = "50_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    $P1459."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P1460 = "50_1339198201.402" 
    $P1460."finish_static_lexpad"()
    .const '' $P1461 = "21_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 15
    set_sub_code_object $P1461, $P114
    .const '' $P1462 = "22_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 16
    set_sub_code_object $P1462, $P114
    .const '' $P1463 = "23_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 17
    set_sub_code_object $P1463, $P114
    .const '' $P1464 = "24_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 18
    set_sub_code_object $P1464, $P114
    .const '' $P1465 = "25_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 19
    set_sub_code_object $P1465, $P114
    .const '' $P1466 = "26_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 20
    set_sub_code_object $P1466, $P114
    .const '' $P1467 = "27_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 21
    set_sub_code_object $P1467, $P114
    .const '' $P1468 = "28_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 22
    set_sub_code_object $P1468, $P114
    .const '' $P1469 = "29_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 23
    set_sub_code_object $P1469, $P114
    .const '' $P1470 = "30_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 24
    set_sub_code_object $P1470, $P114
    .const '' $P1471 = "31_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 25
    set_sub_code_object $P1471, $P114
    .const '' $P1472 = "32_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 26
    set_sub_code_object $P1472, $P114
    .const '' $P1473 = "33_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 27
    set_sub_code_object $P1473, $P114
    .const '' $P1474 = "34_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 28
    set_sub_code_object $P1474, $P114
    .const '' $P1475 = "35_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 29
    set_sub_code_object $P1475, $P114
    .const '' $P1476 = "36_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 30
    set_sub_code_object $P1476, $P114
    .const '' $P1477 = "37_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 31
    set_sub_code_object $P1477, $P114
    .const '' $P1478 = "38_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 32
    set_sub_code_object $P1478, $P114
    .const '' $P1479 = "39_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 33
    set_sub_code_object $P1479, $P114
    .const '' $P1480 = "40_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 34
    set_sub_code_object $P1480, $P114
    .const '' $P1481 = "41_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 35
    set_sub_code_object $P1481, $P114
    .const '' $P1482 = "42_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 36
    set_sub_code_object $P1482, $P114
    .const '' $P1483 = "43_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 37
    set_sub_code_object $P1483, $P114
    .const '' $P1484 = "44_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 38
    set_sub_code_object $P1484, $P114
    .const '' $P1485 = "45_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 39
    set_sub_code_object $P1485, $P114
    .const '' $P1486 = "46_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 40
    set_sub_code_object $P1486, $P114
    .const 'LexInfo' $P1487 = "51_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 14
    $P1487."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'LexInfo' $P1488 = "51_1339198201.402" 
    $P1488."finish_static_lexpad"()
    .const 'LexInfo' $P1489 = "51_1339198201.402" 
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 14
    $P1489."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'LexInfo' $P1490 = "51_1339198201.402" 
    $P1490."finish_static_lexpad"()
    nqp_get_sc_object $P114, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 0
    set_hll_global "GLOBAL", $P114
.end


.HLL "nqp"

.namespace []
.sub "_block1399"  :anon :subid("62_1339198201.402") :outer("47_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 0
    .const 'Sub' $P1401 = "10_1339198201.402" 
    .const 'Sub' $P1402 = "11_1339198201.402" 
    .const 'Sub' $P1403 = "12_1339198201.402" 
    .const 'Sub' $P1404 = "13_1339198201.402" 
    .const 'Sub' $P1405 = "14_1339198201.402" 
    .const 'Sub' $P1406 = "15_1339198201.402" 
    .const 'Sub' $P1407 = "16_1339198201.402" 
    .const 'Sub' $P1408 = "17_1339198201.402" 
    .const 'Sub' $P1409 = "18_1339198201.402" 
    .const 'Sub' $P1410 = "19_1339198201.402" 
    .const 'Sub' $P1411 = "20_1339198201.402" 
    .const 'Sub' $P1412 = "21_1339198201.402" 
    .const 'Sub' $P1413 = "22_1339198201.402" 
    .const 'Sub' $P1414 = "23_1339198201.402" 
    .const 'Sub' $P1415 = "24_1339198201.402" 
    .const 'Sub' $P1416 = "25_1339198201.402" 
    .const 'Sub' $P1417 = "26_1339198201.402" 
    .const 'Sub' $P1418 = "27_1339198201.402" 
    .const 'Sub' $P1419 = "28_1339198201.402" 
    .const 'Sub' $P1420 = "29_1339198201.402" 
    .const 'Sub' $P1421 = "30_1339198201.402" 
    .const 'Sub' $P1422 = "31_1339198201.402" 
    .const 'Sub' $P1423 = "32_1339198201.402" 
    .const 'Sub' $P1424 = "33_1339198201.402" 
    .const 'Sub' $P1425 = "34_1339198201.402" 
    .const 'Sub' $P1426 = "35_1339198201.402" 
    .const 'Sub' $P1427 = "36_1339198201.402" 
    .const 'Sub' $P1428 = "37_1339198201.402" 
    .const 'Sub' $P1429 = "38_1339198201.402" 
    .const 'Sub' $P1430 = "39_1339198201.402" 
    .const 'Sub' $P1431 = "40_1339198201.402" 
    .const 'Sub' $P1432 = "41_1339198201.402" 
    .const 'Sub' $P1433 = "42_1339198201.402" 
    .const 'Sub' $P1434 = "43_1339198201.402" 
    .const 'Sub' $P1435 = "44_1339198201.402" 
    .const 'Sub' $P1436 = "45_1339198201.402" 
    .const 'Sub' $P1437 = "46_1339198201.402" 
    new $P112, "ResizablePMCArray"
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
    push $P112, $P1422
    push $P112, $P1423
    push $P112, $P1424
    push $P112, $P1425
    push $P112, $P1426
    push $P112, $P1427
    push $P112, $P1428
    push $P112, $P1429
    push $P112, $P1430
    push $P112, $P1431
    push $P112, $P1432
    push $P112, $P1433
    push $P112, $P1434
    push $P112, $P1435
    push $P112, $P1436
    push $P112, $P1437
    .return ($P112)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "_block1005"  :subid("48_1339198201.402") :outer("47_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 7
    .const 'Sub' $P1035 = "14_1339198201.402" 
    capture_lex $P1035
    .const 'Sub' $P1032 = "13_1339198201.402" 
    capture_lex $P1032
    .const 'Sub' $P1026 = "12_1339198201.402" 
    capture_lex $P1026
    .const 'Sub' $P1020 = "11_1339198201.402" 
    capture_lex $P1020
    .const 'Sub' $P1009 = "10_1339198201.402" 
    capture_lex $P1009
    .lex "$?PACKAGE", $P1007
    .lex "$?CLASS", $P1008
.annotate 'line', 24
    .const 'Sub' $P1035 = "14_1339198201.402" 
    newclosure $P1038, $P1035
.annotate 'line', 7
    .return ($P1038)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.include "except_types.pasm"
.sub "new" :anon :subid("10_1339198201.402") :outer("48_1339198201.402")
    .param pmc param_1010
    .param pmc param_1011 :slurpy
    .param pmc param_1012 :slurpy :named
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 11
    .const 'Sub' $P1017 = "49_1339198201.402" 
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
    unless_null $P101, vivify_64
    new $P101, "Undef"
  vivify_64:
    $P101."BUILD"()
.annotate 'line', 14
    set $P101, $P1013
    unless_null $P101, vivify_65
    new $P101, "Undef"
  vivify_65:
    $P102 = $P101."list"()
    set $P1014, param_1011
    unless_null $P1014, vivify_66
    $P1014 = root_new ['parrot';'ResizablePMCArray']
  vivify_66:
    splice $P102, $P1014, 0, 0
.annotate 'line', 15
    set $P1015, param_1012
    unless_null $P1015, vivify_67
    $P1015 = root_new ['parrot';'Hash']
  vivify_67:
    defined $I100, $P1015
    unless $I100, for_undef_68
    iter $P101, $P1015
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1019_handler
    push_eh $P103
  loop1019_test:
    unless $P101, loop1019_done
    shift $P102, $P101
  loop1019_redo:
    .const 'Sub' $P1017 = "49_1339198201.402" 
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
  for_undef_68:
.annotate 'line', 11
    set $P101, $P1013
    unless_null $P101, vivify_73
    new $P101, "Undef"
  vivify_73:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "_block1016"  :anon :subid("49_1339198201.402") :outer("10_1339198201.402")
    .param pmc param_1018
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 15
    .lex "$_", param_1018
.annotate 'line', 16
    find_lex $P103, "$new"
    unless_null $P103, vivify_69
    new $P103, "Undef"
  vivify_69:
    find_lex $P104, "$_"
    unless_null $P104, vivify_70
    new $P104, "Undef"
  vivify_70:
    $S100 = $P104."key"()
    find_method $P105, $P103, $S100
    find_lex $P106, "$new"
    unless_null $P106, vivify_71
    new $P106, "Undef"
  vivify_71:
    find_lex $P107, "$_"
    unless_null $P107, vivify_72
    new $P107, "Undef"
  vivify_72:
    $P108 = $P107."value"()
    $P109 = $P105($P106, $P108)
.annotate 'line', 15
    .return ($P109)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "name" :anon :subid("11_1339198201.402") :outer("48_1339198201.402")
    .param pmc param_1021
    .param pmc param_1022 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 21
    .lex "self", param_1021
    .lex "@value", param_1022
    set $P1024, param_1022
    unless_null $P1024, vivify_74
    $P1024 = root_new ['parrot';'ResizablePMCArray']
  vivify_74:
    unless $P1024, if_1023_end
    set $P1025, param_1022
    unless_null $P1025, vivify_75
    $P1025 = root_new ['parrot';'ResizablePMCArray']
  vivify_75:
    set $P100, $P1025[0]
    unless_null $P100, vivify_76
    new $P100, "Undef"
  vivify_76:
    set $P101, param_1021
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 1
    repr_bind_attr_obj $P102, $P103, "$!name", 2, $P100
  if_1023_end:
    set $P100, param_1021
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!name", 2
    unless_null $P103, vivify_77
    new $P103, "Undef"
  vivify_77:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "node" :anon :subid("12_1339198201.402") :outer("48_1339198201.402")
    .param pmc param_1027
    .param pmc param_1028 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 22
    .lex "self", param_1027
    .lex "@value", param_1028
    set $P1030, param_1028
    unless_null $P1030, vivify_78
    $P1030 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
    unless $P1030, if_1029_end
    set $P1031, param_1028
    unless_null $P1031, vivify_79
    $P1031 = root_new ['parrot';'ResizablePMCArray']
  vivify_79:
    set $P100, $P1031[0]
    unless_null $P100, vivify_80
    new $P100, "Undef"
  vivify_80:
    set $P101, param_1027
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 1
    repr_bind_attr_obj $P102, $P103, "$!node", 3, $P100
  if_1029_end:
    set $P100, param_1027
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 1
    repr_get_attr_obj $P103, $P101, $P102, "$!node", 3
    unless_null $P103, vivify_81
    new $P103, "Undef"
  vivify_81:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "push" :anon :subid("13_1339198201.402") :outer("48_1339198201.402")
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
    unless_null $P103, vivify_82
    new $P103, "Undef"
  vivify_82:
    push $P102, $P103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Node"]
.sub "unshift" :anon :subid("14_1339198201.402") :outer("48_1339198201.402")
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
    unless_null $P103, vivify_83
    new $P103, "Undef"
  vivify_83:
    unshift $P102, $P103
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "_block1039"  :subid("50_1339198201.402") :outer("47_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 29
    .const 'Sub' $P1073 = "20_1339198201.402" 
    capture_lex $P1073
    .const 'Sub' $P1067 = "19_1339198201.402" 
    capture_lex $P1067
    .const 'Sub' $P1061 = "18_1339198201.402" 
    capture_lex $P1061
    .const 'Sub' $P1055 = "17_1339198201.402" 
    capture_lex $P1055
    .const 'Sub' $P1049 = "16_1339198201.402" 
    capture_lex $P1049
    .const 'Sub' $P1043 = "15_1339198201.402" 
    capture_lex $P1043
    .lex "$?PACKAGE", $P1041
    .lex "$?CLASS", $P1042
.annotate 'line', 42
    .const 'Sub' $P1073 = "20_1339198201.402" 
    newclosure $P1079, $P1073
.annotate 'line', 29
    .return ($P1079)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "rxtype" :anon :subid("15_1339198201.402") :outer("50_1339198201.402")
    .param pmc param_1044
    .param pmc param_1045 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 37
    .lex "self", param_1044
    .lex "@value", param_1045
    set $P1047, param_1045
    unless_null $P1047, vivify_84
    $P1047 = root_new ['parrot';'ResizablePMCArray']
  vivify_84:
    unless $P1047, if_1046_end
    set $P1048, param_1045
    unless_null $P1048, vivify_85
    $P1048 = root_new ['parrot';'ResizablePMCArray']
  vivify_85:
    set $P100, $P1048[0]
    unless_null $P100, vivify_86
    new $P100, "Undef"
  vivify_86:
    set $P101, param_1044
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_bind_attr_obj $P102, $P103, "$!rxtype", 4, $P100
  if_1046_end:
    set $P100, param_1044
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!rxtype", 4
    unless_null $P103, vivify_87
    new $P103, "Undef"
  vivify_87:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "subtype" :anon :subid("16_1339198201.402") :outer("50_1339198201.402")
    .param pmc param_1050
    .param pmc param_1051 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 38
    .lex "self", param_1050
    .lex "@value", param_1051
    set $P1053, param_1051
    unless_null $P1053, vivify_88
    $P1053 = root_new ['parrot';'ResizablePMCArray']
  vivify_88:
    unless $P1053, if_1052_end
    set $P1054, param_1051
    unless_null $P1054, vivify_89
    $P1054 = root_new ['parrot';'ResizablePMCArray']
  vivify_89:
    set $P100, $P1054[0]
    unless_null $P100, vivify_90
    new $P100, "Undef"
  vivify_90:
    set $P101, param_1050
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_bind_attr_obj $P102, $P103, "$!subtype", 5, $P100
  if_1052_end:
    set $P100, param_1050
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!subtype", 5
    unless_null $P103, vivify_91
    new $P103, "Undef"
  vivify_91:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "backtrack" :anon :subid("17_1339198201.402") :outer("50_1339198201.402")
    .param pmc param_1056
    .param pmc param_1057 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 39
    .lex "self", param_1056
    .lex "@value", param_1057
    set $P1059, param_1057
    unless_null $P1059, vivify_92
    $P1059 = root_new ['parrot';'ResizablePMCArray']
  vivify_92:
    unless $P1059, if_1058_end
    set $P1060, param_1057
    unless_null $P1060, vivify_93
    $P1060 = root_new ['parrot';'ResizablePMCArray']
  vivify_93:
    set $P100, $P1060[0]
    unless_null $P100, vivify_94
    new $P100, "Undef"
  vivify_94:
    set $P101, param_1056
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_bind_attr_obj $P102, $P103, "$!backtrack", 6, $P100
  if_1058_end:
    set $P100, param_1056
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!backtrack", 6
    unless_null $P103, vivify_95
    new $P103, "Undef"
  vivify_95:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "negate" :anon :subid("18_1339198201.402") :outer("50_1339198201.402")
    .param pmc param_1062
    .param pmc param_1063 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 40
    .lex "self", param_1062
    .lex "@value", param_1063
    set $P1065, param_1063
    unless_null $P1065, vivify_96
    $P1065 = root_new ['parrot';'ResizablePMCArray']
  vivify_96:
    unless $P1065, if_1064_end
    set $P1066, param_1063
    unless_null $P1066, vivify_97
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_97:
    set $P100, $P1066[0]
    unless_null $P100, vivify_98
    new $P100, "Undef"
  vivify_98:
    set $P101, param_1062
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_bind_attr_obj $P102, $P103, "$!negate", 7, $P100
  if_1064_end:
    set $P100, param_1062
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!negate", 7
    unless_null $P103, vivify_99
    new $P103, "Undef"
  vivify_99:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "min" :anon :subid("19_1339198201.402") :outer("50_1339198201.402")
    .param pmc param_1068
    .param pmc param_1069 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 41
    .lex "self", param_1068
    .lex "@value", param_1069
    set $P1071, param_1069
    unless_null $P1071, vivify_100
    $P1071 = root_new ['parrot';'ResizablePMCArray']
  vivify_100:
    unless $P1071, if_1070_end
    set $P1072, param_1069
    unless_null $P1072, vivify_101
    $P1072 = root_new ['parrot';'ResizablePMCArray']
  vivify_101:
    set $P100, $P1072[0]
    unless_null $P100, vivify_102
    new $P100, "Undef"
  vivify_102:
    set $P101, param_1068
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_bind_attr_obj $P102, $P103, "$!min", 8, $P100
  if_1070_end:
    set $P100, param_1068
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!min", 8
    unless_null $P103, vivify_103
    new $P103, "Undef"
  vivify_103:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Regex"]
.sub "max" :anon :subid("20_1339198201.402") :outer("50_1339198201.402")
    .param pmc param_1074
    .param pmc param_1075 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 42
    .lex "self", param_1074
    .lex "@value", param_1075
    set $P1077, param_1075
    unless_null $P1077, vivify_104
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_104:
    unless $P1077, if_1076_end
    set $P1078, param_1075
    unless_null $P1078, vivify_105
    $P1078 = root_new ['parrot';'ResizablePMCArray']
  vivify_105:
    set $P100, $P1078[0]
    unless_null $P100, vivify_106
    new $P100, "Undef"
  vivify_106:
    set $P101, param_1074
    nqp_decontainerize $P102, $P101
    nqp_get_sc_object $P103, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_bind_attr_obj $P102, $P103, "$!max", 9, $P100
  if_1076_end:
    set $P100, param_1074
    nqp_decontainerize $P101, $P100
    nqp_get_sc_object $P102, "ACE2E91864B45FF3CBDC7EABFB552F3CD7C9069E-1339198201.341", 7
    repr_get_attr_obj $P103, $P101, $P102, "$!max", 9
    unless_null $P103, vivify_107
    new $P103, "Undef"
  vivify_107:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1080"  :subid("51_1339198201.402") :outer("47_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 48
    .const 'Sub' $P1390 = "46_1339198201.402" 
    capture_lex $P1390
    .const 'Sub' $P1379 = "45_1339198201.402" 
    capture_lex $P1379
    .const 'Sub' $P1373 = "44_1339198201.402" 
    capture_lex $P1373
    .const 'Sub' $P1370 = "43_1339198201.402" 
    capture_lex $P1370
    .const 'Sub' $P1362 = "42_1339198201.402" 
    capture_lex $P1362
    .const 'Sub' $P1320 = "41_1339198201.402" 
    capture_lex $P1320
    .const 'Sub' $P1311 = "40_1339198201.402" 
    capture_lex $P1311
    .const 'Sub' $P1303 = "39_1339198201.402" 
    capture_lex $P1303
    .const 'Sub' $P1260 = "38_1339198201.402" 
    capture_lex $P1260
    .const 'Sub' $P1252 = "37_1339198201.402" 
    capture_lex $P1252
    .const 'Sub' $P1239 = "36_1339198201.402" 
    capture_lex $P1239
    .const 'Sub' $P1227 = "35_1339198201.402" 
    capture_lex $P1227
    .const 'Sub' $P1218 = "34_1339198201.402" 
    capture_lex $P1218
    .const 'Sub' $P1208 = "33_1339198201.402" 
    capture_lex $P1208
    .const 'Sub' $P1205 = "32_1339198201.402" 
    capture_lex $P1205
    .const 'Sub' $P1197 = "31_1339198201.402" 
    capture_lex $P1197
    .const 'Sub' $P1183 = "30_1339198201.402" 
    capture_lex $P1183
    .const 'Sub' $P1169 = "29_1339198201.402" 
    capture_lex $P1169
    .const 'Sub' $P1157 = "28_1339198201.402" 
    capture_lex $P1157
    .const 'Sub' $P1138 = "27_1339198201.402" 
    capture_lex $P1138
    .const 'Sub' $P1132 = "26_1339198201.402" 
    capture_lex $P1132
    .const 'Sub' $P1122 = "25_1339198201.402" 
    capture_lex $P1122
    .const 'Sub' $P1118 = "24_1339198201.402" 
    capture_lex $P1118
    .const 'Sub' $P1097 = "23_1339198201.402" 
    capture_lex $P1097
    .const 'Sub' $P1094 = "22_1339198201.402" 
    capture_lex $P1094
    .const 'Sub' $P1090 = "21_1339198201.402" 
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
        
.annotate 'line', 262
    new $P100, "String"
    assign $P100, ".CCLASS_ANY"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1084, $P102["%cclass_code"]
    unless_null $P1084, vivify_108
    $P1084 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1084
  vivify_108:
    set $P1084["."], $P100
.annotate 'line', 263
    new $P100, "String"
    assign $P100, ".CCLASS_NUMERIC"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1085, $P102["%cclass_code"]
    unless_null $P1085, vivify_109
    $P1085 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1085
  vivify_109:
    set $P1085["d"], $P100
.annotate 'line', 264
    new $P100, "String"
    assign $P100, ".CCLASS_WHITESPACE"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1086, $P102["%cclass_code"]
    unless_null $P1086, vivify_110
    $P1086 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1086
  vivify_110:
    set $P1086["s"], $P100
.annotate 'line', 265
    new $P100, "String"
    assign $P100, ".CCLASS_WORD"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1087, $P102["%cclass_code"]
    unless_null $P1087, vivify_111
    $P1087 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1087
  vivify_111:
    set $P1087["w"], $P100
.annotate 'line', 266
    new $P100, "String"
    assign $P100, ".CCLASS_NEWLINE"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1088, $P102["%cclass_code"]
    unless_null $P1088, vivify_112
    $P1088 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1088
  vivify_112:
    set $P1088["n"], $P100
.annotate 'line', 267
    new $P100, "String"
    assign $P100, ".CCLASS_NEWLINE"
    set $P101, $P1082
    get_who $P102, $P101
    set $P1089, $P102["%cclass_code"]
    unless_null $P1089, vivify_113
    $P1089 = root_new ['parrot';'Hash']
    set $P102["%cclass_code"], $P1089
  vivify_113:
    set $P1089["nl"], $P100
.annotate 'line', 48
    set $P100, $P1082
    get_who $P101, $P100
    set $P102, $P101["$serno"]
    unless_null $P102, vivify_114
    new $P102, "Undef"
  vivify_114:
    set $P100, $P1082
    get_who $P101, $P100
    set $P1182, $P101["%cclass_code"]
    unless_null $P1182, vivify_525
    $P1182 = root_new ['parrot';'Hash']
  vivify_525:
.annotate 'line', 565
    .const 'Sub' $P1390 = "46_1339198201.402" 
    newclosure $P1394, $P1390
.annotate 'line', 48
    .return ($P1394)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "unique" :anon :subid("21_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1091
    .param pmc param_1092 :optional
    .param int has_param_1092 :opt_flag
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 58
    .lex "self", param_1091
    if has_param_1092, optparam_115
    new $P100, "String"
    assign $P100, ""
    set param_1092, $P100
  optparam_115:
    .lex "$prefix", param_1092
    set $P101, param_1092
    unless_null $P101, vivify_116
    new $P101, "Undef"
  vivify_116:
    find_lex $P102, "$?PACKAGE"
    get_who $P103, $P102
    set $P104, $P103["$serno"]
    unless_null $P104, vivify_117
    new $P104, "Undef"
  vivify_117:
    clone $P1093, $P104
    inc $P104
    concat $P105, $P101, $P1093
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "escape" :anon :subid("22_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1095
    .param pmc param_1096
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 59
    .lex "self", param_1095
    .lex "$str", param_1096
    new $P100, "String"
    assign $P100, "ucs4:\""
    set $P101, param_1096
    unless_null $P101, vivify_118
    new $P101, "Undef"
  vivify_118:
    set $S100, $P101
    escape $S101, $S100
    concat $P102, $P100, $S101
    concat $P103, $P102, "\""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "as_post" :anon :subid("23_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1098
    .param pmc param_1099
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 63
    .const 'Sub' $P1114 = "52_1339198201.402" 
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
    unless_null $P113, vivify_119
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_120
    die "Contextual %*REG not found"
  vivify_120:
  vivify_119:
.annotate 'line', 69
    split $P111, " ", "tgt string pos int off int eos int rep int cur pmc curclass pmc bstack pmc cstack pmc"
    set $P1104, $P111
.annotate 'line', 70
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1117_handler
    push_eh $P114
  loop1117_test:
    set $P111, $P1104
    unless_null $P111, vivify_121
    new $P111, "Undef"
  vivify_121:
    unless $P111, loop1117_done
  loop1117_redo:
    .const 'Sub' $P1114 = "52_1339198201.402" 
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
    unless_null $P113, vivify_131
    new $P113, "Undef"
  vivify_131:
    concat $P114, $P113, "start"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1105, $P115
.annotate 'line', 78
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_132
    new $P113, "Undef"
  vivify_132:
    concat $P114, $P113, "done"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1106, $P115
.annotate 'line', 79
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_133
    new $P113, "Undef"
  vivify_133:
    concat $P114, $P113, "restart"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1107, $P115
.annotate 'line', 80
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_134
    new $P113, "Undef"
  vivify_134:
    concat $P114, $P113, "fail"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1108, $P115
.annotate 'line', 81
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_135
    new $P113, "Undef"
  vivify_135:
    concat $P114, $P113, "jump"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1109, $P115
.annotate 'line', 82
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_136
    new $P113, "Undef"
  vivify_136:
    concat $P114, $P113, "cut"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1110, $P115
.annotate 'line', 83
    set $P111, param_1098
    nqp_decontainerize $P112, $P111
    set $P113, $P1101
    unless_null $P113, vivify_137
    new $P113, "Undef"
  vivify_137:
    concat $P114, $P113, "cstack_done"
    $P115 = $P112."post_new"("Label", $P114 :named("result"))
    set $P1111, $P115
.annotate 'line', 84
    set $P111, $P1108
    unless_null $P111, vivify_138
    new $P111, "Undef"
  vivify_138:
    set $P114, $P1102
    unless_null $P114, vivify_139
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_140
    die "Contextual %*REG not found"
  vivify_140:
    set $P1102, $P114
  vivify_139:
    set $P114["fail"], $P111
.annotate 'line', 87
    new $P111, "String"
    assign $P111, "("
    set $P114, $P1102
    unless_null $P114, vivify_141
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_142
    die "Contextual %*REG not found"
  vivify_142:
  vivify_141:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_143
    new $P115, "Undef"
  vivify_143:
    set $P118, $P1102
    unless_null $P118, vivify_144
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_145
    die "Contextual %*REG not found"
  vivify_145:
  vivify_144:
    set $P119, $P118["tgt"]
    unless_null $P119, vivify_146
    new $P119, "Undef"
  vivify_146:
    set $P122, $P1102
    unless_null $P122, vivify_147
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%REG"]
    unless_null $P122, vivify_148
    die "Contextual %*REG not found"
  vivify_148:
  vivify_147:
    set $P123, $P122["pos"]
    unless_null $P123, vivify_149
    new $P123, "Undef"
  vivify_149:
    set $P126, $P1102
    unless_null $P126, vivify_150
    get_hll_global $P124, "GLOBAL"
    get_who $P125, $P124
    set $P126, $P125["%REG"]
    unless_null $P126, vivify_151
    die "Contextual %*REG not found"
  vivify_151:
  vivify_150:
    set $P127, $P126["curclass"]
    unless_null $P127, vivify_152
    new $P127, "Undef"
  vivify_152:
    set $P130, $P1102
    unless_null $P130, vivify_153
    get_hll_global $P128, "GLOBAL"
    get_who $P129, $P128
    set $P130, $P129["%REG"]
    unless_null $P130, vivify_154
    die "Contextual %*REG not found"
  vivify_154:
  vivify_153:
    set $P131, $P130["bstack"]
    unless_null $P131, vivify_155
    new $P131, "Undef"
  vivify_155:
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
    unless_null $P111, vivify_156
    new $P111, "Undef"
  vivify_156:
    set $P112, $P1112
    unless_null $P112, vivify_157
    new $P112, "Undef"
  vivify_157:
    $P111."push_pirop"("callmethod", "\"!cursor_start\"", "self", $P112 :named("result"))
.annotate 'line', 89
    set $P111, $P1100
    unless_null $P111, vivify_158
    new $P111, "Undef"
  vivify_158:
    set $P114, $P1102
    unless_null $P114, vivify_159
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_160
    die "Contextual %*REG not found"
  vivify_160:
  vivify_159:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_161
    new $P115, "Undef"
  vivify_161:
    $P111."push_pirop"("store_lex", unicode:"unicode:\"$\\x{a2}\"", $P115)
.annotate 'line', 90
    set $P111, $P1100
    unless_null $P111, vivify_162
    new $P111, "Undef"
  vivify_162:
    set $P114, $P1102
    unless_null $P114, vivify_163
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_164
    die "Contextual %*REG not found"
  vivify_164:
  vivify_163:
    set $P115, $P114["eos"]
    unless_null $P115, vivify_165
    new $P115, "Undef"
  vivify_165:
    set $P118, $P1102
    unless_null $P118, vivify_166
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_167
    die "Contextual %*REG not found"
  vivify_167:
  vivify_166:
    set $P119, $P118["tgt"]
    unless_null $P119, vivify_168
    new $P119, "Undef"
  vivify_168:
    $P111."push_pirop"("length", $P115, $P119)
.annotate 'line', 91
    set $P111, $P1100
    unless_null $P111, vivify_169
    new $P111, "Undef"
  vivify_169:
    set $P112, $P1107
    unless_null $P112, vivify_170
    new $P112, "Undef"
  vivify_170:
    $P111."push_pirop"("eq", "$I19", 1, $P112)
.annotate 'line', 92
    set $P111, $P1100
    unless_null $P111, vivify_171
    new $P111, "Undef"
  vivify_171:
    set $P112, param_1098
    nqp_decontainerize $P113, $P112
    set $P114, param_1099
    unless_null $P114, vivify_172
    new $P114, "Undef"
  vivify_172:
    $P115 = $P113."regex_post"($P114)
    $P111."push"($P115)
.annotate 'line', 93
    set $P111, $P1100
    unless_null $P111, vivify_173
    new $P111, "Undef"
  vivify_173:
    set $P112, $P1107
    unless_null $P112, vivify_174
    new $P112, "Undef"
  vivify_174:
    $P111."push"($P112)
.annotate 'line', 94
    set $P111, $P1100
    unless_null $P111, vivify_175
    new $P111, "Undef"
  vivify_175:
    set $P114, $P1102
    unless_null $P114, vivify_176
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_177
    die "Contextual %*REG not found"
  vivify_177:
  vivify_176:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_178
    new $P115, "Undef"
  vivify_178:
    set $P118, $P1102
    unless_null $P118, vivify_179
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_180
    die "Contextual %*REG not found"
  vivify_180:
  vivify_179:
    set $P119, $P118["cur"]
    unless_null $P119, vivify_181
    new $P119, "Undef"
  vivify_181:
    set $P122, $P1102
    unless_null $P122, vivify_182
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%REG"]
    unless_null $P122, vivify_183
    die "Contextual %*REG not found"
  vivify_183:
  vivify_182:
    set $P123, $P122["curclass"]
    unless_null $P123, vivify_184
    new $P123, "Undef"
  vivify_184:
    $P111."push_pirop"("repr_get_attr_obj", $P115, $P119, $P123, "\"$!cstack\"")
.annotate 'line', 95
    set $P111, $P1100
    unless_null $P111, vivify_185
    new $P111, "Undef"
  vivify_185:
    set $P112, $P1108
    unless_null $P112, vivify_186
    new $P112, "Undef"
  vivify_186:
    $P111."push"($P112)
.annotate 'line', 96
    set $P111, $P1100
    unless_null $P111, vivify_187
    new $P111, "Undef"
  vivify_187:
    set $P114, $P1102
    unless_null $P114, vivify_188
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_189
    die "Contextual %*REG not found"
  vivify_189:
  vivify_188:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_190
    new $P115, "Undef"
  vivify_190:
    set $P116, $P1106
    unless_null $P116, vivify_191
    new $P116, "Undef"
  vivify_191:
    $P111."push_pirop"("unless", $P115, $P116)
.annotate 'line', 97
    set $P111, $P1100
    unless_null $P111, vivify_192
    new $P111, "Undef"
  vivify_192:
    set $P114, $P1102
    unless_null $P114, vivify_193
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_194
    die "Contextual %*REG not found"
  vivify_194:
  vivify_193:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_195
    new $P115, "Undef"
  vivify_195:
    $P111."push_pirop"("pop", "$I19", $P115)
.annotate 'line', 98
    set $P111, $P1100
    unless_null $P111, vivify_196
    new $P111, "Undef"
  vivify_196:
    set $P114, $P1102
    unless_null $P114, vivify_197
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_198
    die "Contextual %*REG not found"
  vivify_198:
  vivify_197:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_199
    new $P115, "Undef"
  vivify_199:
    set $P116, $P1111
    unless_null $P116, vivify_200
    new $P116, "Undef"
  vivify_200:
    $P111."push_pirop"("if_null", $P115, $P116)
.annotate 'line', 99
    set $P111, $P1100
    unless_null $P111, vivify_201
    new $P111, "Undef"
  vivify_201:
    set $P114, $P1102
    unless_null $P114, vivify_202
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_203
    die "Contextual %*REG not found"
  vivify_203:
  vivify_202:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_204
    new $P115, "Undef"
  vivify_204:
    set $P116, $P1111
    unless_null $P116, vivify_205
    new $P116, "Undef"
  vivify_205:
    $P111."push_pirop"("unless", $P115, $P116)
.annotate 'line', 100
    set $P111, $P1100
    unless_null $P111, vivify_206
    new $P111, "Undef"
  vivify_206:
    $P111."push_pirop"("dec", "$I19")
.annotate 'line', 101
    set $P111, $P1100
    unless_null $P111, vivify_207
    new $P111, "Undef"
  vivify_207:
    set $P114, $P1102
    unless_null $P114, vivify_208
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_209
    die "Contextual %*REG not found"
  vivify_209:
  vivify_208:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_210
    new $P115, "Undef"
  vivify_210:
    concat $P116, $P115, "[$I19]"
    $P111."push_pirop"("set", "$P11", $P116)
.annotate 'line', 102
    set $P111, $P1100
    unless_null $P111, vivify_211
    new $P111, "Undef"
  vivify_211:
    set $P112, $P1111
    unless_null $P112, vivify_212
    new $P112, "Undef"
  vivify_212:
    $P111."push"($P112)
.annotate 'line', 103
    set $P111, $P1100
    unless_null $P111, vivify_213
    new $P111, "Undef"
  vivify_213:
    set $P114, $P1102
    unless_null $P114, vivify_214
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_215
    die "Contextual %*REG not found"
  vivify_215:
  vivify_214:
    set $P115, $P114["rep"]
    unless_null $P115, vivify_216
    new $P115, "Undef"
  vivify_216:
    set $P118, $P1102
    unless_null $P118, vivify_217
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_218
    die "Contextual %*REG not found"
  vivify_218:
  vivify_217:
    set $P119, $P118["bstack"]
    unless_null $P119, vivify_219
    new $P119, "Undef"
  vivify_219:
    $P111."push_pirop"("pop", $P115, $P119)
.annotate 'line', 104
    set $P111, $P1100
    unless_null $P111, vivify_220
    new $P111, "Undef"
  vivify_220:
    set $P114, $P1102
    unless_null $P114, vivify_221
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_222
    die "Contextual %*REG not found"
  vivify_222:
  vivify_221:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_223
    new $P115, "Undef"
  vivify_223:
    set $P118, $P1102
    unless_null $P118, vivify_224
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_225
    die "Contextual %*REG not found"
  vivify_225:
  vivify_224:
    set $P119, $P118["bstack"]
    unless_null $P119, vivify_226
    new $P119, "Undef"
  vivify_226:
    $P111."push_pirop"("pop", $P115, $P119)
.annotate 'line', 105
    set $P111, $P1100
    unless_null $P111, vivify_227
    new $P111, "Undef"
  vivify_227:
    set $P114, $P1102
    unless_null $P114, vivify_228
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_229
    die "Contextual %*REG not found"
  vivify_229:
  vivify_228:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_230
    new $P115, "Undef"
  vivify_230:
    $P111."push_pirop"("pop", "$I19", $P115)
.annotate 'line', 106
    set $P111, $P1100
    unless_null $P111, vivify_231
    new $P111, "Undef"
  vivify_231:
    set $P114, $P1102
    unless_null $P114, vivify_232
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_233
    die "Contextual %*REG not found"
  vivify_233:
  vivify_232:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_234
    new $P115, "Undef"
  vivify_234:
    set $P116, $P1106
    unless_null $P116, vivify_235
    new $P116, "Undef"
  vivify_235:
    $P111."push_pirop"("lt", $P115, -1, $P116)
.annotate 'line', 107
    set $P111, $P1100
    unless_null $P111, vivify_236
    new $P111, "Undef"
  vivify_236:
    set $P114, $P1102
    unless_null $P114, vivify_237
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_238
    die "Contextual %*REG not found"
  vivify_238:
  vivify_237:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_239
    new $P115, "Undef"
  vivify_239:
    set $P116, $P1108
    unless_null $P116, vivify_240
    new $P116, "Undef"
  vivify_240:
    $P111."push_pirop"("lt", $P115, 0, $P116)
.annotate 'line', 108
    set $P111, $P1100
    unless_null $P111, vivify_241
    new $P111, "Undef"
  vivify_241:
    set $P112, $P1108
    unless_null $P112, vivify_242
    new $P112, "Undef"
  vivify_242:
    $P111."push_pirop"("eq", "$I19", 0, $P112)
.annotate 'line', 110
    set $P111, $P1100
    unless_null $P111, vivify_243
    new $P111, "Undef"
  vivify_243:
    set $P114, $P1102
    unless_null $P114, vivify_244
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_245
    die "Contextual %*REG not found"
  vivify_245:
  vivify_244:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_246
    new $P115, "Undef"
  vivify_246:
    set $P116, $P1109
    unless_null $P116, vivify_247
    new $P116, "Undef"
  vivify_247:
    $P111."push_pirop"("if_null", $P115, $P116)
.annotate 'line', 111
    set $P111, $P1100
    unless_null $P111, vivify_248
    new $P111, "Undef"
  vivify_248:
    set $P114, $P1102
    unless_null $P114, vivify_249
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_250
    die "Contextual %*REG not found"
  vivify_250:
  vivify_249:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_251
    new $P115, "Undef"
  vivify_251:
    $P111."push_pirop"("elements", "$I18", $P115)
.annotate 'line', 112
    set $P111, $P1100
    unless_null $P111, vivify_252
    new $P111, "Undef"
  vivify_252:
    set $P112, $P1110
    unless_null $P112, vivify_253
    new $P112, "Undef"
  vivify_253:
    $P111."push_pirop"("le", "$I18", 0, $P112)
.annotate 'line', 113
    set $P111, $P1100
    unless_null $P111, vivify_254
    new $P111, "Undef"
  vivify_254:
    $P111."push_pirop"("dec", "$I18")
.annotate 'line', 114
    set $P111, $P1100
    unless_null $P111, vivify_255
    new $P111, "Undef"
  vivify_255:
    set $P114, $P1102
    unless_null $P114, vivify_256
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_257
    die "Contextual %*REG not found"
  vivify_257:
  vivify_256:
    set $P115, $P114["bstack"]
    unless_null $P115, vivify_258
    new $P115, "Undef"
  vivify_258:
    concat $P116, $P115, "[$I18]"
    $P111."push_pirop"("set", "$I18", $P116)
.annotate 'line', 115
    set $P111, $P1100
    unless_null $P111, vivify_259
    new $P111, "Undef"
  vivify_259:
    set $P112, $P1110
    unless_null $P112, vivify_260
    new $P112, "Undef"
  vivify_260:
    $P111."push"($P112)
.annotate 'line', 116
    set $P111, $P1100
    unless_null $P111, vivify_261
    new $P111, "Undef"
  vivify_261:
    set $P114, $P1102
    unless_null $P114, vivify_262
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_263
    die "Contextual %*REG not found"
  vivify_263:
  vivify_262:
    set $P115, $P114["cstack"]
    unless_null $P115, vivify_264
    new $P115, "Undef"
  vivify_264:
    $P111."push_pirop"("assign", $P115, "$I18")
.annotate 'line', 117
    set $P111, $P1100
    unless_null $P111, vivify_265
    new $P111, "Undef"
  vivify_265:
    set $P112, $P1109
    unless_null $P112, vivify_266
    new $P112, "Undef"
  vivify_266:
    $P111."push"($P112)
.annotate 'line', 118
    set $P111, $P1100
    unless_null $P111, vivify_267
    new $P111, "Undef"
  vivify_267:
    $P111."push_pirop"("jump", "$I19")
.annotate 'line', 119
    set $P111, $P1100
    unless_null $P111, vivify_268
    new $P111, "Undef"
  vivify_268:
    set $P112, $P1106
    unless_null $P112, vivify_269
    new $P112, "Undef"
  vivify_269:
    $P111."push"($P112)
.annotate 'line', 120
    set $P111, $P1100
    unless_null $P111, vivify_270
    new $P111, "Undef"
  vivify_270:
    set $P114, $P1102
    unless_null $P114, vivify_271
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_272
    die "Contextual %*REG not found"
  vivify_272:
  vivify_271:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_273
    new $P115, "Undef"
  vivify_273:
    $P111."push_pirop"("callmethod", "\"!cursor_fail\"", $P115)
.annotate 'line', 122
    set $P111, $P1100
    unless_null $P111, vivify_274
    new $P111, "Undef"
  vivify_274:
    set $P114, $P1102
    unless_null $P114, vivify_275
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_276
    die "Contextual %*REG not found"
  vivify_276:
  vivify_275:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_277
    new $P115, "Undef"
  vivify_277:
    $P111."result"($P115)
.annotate 'line', 63
    set $P111, $P1100
    unless_null $P111, vivify_278
    new $P111, "Undef"
  vivify_278:
    .return ($P111)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1113"  :anon :subid("52_1339198201.402") :outer("23_1339198201.402")
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
    unless_null $P114, vivify_122
    new $P114, "Undef"
  vivify_122:
    shift $P115, $P114
    set $P1115, $P115
.annotate 'line', 72
    find_lex $P114, "$prefix"
    unless_null $P114, vivify_123
    new $P114, "Undef"
  vivify_123:
    set $P115, $P1115
    unless_null $P115, vivify_124
    new $P115, "Undef"
  vivify_124:
    concat $P116, $P114, $P115
    set $P117, $P1115
    unless_null $P117, vivify_125
    new $P117, "Undef"
  vivify_125:
    find_dynamic_lex $P120, "%*REG"
    unless_null $P120, vivify_126
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["%REG"]
    unless_null $P120, vivify_127
    die "Contextual %*REG not found"
  vivify_127:
    store_dynamic_lex "%*REG", $P120
  vivify_126:
    set $P120[$P117], $P116
    set $P1116, $P116
.annotate 'line', 73
    find_lex $P114, "$ops"
    unless_null $P114, vivify_128
    new $P114, "Undef"
  vivify_128:
    new $P115, "String"
    assign $P115, ".local "
    find_lex $P116, "$reglist"
    unless_null $P116, vivify_129
    new $P116, "Undef"
  vivify_129:
    shift $P117, $P116
    concat $P118, $P115, $P117
    set $P119, $P1116
    unless_null $P119, vivify_130
    new $P119, "Undef"
  vivify_130:
    $P120 = $P114."push_pirop"($P118, $P119)
.annotate 'line', 70
    .return ($P120)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "post_children" :anon :subid("24_1339198201.402") :outer("51_1339198201.402")
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
.sub "regex_post" :anon :subid("25_1339198201.402") :outer("51_1339198201.402")
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
    unless_null $P105, vivify_279
    new $P105, "Undef"
  vivify_279:
    $P106 = $P104."ACCEPTS"($P105)
    unless $P106, if_1128_end
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    find_dynamic_lex $P110, "$*PASTCOMPILER"
    unless_null $P110, vivify_280
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["$PASTCOMPILER"]
    unless_null $P110, vivify_281
    die "Contextual $*PASTCOMPILER not found"
  vivify_281:
  vivify_280:
    set $P111, param_1126
    unless_null $P111, vivify_282
    new $P111, "Undef"
  vivify_282:
    $P112 = $P110."as_post"($P111)
    setattribute $P107, 'payload', $P112
    throw $P107
  if_1128_end:
.annotate 'line', 136
    set $P101, param_1126
    unless_null $P101, vivify_283
    new $P101, "Undef"
  vivify_283:
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
    unless_null $P103, vivify_284
    new $P103, "Undef"
  vivify_284:
    set $P104, $P1127
    unless_null $P104, vivify_285
    new $P104, "Undef"
  vivify_285:
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
.sub "post_new" :anon :subid("26_1339198201.402") :outer("51_1339198201.402")
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
.include "except_types.pasm"
.sub "alt" :anon :subid("27_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1141
    .param pmc param_1142
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 151
    .const 'Sub' $P1151 = "53_1339198201.402" 
    capture_lex $P1151
    new $P1140, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1140, control_1139
    push_eh $P1140
    .lex "self", param_1141
    .lex "$node", param_1142
.annotate 'line', 158
    new $P100, "Undef"
    set $P1143, $P100
    .lex "$prefix", $P1143
.annotate 'line', 159
    new $P101, "Undef"
    set $P1144, $P101
    .lex "$endlabel", $P1144
.annotate 'line', 160
    new $P102, "Undef"
    set $P1145, $P102
    .lex "$label_list_ops", $P1145
.annotate 'line', 162
    new $P103, "Undef"
    set $P1146, $P103
    .lex "$ops", $P1146
.annotate 'line', 170
    new $P104, "Undef"
    set $P1147, $P104
    .lex "$altcount", $P1147
.annotate 'line', 171
    new $P105, "Undef"
    set $P1148, $P105
    .lex "$iter", $P1148
.annotate 'line', 152
    set $P106, param_1142
    unless_null $P106, vivify_286
    new $P106, "Undef"
  vivify_286:
    $P107 = $P106."name"()
    if $P107, unless_1149_end
.annotate 'line', 153
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    set $P109, param_1141
    nqp_decontainerize $P110, $P109
    set $P111, param_1142
    unless_null $P111, vivify_287
    new $P111, "Undef"
  vivify_287:
    $P112 = $P110."altseq"($P111)
    setattribute $P108, 'payload', $P112
    throw $P108
  unless_1149_end:
.annotate 'line', 158
    set $P106, param_1141
    nqp_decontainerize $P107, $P106
    $P108 = $P107."unique"("alt")
    concat $P109, $P108, "_"
    set $P1143, $P109
.annotate 'line', 159
    set $P106, param_1141
    nqp_decontainerize $P107, $P106
    set $P108, $P1143
    unless_null $P108, vivify_288
    new $P108, "Undef"
  vivify_288:
    concat $P109, $P108, "end"
    $P110 = $P107."post_new"("Label", $P109 :named("result"))
    set $P1144, $P110
.annotate 'line', 160
    set $P106, param_1141
    nqp_decontainerize $P107, $P106
    $P108 = $P107."post_new"("Ops", "$P11" :named("result"))
    set $P1145, $P108
.annotate 'line', 161
    set $P106, $P1145
    unless_null $P106, vivify_289
    new $P106, "Undef"
  vivify_289:
    $P106."push_pirop"("new", "$P11", "\"ResizableIntegerArray\"")
.annotate 'line', 162
    set $P106, param_1141
    nqp_decontainerize $P107, $P106
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_290
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_291
    die "Contextual %*REG not found"
  vivify_291:
  vivify_290:
    set $P111, $P110["cur"]
    unless_null $P111, vivify_292
    new $P111, "Undef"
  vivify_292:
    $P112 = $P107."post_new"("Ops", $P111 :named("result"))
    set $P1146, $P112
.annotate 'line', 163
    set $P106, $P1146
    unless_null $P106, vivify_293
    new $P106, "Undef"
  vivify_293:
    set $P107, $P1145
    unless_null $P107, vivify_294
    new $P107, "Undef"
  vivify_294:
    $P106."push"($P107)
.annotate 'line', 164
    set $P106, param_1141
    nqp_decontainerize $P107, $P106
    set $P108, $P1146
    unless_null $P108, vivify_295
    new $P108, "Undef"
  vivify_295:
    set $P109, $P1144
    unless_null $P109, vivify_296
    new $P109, "Undef"
  vivify_296:
    $P107."regex_mark"($P108, $P109, -1, 0)
.annotate 'line', 165
    set $P106, $P1146
    unless_null $P106, vivify_297
    new $P106, "Undef"
  vivify_297:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_298
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_299
    die "Contextual %*REG not found"
  vivify_299:
  vivify_298:
    set $P110, $P109["cur"]
    unless_null $P110, vivify_300
    new $P110, "Undef"
  vivify_300:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_301
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_302
    die "Contextual %*REG not found"
  vivify_302:
  vivify_301:
    set $P114, $P113["pos"]
    unless_null $P114, vivify_303
    new $P114, "Undef"
  vivify_303:
.annotate 'line', 166
    set $P115, param_1141
    nqp_decontainerize $P116, $P115
    set $P117, param_1142
    unless_null $P117, vivify_304
    new $P117, "Undef"
  vivify_304:
    $P118 = $P117."name"()
    $P119 = $P116."escape"($P118)
    set $P120, $P1145
    unless_null $P120, vivify_305
    new $P120, "Undef"
  vivify_305:
    $P121 = $P120."result"()
    $P106."push_pirop"("callmethod", "\"!alt\"", $P110, $P114, $P119, $P121)
.annotate 'line', 167
    set $P106, $P1146
    unless_null $P106, vivify_306
    new $P106, "Undef"
  vivify_306:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_307
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_308
    die "Contextual %*REG not found"
  vivify_308:
  vivify_307:
    set $P110, $P109["fail"]
    unless_null $P110, vivify_309
    new $P110, "Undef"
  vivify_309:
    $P106."push_pirop"("goto", $P110)
.annotate 'line', 170
    new $P106, "Float"
    assign $P106, 0
    set $P1147, $P106
.annotate 'line', 171
    set $P106, param_1142
    unless_null $P106, vivify_310
    new $P106, "Undef"
  vivify_310:
    $P107 = $P106."list"()
    iter $P108, $P107
    set $P1148, $P108
.annotate 'line', 172
    new $P109, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P109, loop1155_handler
    push_eh $P109
  loop1155_test:
    set $P106, $P1148
    unless_null $P106, vivify_311
    new $P106, "Undef"
  vivify_311:
    unless $P106, loop1155_done
  loop1155_redo:
    .const 'Sub' $P1151 = "53_1339198201.402" 
    capture_lex $P1151
    $P1151()
  loop1155_next:
    goto loop1155_test
  loop1155_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1155_next
    eq $P110, .CONTROL_LOOP_REDO, loop1155_redo
  loop1155_done:
    pop_eh 
.annotate 'line', 181
    set $P106, $P1146
    unless_null $P106, vivify_325
    new $P106, "Undef"
  vivify_325:
    set $P107, $P1144
    unless_null $P107, vivify_326
    new $P107, "Undef"
  vivify_326:
    $P106."push"($P107)
.annotate 'line', 182
    set $P106, param_1142
    unless_null $P106, vivify_327
    new $P106, "Undef"
  vivify_327:
    $S100 = $P106."backtrack"()
    iseq $I100, $S100, "r"
    unless $I100, if_1156_end
    set $P107, param_1141
    nqp_decontainerize $P108, $P107
    set $P109, $P1146
    unless_null $P109, vivify_328
    new $P109, "Undef"
  vivify_328:
    set $P110, $P1144
    unless_null $P110, vivify_329
    new $P110, "Undef"
  vivify_329:
    $P108."regex_commit"($P109, $P110)
  if_1156_end:
.annotate 'line', 151
    set $P106, $P1146
    unless_null $P106, vivify_330
    new $P106, "Undef"
  vivify_330:
    .return ($P106)
  control_1139:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1150"  :anon :subid("53_1339198201.402") :outer("27_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 173
    new $P107, "Undef"
    set $P1152, $P107
    .lex "$altlabel", $P1152
.annotate 'line', 174
    new $P108, "Undef"
    set $P1153, $P108
    .lex "$apost", $P1153
.annotate 'line', 173
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$prefix"
    unless_null $P111, vivify_312
    new $P111, "Undef"
  vivify_312:
    find_lex $P112, "$altcount"
    unless_null $P112, vivify_313
    new $P112, "Undef"
  vivify_313:
    concat $P113, $P111, $P112
    $P114 = $P110."post_new"("Label", $P113 :named("result"))
    set $P1152, $P114
.annotate 'line', 174
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$iter"
    unless_null $P111, vivify_314
    new $P111, "Undef"
  vivify_314:
    shift $P112, $P111
    $P113 = $P110."regex_post"($P112)
    set $P1153, $P113
.annotate 'line', 175
    find_lex $P109, "$ops"
    unless_null $P109, vivify_315
    new $P109, "Undef"
  vivify_315:
    set $P110, $P1152
    unless_null $P110, vivify_316
    new $P110, "Undef"
  vivify_316:
    $P109."push"($P110)
.annotate 'line', 176
    find_lex $P109, "$ops"
    unless_null $P109, vivify_317
    new $P109, "Undef"
  vivify_317:
    set $P110, $P1153
    unless_null $P110, vivify_318
    new $P110, "Undef"
  vivify_318:
    $P109."push"($P110)
.annotate 'line', 177
    find_lex $P109, "$ops"
    unless_null $P109, vivify_319
    new $P109, "Undef"
  vivify_319:
    find_lex $P110, "$endlabel"
    unless_null $P110, vivify_320
    new $P110, "Undef"
  vivify_320:
    $P109."push_pirop"("goto", $P110)
.annotate 'line', 178
    find_lex $P109, "$label_list_ops"
    unless_null $P109, vivify_321
    new $P109, "Undef"
  vivify_321:
    find_lex $P110, "$label_list_ops"
    unless_null $P110, vivify_322
    new $P110, "Undef"
  vivify_322:
    $P111 = $P110."result"()
    set $P112, $P1152
    unless_null $P112, vivify_323
    new $P112, "Undef"
  vivify_323:
    $P113 = $P112."result"()
    $P109."push_pirop"("nqp_push_label", $P111, $P113)
.annotate 'line', 172
    find_lex $P109, "$altcount"
    unless_null $P109, vivify_324
    new $P109, "Undef"
  vivify_324:
    clone $P1154, $P109
    inc $P109
    .return ($P1154)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "altseq" :anon :subid("28_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1158
    .param pmc param_1159
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 186
    .lex "self", param_1158
    .lex "$node", param_1159
.annotate 'line', 187
    new $P100, "Undef"
    set $P1160, $P100
    .lex "$ops", $P1160
.annotate 'line', 188
    new $P101, "Undef"
    set $P1161, $P101
    .lex "$prefix", $P1161
.annotate 'line', 189
    new $P102, "Undef"
    set $P1162, $P102
    .lex "$altcount", $P1162
.annotate 'line', 190
    new $P103, "Undef"
    set $P1163, $P103
    .lex "$iter", $P1163
.annotate 'line', 191
    new $P104, "Undef"
    set $P1164, $P104
    .lex "$endlabel", $P1164
.annotate 'line', 192
    new $P105, "Undef"
    set $P1165, $P105
    .lex "$altlabel", $P1165
.annotate 'line', 193
    new $P106, "Undef"
    set $P1166, $P106
    .lex "$apost", $P1166
.annotate 'line', 187
    set $P107, param_1158
    nqp_decontainerize $P108, $P107
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_331
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_332
    die "Contextual %*REG not found"
  vivify_332:
  vivify_331:
    set $P112, $P111["cur"]
    unless_null $P112, vivify_333
    new $P112, "Undef"
  vivify_333:
    $P113 = $P108."post_new"("Ops", $P112 :named("result"))
    set $P1160, $P113
.annotate 'line', 188
    set $P107, param_1158
    nqp_decontainerize $P108, $P107
    $P109 = $P108."unique"("alt")
    concat $P110, $P109, "_"
    set $P1161, $P110
.annotate 'line', 189
    new $P107, "Float"
    assign $P107, 0
    set $P1162, $P107
.annotate 'line', 190
    set $P107, param_1159
    unless_null $P107, vivify_334
    new $P107, "Undef"
  vivify_334:
    $P108 = $P107."list"()
    iter $P109, $P108
    set $P1163, $P109
.annotate 'line', 191
    set $P107, param_1158
    nqp_decontainerize $P108, $P107
    set $P109, $P1161
    unless_null $P109, vivify_335
    new $P109, "Undef"
  vivify_335:
    concat $P110, $P109, "end"
    $P111 = $P108."post_new"("Label", $P110 :named("result"))
    set $P1164, $P111
.annotate 'line', 192
    set $P107, param_1158
    nqp_decontainerize $P108, $P107
    set $P109, $P1161
    unless_null $P109, vivify_336
    new $P109, "Undef"
  vivify_336:
    set $P110, $P1162
    unless_null $P110, vivify_337
    new $P110, "Undef"
  vivify_337:
    concat $P111, $P109, $P110
    $P112 = $P108."post_new"("Label", $P111 :named("result"))
    set $P1165, $P112
.annotate 'line', 193
    set $P107, param_1158
    nqp_decontainerize $P108, $P107
    set $P109, $P1163
    unless_null $P109, vivify_338
    new $P109, "Undef"
  vivify_338:
    shift $P110, $P109
    $P111 = $P108."regex_post"($P110)
    set $P1166, $P111
.annotate 'line', 194
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1168_handler
    push_eh $P108
  loop1168_test:
    set $P107, $P1163
    unless_null $P107, vivify_339
    new $P107, "Undef"
  vivify_339:
    unless $P107, loop1168_done
  loop1168_redo:
.annotate 'line', 195
    set $P108, $P1160
    unless_null $P108, vivify_340
    new $P108, "Undef"
  vivify_340:
    set $P109, $P1165
    unless_null $P109, vivify_341
    new $P109, "Undef"
  vivify_341:
    $P108."push"($P109)
.annotate 'line', 194
    set $P108, $P1162
    unless_null $P108, vivify_342
    new $P108, "Undef"
  vivify_342:
    clone $P1167, $P108
    inc $P108
.annotate 'line', 197
    set $P108, param_1158
    nqp_decontainerize $P109, $P108
    set $P110, $P1161
    unless_null $P110, vivify_343
    new $P110, "Undef"
  vivify_343:
    set $P111, $P1162
    unless_null $P111, vivify_344
    new $P111, "Undef"
  vivify_344:
    concat $P112, $P110, $P111
    $P113 = $P109."post_new"("Label", $P112 :named("result"))
    set $P1165, $P113
.annotate 'line', 198
    set $P108, param_1158
    nqp_decontainerize $P109, $P108
    set $P110, $P1160
    unless_null $P110, vivify_345
    new $P110, "Undef"
  vivify_345:
    set $P111, $P1165
    unless_null $P111, vivify_346
    new $P111, "Undef"
  vivify_346:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_347
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_348
    die "Contextual %*REG not found"
  vivify_348:
  vivify_347:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_349
    new $P115, "Undef"
  vivify_349:
    $P109."regex_mark"($P110, $P111, $P115, 0)
.annotate 'line', 199
    set $P108, $P1160
    unless_null $P108, vivify_350
    new $P108, "Undef"
  vivify_350:
    set $P109, $P1166
    unless_null $P109, vivify_351
    new $P109, "Undef"
  vivify_351:
    $P108."push"($P109)
.annotate 'line', 200
    set $P108, $P1160
    unless_null $P108, vivify_352
    new $P108, "Undef"
  vivify_352:
    set $P109, $P1164
    unless_null $P109, vivify_353
    new $P109, "Undef"
  vivify_353:
    $P108."push_pirop"("goto", $P109)
.annotate 'line', 201
    set $P108, param_1158
    nqp_decontainerize $P109, $P108
    set $P110, $P1163
    unless_null $P110, vivify_354
    new $P110, "Undef"
  vivify_354:
    shift $P111, $P110
    $P112 = $P109."regex_post"($P111)
    set $P1166, $P112
  loop1168_next:
.annotate 'line', 194
    goto loop1168_test
  loop1168_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1168_next
    eq $P109, .CONTROL_LOOP_REDO, loop1168_redo
  loop1168_done:
    pop_eh 
.annotate 'line', 203
    set $P107, $P1160
    unless_null $P107, vivify_355
    new $P107, "Undef"
  vivify_355:
    set $P108, $P1165
    unless_null $P108, vivify_356
    new $P108, "Undef"
  vivify_356:
    $P107."push"($P108)
.annotate 'line', 204
    set $P107, $P1160
    unless_null $P107, vivify_357
    new $P107, "Undef"
  vivify_357:
    set $P108, $P1166
    unless_null $P108, vivify_358
    new $P108, "Undef"
  vivify_358:
    $P107."push"($P108)
.annotate 'line', 205
    set $P107, $P1160
    unless_null $P107, vivify_359
    new $P107, "Undef"
  vivify_359:
    set $P108, $P1164
    unless_null $P108, vivify_360
    new $P108, "Undef"
  vivify_360:
    $P107."push"($P108)
.annotate 'line', 186
    set $P107, $P1160
    unless_null $P107, vivify_361
    new $P107, "Undef"
  vivify_361:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "anchor" :anon :subid("29_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1170
    .param pmc param_1171
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 209
    .lex "self", param_1170
    .lex "$node", param_1171
.annotate 'line', 210
    new $P100, "Undef"
    set $P1172, $P100
    .lex "$ops", $P1172
.annotate 'line', 211
    new $P101, "Undef"
    set $P1173, $P101
    .lex "$subtype", $P1173
.annotate 'line', 212
    new $P102, "Undef"
    set $P1174, $P102
    .lex "$donelabel", $P1174
.annotate 'line', 210
    set $P103, param_1170
    nqp_decontainerize $P104, $P103
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_362
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_363
    die "Contextual %*REG not found"
  vivify_363:
  vivify_362:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_364
    new $P108, "Undef"
  vivify_364:
    $P109 = $P104."post_new"("Ops", $P108 :named("result"))
    set $P1172, $P109
.annotate 'line', 211
    set $P103, param_1171
    unless_null $P103, vivify_365
    new $P103, "Undef"
  vivify_365:
    $P104 = $P103."subtype"()
    set $P1173, $P104
.annotate 'line', 212
    set $P103, param_1170
    nqp_decontainerize $P104, $P103
    set $P105, param_1170
    nqp_decontainerize $P106, $P105
    $P107 = $P106."unique"("rxanchor")
    concat $P108, $P107, "_done"
    $P109 = $P104."post_new"("Label", $P108 :named("result"))
    set $P1174, $P109
.annotate 'line', 213
    set $P103, $P1173
    unless_null $P103, vivify_366
    new $P103, "Undef"
  vivify_366:
    set $S100, $P103
    iseq $I100, $S100, "bos"
    if $I100, if_1175
.annotate 'line', 216
    set $P104, $P1173
    unless_null $P104, vivify_367
    new $P104, "Undef"
  vivify_367:
    set $S101, $P104
    iseq $I101, $S101, "eos"
    if $I101, if_1176
.annotate 'line', 219
    set $P105, $P1173
    unless_null $P105, vivify_368
    new $P105, "Undef"
  vivify_368:
    set $S102, $P105
    iseq $I102, $S102, "lwb"
    if $I102, if_1177
.annotate 'line', 227
    set $P106, $P1173
    unless_null $P106, vivify_369
    new $P106, "Undef"
  vivify_369:
    set $S103, $P106
    iseq $I103, $S103, "rwb"
    if $I103, if_1178
.annotate 'line', 235
    set $P107, $P1173
    unless_null $P107, vivify_370
    new $P107, "Undef"
  vivify_370:
    set $S104, $P107
    iseq $I104, $S104, "bol"
    if $I104, if_1179
.annotate 'line', 243
    set $P108, $P1173
    unless_null $P108, vivify_371
    new $P108, "Undef"
  vivify_371:
    set $S105, $P108
    iseq $I105, $S105, "eol"
    if $I105, if_1180
.annotate 'line', 253
    set $P109, $P1173
    unless_null $P109, vivify_372
    new $P109, "Undef"
  vivify_372:
    set $S106, $P109
    iseq $I106, $S106, "fail"
    unless $I106, if_1181_end
.annotate 'line', 254
    set $P110, $P1172
    unless_null $P110, vivify_373
    new $P110, "Undef"
  vivify_373:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_374
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_375
    die "Contextual %*REG not found"
  vivify_375:
  vivify_374:
    set $P114, $P113["fail"]
    unless_null $P114, vivify_376
    new $P114, "Undef"
  vivify_376:
    $P110."push_pirop"("goto", $P114)
  if_1181_end:
.annotate 'line', 253
    goto if_1180_end
  if_1180:
.annotate 'line', 244
    set $P109, $P1172
    unless_null $P109, vivify_377
    new $P109, "Undef"
  vivify_377:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_378
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_379
    die "Contextual %*REG not found"
  vivify_379:
  vivify_378:
    set $P113, $P112["tgt"]
    unless_null $P113, vivify_380
    new $P113, "Undef"
  vivify_380:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_381
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_382
    die "Contextual %*REG not found"
  vivify_382:
  vivify_381:
    set $P117, $P116["pos"]
    unless_null $P117, vivify_383
    new $P117, "Undef"
  vivify_383:
    $P109."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P113, $P117)
.annotate 'line', 245
    set $P109, $P1172
    unless_null $P109, vivify_384
    new $P109, "Undef"
  vivify_384:
    set $P110, $P1174
    unless_null $P110, vivify_385
    new $P110, "Undef"
  vivify_385:
    $P109."push_pirop"("if", "$I11", $P110)
.annotate 'line', 246
    set $P109, $P1172
    unless_null $P109, vivify_386
    new $P109, "Undef"
  vivify_386:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_387
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_388
    die "Contextual %*REG not found"
  vivify_388:
  vivify_387:
    set $P113, $P112["pos"]
    unless_null $P113, vivify_389
    new $P113, "Undef"
  vivify_389:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_390
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_391
    die "Contextual %*REG not found"
  vivify_391:
  vivify_390:
    set $P117, $P116["eos"]
    unless_null $P117, vivify_392
    new $P117, "Undef"
  vivify_392:
    find_dynamic_lex $P120, "%*REG"
    unless_null $P120, vivify_393
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["%REG"]
    unless_null $P120, vivify_394
    die "Contextual %*REG not found"
  vivify_394:
  vivify_393:
    set $P121, $P120["fail"]
    unless_null $P121, vivify_395
    new $P121, "Undef"
  vivify_395:
    $P109."push_pirop"("ne", $P113, $P117, $P121)
.annotate 'line', 247
    set $P109, $P1172
    unless_null $P109, vivify_396
    new $P109, "Undef"
  vivify_396:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_397
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_398
    die "Contextual %*REG not found"
  vivify_398:
  vivify_397:
    set $P113, $P112["pos"]
    unless_null $P113, vivify_399
    new $P113, "Undef"
  vivify_399:
    set $P114, $P1174
    unless_null $P114, vivify_400
    new $P114, "Undef"
  vivify_400:
    $P109."push_pirop"("eq", $P113, 0, $P114)
.annotate 'line', 248
    set $P109, $P1172
    unless_null $P109, vivify_401
    new $P109, "Undef"
  vivify_401:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_402
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_403
    die "Contextual %*REG not found"
  vivify_403:
  vivify_402:
    set $P113, $P112["pos"]
    unless_null $P113, vivify_404
    new $P113, "Undef"
  vivify_404:
    $P109."push_pirop"("sub", "$I11", $P113, 1)
.annotate 'line', 249
    set $P109, $P1172
    unless_null $P109, vivify_405
    new $P109, "Undef"
  vivify_405:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_406
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_407
    die "Contextual %*REG not found"
  vivify_407:
  vivify_406:
    set $P113, $P112["tgt"]
    unless_null $P113, vivify_408
    new $P113, "Undef"
  vivify_408:
    $P109."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P113, "$I11")
.annotate 'line', 250
    set $P109, $P1172
    unless_null $P109, vivify_409
    new $P109, "Undef"
  vivify_409:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_410
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_411
    die "Contextual %*REG not found"
  vivify_411:
  vivify_410:
    set $P113, $P112["fail"]
    unless_null $P113, vivify_412
    new $P113, "Undef"
  vivify_412:
    $P109."push_pirop"("if", "$I11", $P113)
.annotate 'line', 251
    set $P109, $P1172
    unless_null $P109, vivify_413
    new $P109, "Undef"
  vivify_413:
    set $P110, $P1174
    unless_null $P110, vivify_414
    new $P110, "Undef"
  vivify_414:
    $P109."push"($P110)
  if_1180_end:
.annotate 'line', 243
    goto if_1179_end
  if_1179:
.annotate 'line', 236
    set $P108, $P1172
    unless_null $P108, vivify_415
    new $P108, "Undef"
  vivify_415:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_416
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_417
    die "Contextual %*REG not found"
  vivify_417:
  vivify_416:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_418
    new $P112, "Undef"
  vivify_418:
    set $P113, $P1174
    unless_null $P113, vivify_419
    new $P113, "Undef"
  vivify_419:
    $P108."push_pirop"("eq", $P112, 0, $P113)
.annotate 'line', 237
    set $P108, $P1172
    unless_null $P108, vivify_420
    new $P108, "Undef"
  vivify_420:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_421
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_422
    die "Contextual %*REG not found"
  vivify_422:
  vivify_421:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_423
    new $P112, "Undef"
  vivify_423:
    find_dynamic_lex $P115, "%*REG"
    unless_null $P115, vivify_424
    get_hll_global $P113, "GLOBAL"
    get_who $P114, $P113
    set $P115, $P114["%REG"]
    unless_null $P115, vivify_425
    die "Contextual %*REG not found"
  vivify_425:
  vivify_424:
    set $P116, $P115["eos"]
    unless_null $P116, vivify_426
    new $P116, "Undef"
  vivify_426:
    find_dynamic_lex $P119, "%*REG"
    unless_null $P119, vivify_427
    get_hll_global $P117, "GLOBAL"
    get_who $P118, $P117
    set $P119, $P118["%REG"]
    unless_null $P119, vivify_428
    die "Contextual %*REG not found"
  vivify_428:
  vivify_427:
    set $P120, $P119["fail"]
    unless_null $P120, vivify_429
    new $P120, "Undef"
  vivify_429:
    $P108."push_pirop"("ge", $P112, $P116, $P120)
.annotate 'line', 238
    set $P108, $P1172
    unless_null $P108, vivify_430
    new $P108, "Undef"
  vivify_430:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_431
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_432
    die "Contextual %*REG not found"
  vivify_432:
  vivify_431:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_433
    new $P112, "Undef"
  vivify_433:
    $P108."push_pirop"("sub", "$I11", $P112, 1)
.annotate 'line', 239
    set $P108, $P1172
    unless_null $P108, vivify_434
    new $P108, "Undef"
  vivify_434:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_435
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_436
    die "Contextual %*REG not found"
  vivify_436:
  vivify_435:
    set $P112, $P111["tgt"]
    unless_null $P112, vivify_437
    new $P112, "Undef"
  vivify_437:
    $P108."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P112, "$I11")
.annotate 'line', 240
    set $P108, $P1172
    unless_null $P108, vivify_438
    new $P108, "Undef"
  vivify_438:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_439
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_440
    die "Contextual %*REG not found"
  vivify_440:
  vivify_439:
    set $P112, $P111["fail"]
    unless_null $P112, vivify_441
    new $P112, "Undef"
  vivify_441:
    $P108."push_pirop"("unless", "$I11", $P112)
.annotate 'line', 241
    set $P108, $P1172
    unless_null $P108, vivify_442
    new $P108, "Undef"
  vivify_442:
    set $P109, $P1174
    unless_null $P109, vivify_443
    new $P109, "Undef"
  vivify_443:
    $P108."push"($P109)
  if_1179_end:
.annotate 'line', 235
    goto if_1178_end
  if_1178:
.annotate 'line', 228
    set $P107, $P1172
    unless_null $P107, vivify_444
    new $P107, "Undef"
  vivify_444:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_445
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_446
    die "Contextual %*REG not found"
  vivify_446:
  vivify_445:
    set $P111, $P110["pos"]
    unless_null $P111, vivify_447
    new $P111, "Undef"
  vivify_447:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_448
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_449
    die "Contextual %*REG not found"
  vivify_449:
  vivify_448:
    set $P115, $P114["fail"]
    unless_null $P115, vivify_450
    new $P115, "Undef"
  vivify_450:
    $P107."push_pirop"("le", $P111, 0, $P115)
.annotate 'line', 229
    set $P107, $P1172
    unless_null $P107, vivify_451
    new $P107, "Undef"
  vivify_451:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_452
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_453
    die "Contextual %*REG not found"
  vivify_453:
  vivify_452:
    set $P111, $P110["tgt"]
    unless_null $P111, vivify_454
    new $P111, "Undef"
  vivify_454:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_455
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_456
    die "Contextual %*REG not found"
  vivify_456:
  vivify_455:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_457
    new $P115, "Undef"
  vivify_457:
    $P107."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P111, $P115)
.annotate 'line', 230
    set $P107, $P1172
    unless_null $P107, vivify_458
    new $P107, "Undef"
  vivify_458:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_459
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_460
    die "Contextual %*REG not found"
  vivify_460:
  vivify_459:
    set $P111, $P110["fail"]
    unless_null $P111, vivify_461
    new $P111, "Undef"
  vivify_461:
    $P107."push_pirop"("if", "$I11", $P111)
.annotate 'line', 231
    set $P107, $P1172
    unless_null $P107, vivify_462
    new $P107, "Undef"
  vivify_462:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_463
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_464
    die "Contextual %*REG not found"
  vivify_464:
  vivify_463:
    set $P111, $P110["pos"]
    unless_null $P111, vivify_465
    new $P111, "Undef"
  vivify_465:
    $P107."push_pirop"("sub", "$I11", $P111, 1)
.annotate 'line', 232
    set $P107, $P1172
    unless_null $P107, vivify_466
    new $P107, "Undef"
  vivify_466:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_467
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_468
    die "Contextual %*REG not found"
  vivify_468:
  vivify_467:
    set $P111, $P110["tgt"]
    unless_null $P111, vivify_469
    new $P111, "Undef"
  vivify_469:
    $P107."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P111, "$I11")
.annotate 'line', 233
    set $P107, $P1172
    unless_null $P107, vivify_470
    new $P107, "Undef"
  vivify_470:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_471
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_472
    die "Contextual %*REG not found"
  vivify_472:
  vivify_471:
    set $P111, $P110["fail"]
    unless_null $P111, vivify_473
    new $P111, "Undef"
  vivify_473:
    $P107."push_pirop"("unless", "$I11", $P111)
  if_1178_end:
.annotate 'line', 227
    goto if_1177_end
  if_1177:
.annotate 'line', 220
    set $P106, $P1172
    unless_null $P106, vivify_474
    new $P106, "Undef"
  vivify_474:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_475
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_476
    die "Contextual %*REG not found"
  vivify_476:
  vivify_475:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_477
    new $P110, "Undef"
  vivify_477:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_478
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_479
    die "Contextual %*REG not found"
  vivify_479:
  vivify_478:
    set $P114, $P113["eos"]
    unless_null $P114, vivify_480
    new $P114, "Undef"
  vivify_480:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_481
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_482
    die "Contextual %*REG not found"
  vivify_482:
  vivify_481:
    set $P118, $P117["fail"]
    unless_null $P118, vivify_483
    new $P118, "Undef"
  vivify_483:
    $P106."push_pirop"("ge", $P110, $P114, $P118)
.annotate 'line', 221
    set $P106, $P1172
    unless_null $P106, vivify_484
    new $P106, "Undef"
  vivify_484:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_485
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_486
    die "Contextual %*REG not found"
  vivify_486:
  vivify_485:
    set $P110, $P109["tgt"]
    unless_null $P110, vivify_487
    new $P110, "Undef"
  vivify_487:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_488
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_489
    die "Contextual %*REG not found"
  vivify_489:
  vivify_488:
    set $P114, $P113["pos"]
    unless_null $P114, vivify_490
    new $P114, "Undef"
  vivify_490:
    $P106."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P110, $P114)
.annotate 'line', 222
    set $P106, $P1172
    unless_null $P106, vivify_491
    new $P106, "Undef"
  vivify_491:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_492
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_493
    die "Contextual %*REG not found"
  vivify_493:
  vivify_492:
    set $P110, $P109["fail"]
    unless_null $P110, vivify_494
    new $P110, "Undef"
  vivify_494:
    $P106."push_pirop"("unless", "$I11", $P110)
.annotate 'line', 223
    set $P106, $P1172
    unless_null $P106, vivify_495
    new $P106, "Undef"
  vivify_495:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_496
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_497
    die "Contextual %*REG not found"
  vivify_497:
  vivify_496:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_498
    new $P110, "Undef"
  vivify_498:
    $P106."push_pirop"("sub", "$I11", $P110, 1)
.annotate 'line', 224
    set $P106, $P1172
    unless_null $P106, vivify_499
    new $P106, "Undef"
  vivify_499:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_500
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_501
    die "Contextual %*REG not found"
  vivify_501:
  vivify_500:
    set $P110, $P109["tgt"]
    unless_null $P110, vivify_502
    new $P110, "Undef"
  vivify_502:
    $P106."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P110, "$I11")
.annotate 'line', 225
    set $P106, $P1172
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
    set $P110, $P109["fail"]
    unless_null $P110, vivify_506
    new $P110, "Undef"
  vivify_506:
    $P106."push_pirop"("if", "$I11", $P110)
  if_1177_end:
.annotate 'line', 219
    goto if_1176_end
  if_1176:
.annotate 'line', 217
    set $P105, $P1172
    unless_null $P105, vivify_507
    new $P105, "Undef"
  vivify_507:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_508
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_509
    die "Contextual %*REG not found"
  vivify_509:
  vivify_508:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_510
    new $P109, "Undef"
  vivify_510:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_511
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_512
    die "Contextual %*REG not found"
  vivify_512:
  vivify_511:
    set $P113, $P112["eos"]
    unless_null $P113, vivify_513
    new $P113, "Undef"
  vivify_513:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_514
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_515
    die "Contextual %*REG not found"
  vivify_515:
  vivify_514:
    set $P117, $P116["fail"]
    unless_null $P117, vivify_516
    new $P117, "Undef"
  vivify_516:
    $P105."push_pirop"("lt", $P109, $P113, $P117)
  if_1176_end:
.annotate 'line', 216
    goto if_1175_end
  if_1175:
.annotate 'line', 214
    set $P104, $P1172
    unless_null $P104, vivify_517
    new $P104, "Undef"
  vivify_517:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_518
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_519
    die "Contextual %*REG not found"
  vivify_519:
  vivify_518:
    set $P108, $P107["pos"]
    unless_null $P108, vivify_520
    new $P108, "Undef"
  vivify_520:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_521
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_522
    die "Contextual %*REG not found"
  vivify_522:
  vivify_521:
    set $P112, $P111["fail"]
    unless_null $P112, vivify_523
    new $P112, "Undef"
  vivify_523:
    $P104."push_pirop"("ne", $P108, 0, $P112)
  if_1175_end:
.annotate 'line', 209
    set $P103, $P1172
    unless_null $P103, vivify_524
    new $P103, "Undef"
  vivify_524:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "cclass" :anon :subid("30_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1184
    .param pmc param_1185
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 270
    .const 'Sub' $P1193 = "54_1339198201.402" 
    capture_lex $P1193
    .lex "self", param_1184
    .lex "$node", param_1185
.annotate 'line', 271
    new $P100, "Undef"
    set $P1186, $P100
    .lex "$ops", $P1186
.annotate 'line', 272
    new $P101, "Undef"
    set $P1187, $P101
    .lex "$subtype", $P1187
.annotate 'line', 274
    new $P102, "Undef"
    set $P1188, $P102
    .lex "$cclass", $P1188
.annotate 'line', 271
    set $P103, param_1184
    nqp_decontainerize $P104, $P103
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_526
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_527
    die "Contextual %*REG not found"
  vivify_527:
  vivify_526:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_528
    new $P108, "Undef"
  vivify_528:
    $P109 = $P104."post_new"("Ops", $P108 :named("result"))
    set $P1186, $P109
.annotate 'line', 272
    set $P103, param_1185
    unless_null $P103, vivify_529
    new $P103, "Undef"
  vivify_529:
    $P104 = $P103."subtype"()
    set $P1187, $P104
.annotate 'line', 273
    set $P103, $P1186
    unless_null $P103, vivify_530
    new $P103, "Undef"
  vivify_530:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_531
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_532
    die "Contextual %*REG not found"
  vivify_532:
  vivify_531:
    set $P107, $P106["pos"]
    unless_null $P107, vivify_533
    new $P107, "Undef"
  vivify_533:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_534
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_535
    die "Contextual %*REG not found"
  vivify_535:
  vivify_534:
    set $P111, $P110["eos"]
    unless_null $P111, vivify_536
    new $P111, "Undef"
  vivify_536:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_537
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_538
    die "Contextual %*REG not found"
  vivify_538:
  vivify_537:
    set $P115, $P114["fail"]
    unless_null $P115, vivify_539
    new $P115, "Undef"
  vivify_539:
    $P103."push_pirop"("ge", $P107, $P111, $P115)
.annotate 'line', 274
    set $P103, $P1187
    unless_null $P103, vivify_540
    new $P103, "Undef"
  vivify_540:
    set $S100, $P103
    downcase $S101, $S100
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P1189, $P105["%cclass_code"]
    unless_null $P1189, vivify_541
    $P1189 = root_new ['parrot';'Hash']
  vivify_541:
    set $P106, $P1189[$S101]
    unless_null $P106, vivify_542
    new $P106, "Undef"
  vivify_542:
    set $P1188, $P106
.annotate 'line', 275
    set $P103, $P1188
    unless_null $P103, vivify_543
    new $P103, "Undef"
  vivify_543:
    if $P103, unless_1190_end
    set $P104, param_1184
    nqp_decontainerize $P105, $P104
    new $P106, 'String'
    set $P106, "Unrecognized subtype '"
    set $P107, $P1187
    unless_null $P107, vivify_544
    new $P107, "Undef"
  vivify_544:
    concat $P108, $P106, $P107
    concat $P109, $P108, "' in QAST::Regex cclass"
    $P105."panic"($P109)
  unless_1190_end:
.annotate 'line', 277
    set $P103, $P1188
    unless_null $P103, vivify_545
    new $P103, "Undef"
  vivify_545:
    set $S100, $P103
    isne $I100, $S100, ".CCLASS_ANY"
    unless $I100, if_1191_end
    .const 'Sub' $P1193 = "54_1339198201.402" 
    capture_lex $P1193
    $P1193()
  if_1191_end:
.annotate 'line', 287
    set $P103, $P1186
    unless_null $P103, vivify_573
    new $P103, "Undef"
  vivify_573:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_574
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_575
    die "Contextual %*REG not found"
  vivify_575:
  vivify_574:
    set $P107, $P106["pos"]
    unless_null $P107, vivify_576
    new $P107, "Undef"
  vivify_576:
    $P103."push_pirop"("add", $P107, 1)
.annotate 'line', 270
    set $P103, $P1186
    unless_null $P103, vivify_577
    new $P103, "Undef"
  vivify_577:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1192"  :anon :subid("54_1339198201.402") :outer("30_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 278
    new $P104, "Undef"
    set $P1194, $P104
    .lex "$testop", $P1194
    find_lex $P106, "$node"
    unless_null $P106, vivify_546
    new $P106, "Undef"
  vivify_546:
    $P107 = $P106."negate"()
    if $P107, if_1195
    new $P109, "String"
    assign $P109, "unless"
    set $P105, $P109
    goto if_1195_end
  if_1195:
    new $P108, "String"
    assign $P108, "if"
    set $P105, $P108
  if_1195_end:
    set $P1194, $P105
.annotate 'line', 279
    find_lex $P105, "$ops"
    unless_null $P105, vivify_547
    new $P105, "Undef"
  vivify_547:
    find_lex $P106, "$cclass"
    unless_null $P106, vivify_548
    new $P106, "Undef"
  vivify_548:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_549
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_550
    die "Contextual %*REG not found"
  vivify_550:
  vivify_549:
    set $P110, $P109["tgt"]
    unless_null $P110, vivify_551
    new $P110, "Undef"
  vivify_551:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_552
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_553
    die "Contextual %*REG not found"
  vivify_553:
  vivify_552:
    set $P114, $P113["pos"]
    unless_null $P114, vivify_554
    new $P114, "Undef"
  vivify_554:
    $P105."push_pirop"("is_cclass", "$I11", $P106, $P110, $P114)
.annotate 'line', 280
    find_lex $P105, "$ops"
    unless_null $P105, vivify_555
    new $P105, "Undef"
  vivify_555:
    set $P106, $P1194
    unless_null $P106, vivify_556
    new $P106, "Undef"
  vivify_556:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_557
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_558
    die "Contextual %*REG not found"
  vivify_558:
  vivify_557:
    set $P110, $P109["fail"]
    unless_null $P110, vivify_559
    new $P110, "Undef"
  vivify_559:
    $P105."push_pirop"($P106, "$I11", $P110)
.annotate 'line', 281
    find_lex $P106, "$subtype"
    unless_null $P106, vivify_560
    new $P106, "Undef"
  vivify_560:
    set $S101, $P106
    iseq $I101, $S101, "nl"
    if $I101, if_1196
    new $P105, 'Integer'
    set $P105, $I101
    goto if_1196_end
  if_1196:
.annotate 'line', 282
    find_lex $P107, "$ops"
    unless_null $P107, vivify_561
    new $P107, "Undef"
  vivify_561:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_562
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_563
    die "Contextual %*REG not found"
  vivify_563:
  vivify_562:
    set $P111, $P110["tgt"]
    unless_null $P111, vivify_564
    new $P111, "Undef"
  vivify_564:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_565
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_566
    die "Contextual %*REG not found"
  vivify_566:
  vivify_565:
    set $P115, $P114["pos"]
    unless_null $P115, vivify_567
    new $P115, "Undef"
  vivify_567:
    $P107."push_pirop"("substr", "$S10", $P111, $P115, 2)
.annotate 'line', 283
    find_lex $P107, "$ops"
    unless_null $P107, vivify_568
    new $P107, "Undef"
  vivify_568:
    $P107."push_pirop"("iseq", "$I11", "$S10", "\"\\r\\n\"")
.annotate 'line', 284
    find_lex $P107, "$ops"
    unless_null $P107, vivify_569
    new $P107, "Undef"
  vivify_569:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_570
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_571
    die "Contextual %*REG not found"
  vivify_571:
  vivify_570:
    set $P111, $P110["pos"]
    unless_null $P111, vivify_572
    new $P111, "Undef"
  vivify_572:
    $P112 = $P107."push_pirop"("add", $P111, "$I11")
.annotate 'line', 281
    set $P105, $P112
  if_1196_end:
.annotate 'line', 277
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "concat" :anon :subid("31_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1198
    .param pmc param_1199
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 291
    .const 'Sub' $P1202 = "55_1339198201.402" 
    capture_lex $P1202
    .lex "self", param_1198
    .lex "$node", param_1199
.annotate 'line', 292
    new $P100, "Undef"
    set $P1200, $P100
    .lex "$ops", $P1200
    set $P101, param_1198
    nqp_decontainerize $P102, $P101
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_578
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_579
    die "Contextual %*REG not found"
  vivify_579:
  vivify_578:
    set $P106, $P105["cur"]
    unless_null $P106, vivify_580
    new $P106, "Undef"
  vivify_580:
    $P107 = $P102."post_new"("Ops", $P106 :named("result"))
    set $P1200, $P107
.annotate 'line', 293
    set $P102, param_1199
    unless_null $P102, vivify_581
    new $P102, "Undef"
  vivify_581:
    $P103 = $P102."list"()
    defined $I100, $P103
    unless $I100, for_undef_582
    iter $P101, $P103
    new $P105, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P105, loop1204_handler
    push_eh $P105
  loop1204_test:
    unless $P101, loop1204_done
    shift $P104, $P101
  loop1204_redo:
    .const 'Sub' $P1202 = "55_1339198201.402" 
    capture_lex $P1202
    $P1202($P104)
  loop1204_next:
    goto loop1204_test
  loop1204_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop1204_next
    eq $P106, .CONTROL_LOOP_REDO, loop1204_redo
  loop1204_done:
    pop_eh 
  for_undef_582:
.annotate 'line', 291
    set $P101, $P1200
    unless_null $P101, vivify_585
    new $P101, "Undef"
  vivify_585:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1201"  :anon :subid("55_1339198201.402") :outer("31_1339198201.402")
    .param pmc param_1203
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 293
    .lex "$_", param_1203
    find_lex $P105, "$ops"
    unless_null $P105, vivify_583
    new $P105, "Undef"
  vivify_583:
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$_"
    unless_null $P108, vivify_584
    new $P108, "Undef"
  vivify_584:
    $P109 = $P107."regex_post"($P108)
    $P110 = $P105."push"($P109)
    .return ($P110)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "conj" :anon :subid("32_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1206
    .param pmc param_1207
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 297
    .lex "self", param_1206
    .lex "$node", param_1207
    set $P100, param_1206
    nqp_decontainerize $P101, $P100
    set $P102, param_1207
    unless_null $P102, vivify_586
    new $P102, "Undef"
  vivify_586:
    $P103 = $P101."conjseq"($P102)
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "conjseq" :anon :subid("33_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1209
    .param pmc param_1210
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 299
    .lex "self", param_1209
    .lex "$node", param_1210
.annotate 'line', 300
    new $P100, "Undef"
    set $P1211, $P100
    .lex "$ops", $P1211
.annotate 'line', 301
    new $P101, "Undef"
    set $P1212, $P101
    .lex "$prefix", $P1212
.annotate 'line', 302
    new $P102, "Undef"
    set $P1213, $P102
    .lex "$conjlabel", $P1213
.annotate 'line', 303
    new $P103, "Undef"
    set $P1214, $P103
    .lex "$firstlabel", $P1214
.annotate 'line', 304
    new $P104, "Undef"
    set $P1215, $P104
    .lex "$iter", $P1215
.annotate 'line', 300
    set $P105, param_1209
    nqp_decontainerize $P106, $P105
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_587
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_588
    die "Contextual %*REG not found"
  vivify_588:
  vivify_587:
    set $P110, $P109["cur"]
    unless_null $P110, vivify_589
    new $P110, "Undef"
  vivify_589:
    $P111 = $P106."post_new"("Ops", $P110 :named("result"))
    set $P1211, $P111
.annotate 'line', 301
    set $P105, param_1209
    nqp_decontainerize $P106, $P105
    $P107 = $P106."unique"("rxconj")
    concat $P108, $P107, "_"
    set $P1212, $P108
.annotate 'line', 302
    set $P105, param_1209
    nqp_decontainerize $P106, $P105
    set $P107, $P1212
    unless_null $P107, vivify_590
    new $P107, "Undef"
  vivify_590:
    concat $P108, $P107, "fail"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1213, $P109
.annotate 'line', 303
    set $P105, param_1209
    nqp_decontainerize $P106, $P105
    set $P107, $P1212
    unless_null $P107, vivify_591
    new $P107, "Undef"
  vivify_591:
    concat $P108, $P107, "first"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1214, $P109
.annotate 'line', 304
    set $P105, param_1210
    unless_null $P105, vivify_592
    new $P105, "Undef"
  vivify_592:
    $P106 = $P105."list"()
    iter $P107, $P106
    set $P1215, $P107
.annotate 'line', 306
    set $P105, param_1209
    nqp_decontainerize $P106, $P105
    set $P107, $P1211
    unless_null $P107, vivify_593
    new $P107, "Undef"
  vivify_593:
    set $P108, $P1213
    unless_null $P108, vivify_594
    new $P108, "Undef"
  vivify_594:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_595
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_596
    die "Contextual %*REG not found"
  vivify_596:
  vivify_595:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_597
    new $P112, "Undef"
  vivify_597:
    $P106."regex_mark"($P107, $P108, $P112, 0)
.annotate 'line', 307
    set $P105, $P1211
    unless_null $P105, vivify_598
    new $P105, "Undef"
  vivify_598:
    set $P106, $P1214
    unless_null $P106, vivify_599
    new $P106, "Undef"
  vivify_599:
    $P105."push_pirop"("goto", $P106)
.annotate 'line', 308
    set $P105, $P1211
    unless_null $P105, vivify_600
    new $P105, "Undef"
  vivify_600:
    set $P106, $P1213
    unless_null $P106, vivify_601
    new $P106, "Undef"
  vivify_601:
    $P105."push"($P106)
.annotate 'line', 309
    set $P105, $P1211
    unless_null $P105, vivify_602
    new $P105, "Undef"
  vivify_602:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_603
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_604
    die "Contextual %*REG not found"
  vivify_604:
  vivify_603:
    set $P109, $P108["fail"]
    unless_null $P109, vivify_605
    new $P109, "Undef"
  vivify_605:
    $P105."push_pirop"("goto", $P109)
.annotate 'line', 311
    set $P105, $P1211
    unless_null $P105, vivify_606
    new $P105, "Undef"
  vivify_606:
    set $P106, $P1214
    unless_null $P106, vivify_607
    new $P106, "Undef"
  vivify_607:
    $P105."push"($P106)
.annotate 'line', 312
    set $P105, $P1211
    unless_null $P105, vivify_608
    new $P105, "Undef"
  vivify_608:
    set $P106, param_1209
    nqp_decontainerize $P107, $P106
    set $P108, $P1215
    unless_null $P108, vivify_609
    new $P108, "Undef"
  vivify_609:
    shift $P109, $P108
    $P110 = $P107."regex_post"($P109)
    $P105."push"($P110)
.annotate 'line', 314
    set $P105, param_1209
    nqp_decontainerize $P106, $P105
    set $P107, $P1211
    unless_null $P107, vivify_610
    new $P107, "Undef"
  vivify_610:
    set $P108, $P1213
    unless_null $P108, vivify_611
    new $P108, "Undef"
  vivify_611:
    $P106."regex_peek"($P107, $P108, "$I11")
.annotate 'line', 315
    set $P105, param_1209
    nqp_decontainerize $P106, $P105
    set $P107, $P1211
    unless_null $P107, vivify_612
    new $P107, "Undef"
  vivify_612:
    set $P108, $P1213
    unless_null $P108, vivify_613
    new $P108, "Undef"
  vivify_613:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_614
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_615
    die "Contextual %*REG not found"
  vivify_615:
  vivify_614:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_616
    new $P112, "Undef"
  vivify_616:
    $P106."regex_mark"($P107, $P108, "$I11", $P112)
.annotate 'line', 317
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1216_handler
    push_eh $P106
  loop1216_test:
    set $P105, $P1215
    unless_null $P105, vivify_617
    new $P105, "Undef"
  vivify_617:
    unless $P105, loop1216_done
  loop1216_redo:
.annotate 'line', 318
    set $P106, $P1211
    unless_null $P106, vivify_618
    new $P106, "Undef"
  vivify_618:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_619
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_620
    die "Contextual %*REG not found"
  vivify_620:
  vivify_619:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_621
    new $P110, "Undef"
  vivify_621:
    $P106."push_pirop"("set", $P110, "$I11")
.annotate 'line', 319
    set $P106, $P1211
    unless_null $P106, vivify_622
    new $P106, "Undef"
  vivify_622:
    set $P107, param_1209
    nqp_decontainerize $P108, $P107
    set $P109, $P1215
    unless_null $P109, vivify_623
    new $P109, "Undef"
  vivify_623:
    shift $P110, $P109
    $P111 = $P108."regex_post"($P110)
    $P106."push"($P111)
.annotate 'line', 320
    set $P106, param_1209
    nqp_decontainerize $P107, $P106
    set $P108, $P1211
    unless_null $P108, vivify_624
    new $P108, "Undef"
  vivify_624:
    set $P109, $P1213
    unless_null $P109, vivify_625
    new $P109, "Undef"
  vivify_625:
    $P107."regex_peek"($P108, $P109, "$I11", "$I12")
.annotate 'line', 321
    set $P106, $P1211
    unless_null $P106, vivify_626
    new $P106, "Undef"
  vivify_626:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_627
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_628
    die "Contextual %*REG not found"
  vivify_628:
  vivify_627:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_629
    new $P110, "Undef"
  vivify_629:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_630
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_631
    die "Contextual %*REG not found"
  vivify_631:
  vivify_630:
    set $P114, $P113["fail"]
    unless_null $P114, vivify_632
    new $P114, "Undef"
  vivify_632:
    $P106."push_pirop"("ne", $P110, "$I12", $P114)
  loop1216_next:
.annotate 'line', 317
    goto loop1216_test
  loop1216_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1216_next
    eq $P107, .CONTROL_LOOP_REDO, loop1216_redo
  loop1216_done:
    pop_eh 
.annotate 'line', 323
    set $P105, param_1210
    unless_null $P105, vivify_633
    new $P105, "Undef"
  vivify_633:
    $S100 = $P105."subtype"()
    iseq $I100, $S100, "zerowidth"
    unless $I100, if_1217_end
    set $P106, $P1211
    unless_null $P106, vivify_634
    new $P106, "Undef"
  vivify_634:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_635
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_636
    die "Contextual %*REG not found"
  vivify_636:
  vivify_635:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_637
    new $P110, "Undef"
  vivify_637:
    $P106."push_pirop"("set", $P110, "$I11")
  if_1217_end:
.annotate 'line', 299
    set $P105, $P1211
    unless_null $P105, vivify_638
    new $P105, "Undef"
  vivify_638:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "enumcharlist" :anon :subid("34_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1219
    .param pmc param_1220
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 327
    .lex "self", param_1219
    .lex "$node", param_1220
.annotate 'line', 328
    new $P100, "Undef"
    set $P1221, $P100
    .lex "$ops", $P1221
.annotate 'line', 329
    new $P101, "Undef"
    set $P1222, $P101
    .lex "$charlist", $P1222
.annotate 'line', 330
    new $P102, "Undef"
    set $P1223, $P102
    .lex "$testop", $P1223
.annotate 'line', 328
    set $P103, param_1219
    nqp_decontainerize $P104, $P103
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_639
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_640
    die "Contextual %*REG not found"
  vivify_640:
  vivify_639:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_641
    new $P108, "Undef"
  vivify_641:
    $P109 = $P104."post_new"("Ops", $P108 :named("result"))
    set $P1221, $P109
.annotate 'line', 329
    set $P103, param_1219
    nqp_decontainerize $P104, $P103
    set $P1224, param_1220
    unless_null $P1224, vivify_642
    $P1224 = root_new ['parrot';'ResizablePMCArray']
  vivify_642:
    set $P105, $P1224[0]
    unless_null $P105, vivify_643
    new $P105, "Undef"
  vivify_643:
    $P106 = $P104."escape"($P105)
    set $P1222, $P106
.annotate 'line', 330
    set $P104, param_1220
    unless_null $P104, vivify_644
    new $P104, "Undef"
  vivify_644:
    $P105 = $P104."negate"()
    if $P105, if_1225
    new $P107, "String"
    assign $P107, "lt"
    set $P103, $P107
    goto if_1225_end
  if_1225:
    new $P106, "String"
    assign $P106, "ge"
    set $P103, $P106
  if_1225_end:
    set $P1223, $P103
.annotate 'line', 331
    set $P103, $P1221
    unless_null $P103, vivify_645
    new $P103, "Undef"
  vivify_645:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_646
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_647
    die "Contextual %*REG not found"
  vivify_647:
  vivify_646:
    set $P107, $P106["pos"]
    unless_null $P107, vivify_648
    new $P107, "Undef"
  vivify_648:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_649
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_650
    die "Contextual %*REG not found"
  vivify_650:
  vivify_649:
    set $P111, $P110["eos"]
    unless_null $P111, vivify_651
    new $P111, "Undef"
  vivify_651:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_652
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_653
    die "Contextual %*REG not found"
  vivify_653:
  vivify_652:
    set $P115, $P114["fail"]
    unless_null $P115, vivify_654
    new $P115, "Undef"
  vivify_654:
    $P103."push_pirop"("ge", $P107, $P111, $P115)
.annotate 'line', 332
    set $P103, $P1221
    unless_null $P103, vivify_655
    new $P103, "Undef"
  vivify_655:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_656
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_657
    die "Contextual %*REG not found"
  vivify_657:
  vivify_656:
    set $P107, $P106["tgt"]
    unless_null $P107, vivify_658
    new $P107, "Undef"
  vivify_658:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_659
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_660
    die "Contextual %*REG not found"
  vivify_660:
  vivify_659:
    set $P111, $P110["pos"]
    unless_null $P111, vivify_661
    new $P111, "Undef"
  vivify_661:
    $P103."push_pirop"("substr", "$S11", $P107, $P111, 1)
.annotate 'line', 333
    set $P103, $P1221
    unless_null $P103, vivify_662
    new $P103, "Undef"
  vivify_662:
    set $P104, $P1222
    unless_null $P104, vivify_663
    new $P104, "Undef"
  vivify_663:
    $P103."push_pirop"("index", "$I11", $P104, "$S11")
.annotate 'line', 334
    set $P103, $P1221
    unless_null $P103, vivify_664
    new $P103, "Undef"
  vivify_664:
    set $P104, $P1223
    unless_null $P104, vivify_665
    new $P104, "Undef"
  vivify_665:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_666
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_667
    die "Contextual %*REG not found"
  vivify_667:
  vivify_666:
    set $P108, $P107["fail"]
    unless_null $P108, vivify_668
    new $P108, "Undef"
  vivify_668:
    $P103."push_pirop"($P104, "$I11", 0, $P108)
.annotate 'line', 335
    set $P103, param_1220
    unless_null $P103, vivify_669
    new $P103, "Undef"
  vivify_669:
    $S100 = $P103."subtype"()
    iseq $I100, $S100, "zerowidth"
    if $I100, unless_1226_end
    set $P104, $P1221
    unless_null $P104, vivify_670
    new $P104, "Undef"
  vivify_670:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_671
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_672
    die "Contextual %*REG not found"
  vivify_672:
  vivify_671:
    set $P108, $P107["pos"]
    unless_null $P108, vivify_673
    new $P108, "Undef"
  vivify_673:
    $P104."push_pirop"("inc", $P108)
  unless_1226_end:
.annotate 'line', 327
    set $P103, $P1221
    unless_null $P103, vivify_674
    new $P103, "Undef"
  vivify_674:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "literal" :anon :subid("35_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1228
    .param pmc param_1229
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 339
    .lex "self", param_1228
    .lex "$node", param_1229
.annotate 'line', 340
    new $P100, "Undef"
    set $P1230, $P100
    .lex "$ops", $P1230
.annotate 'line', 341
    new $P101, "Undef"
    set $P1231, $P101
    .lex "$litconst", $P1231
.annotate 'line', 344
    new $P102, "Undef"
    set $P1232, $P102
    .lex "$litlen", $P1232
.annotate 'line', 345
    new $P103, "Undef"
    set $P1233, $P103
    .lex "$litpost", $P1233
.annotate 'line', 346
    new $P104, "Undef"
    set $P1234, $P104
    .lex "$cmpop", $P1234
.annotate 'line', 340
    set $P105, param_1228
    nqp_decontainerize $P106, $P105
    $P107 = $P106."post_new"("Ops")
    set $P1230, $P107
.annotate 'line', 341
    set $P1235, param_1229
    unless_null $P1235, vivify_675
    $P1235 = root_new ['parrot';'ResizablePMCArray']
  vivify_675:
    set $P105, $P1235[0]
    unless_null $P105, vivify_676
    new $P105, "Undef"
  vivify_676:
    set $P1231, $P105
.annotate 'line', 343
    set $P105, param_1229
    unless_null $P105, vivify_677
    new $P105, "Undef"
  vivify_677:
    $S100 = $P105."subtype"()
    iseq $I100, $S100, "ignorecase"
    unless $I100, if_1236_end
.annotate 'line', 342
    set $P106, $P1231
    unless_null $P106, vivify_678
    new $P106, "Undef"
  vivify_678:
    set $S101, $P106
    downcase $S102, $S101
    new $P107, 'String'
    set $P107, $S102
    set $P1231, $P107
  if_1236_end:
.annotate 'line', 344
    set $P105, $P1231
    unless_null $P105, vivify_679
    new $P105, "Undef"
  vivify_679:
    set $S100, $P105
    length $I100, $S100
    new $P106, 'Integer'
    set $P106, $I100
    set $P1232, $P106
.annotate 'line', 345
    set $P105, param_1228
    nqp_decontainerize $P106, $P105
    set $P107, $P1231
    unless_null $P107, vivify_680
    new $P107, "Undef"
  vivify_680:
    $P108 = $P106."escape"($P107)
    set $P1233, $P108
.annotate 'line', 346
    set $P106, param_1229
    unless_null $P106, vivify_681
    new $P106, "Undef"
  vivify_681:
    $P107 = $P106."negate"()
    if $P107, if_1237
    new $P109, "String"
    assign $P109, "ne"
    set $P105, $P109
    goto if_1237_end
  if_1237:
    new $P108, "String"
    assign $P108, "eq"
    set $P105, $P108
  if_1237_end:
    set $P1234, $P105
.annotate 'line', 347
    set $P105, $P1230
    unless_null $P105, vivify_682
    new $P105, "Undef"
  vivify_682:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_683
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_684
    die "Contextual %*REG not found"
  vivify_684:
  vivify_683:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_685
    new $P109, "Undef"
  vivify_685:
    set $P110, $P1232
    unless_null $P110, vivify_686
    new $P110, "Undef"
  vivify_686:
    $P105."push_pirop"("add", "$I11", $P109, $P110)
.annotate 'line', 348
    set $P105, $P1230
    unless_null $P105, vivify_687
    new $P105, "Undef"
  vivify_687:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_688
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_689
    die "Contextual %*REG not found"
  vivify_689:
  vivify_688:
    set $P109, $P108["eos"]
    unless_null $P109, vivify_690
    new $P109, "Undef"
  vivify_690:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_691
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_692
    die "Contextual %*REG not found"
  vivify_692:
  vivify_691:
    set $P113, $P112["fail"]
    unless_null $P113, vivify_693
    new $P113, "Undef"
  vivify_693:
    $P105."push_pirop"("gt", "$I11", $P109, $P113)
.annotate 'line', 349
    set $P105, $P1230
    unless_null $P105, vivify_694
    new $P105, "Undef"
  vivify_694:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_695
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_696
    die "Contextual %*REG not found"
  vivify_696:
  vivify_695:
    set $P109, $P108["tgt"]
    unless_null $P109, vivify_697
    new $P109, "Undef"
  vivify_697:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_698
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_699
    die "Contextual %*REG not found"
  vivify_699:
  vivify_698:
    set $P113, $P112["pos"]
    unless_null $P113, vivify_700
    new $P113, "Undef"
  vivify_700:
    set $P114, $P1232
    unless_null $P114, vivify_701
    new $P114, "Undef"
  vivify_701:
    $P105."push_pirop"("substr", "$S10", $P109, $P113, $P114)
.annotate 'line', 351
    set $P105, param_1229
    unless_null $P105, vivify_702
    new $P105, "Undef"
  vivify_702:
    $S100 = $P105."subtype"()
    iseq $I100, $S100, "ignorecase"
    unless $I100, if_1238_end
.annotate 'line', 350
    set $P106, $P1230
    unless_null $P106, vivify_703
    new $P106, "Undef"
  vivify_703:
    $P106."push_pirop"("downcase", "$S10", "$S10")
  if_1238_end:
.annotate 'line', 352
    set $P105, $P1230
    unless_null $P105, vivify_704
    new $P105, "Undef"
  vivify_704:
    set $P106, $P1234
    unless_null $P106, vivify_705
    new $P106, "Undef"
  vivify_705:
    set $P107, $P1233
    unless_null $P107, vivify_706
    new $P107, "Undef"
  vivify_706:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_707
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_708
    die "Contextual %*REG not found"
  vivify_708:
  vivify_707:
    set $P111, $P110["fail"]
    unless_null $P111, vivify_709
    new $P111, "Undef"
  vivify_709:
    $P105."push_pirop"($P106, "$S10", $P107, $P111)
.annotate 'line', 353
    set $P105, $P1230
    unless_null $P105, vivify_710
    new $P105, "Undef"
  vivify_710:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_711
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_712
    die "Contextual %*REG not found"
  vivify_712:
  vivify_711:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_713
    new $P109, "Undef"
  vivify_713:
    set $P110, $P1232
    unless_null $P110, vivify_714
    new $P110, "Undef"
  vivify_714:
    $P105."push_pirop"("add", $P109, $P110)
.annotate 'line', 339
    set $P105, $P1230
    unless_null $P105, vivify_715
    new $P105, "Undef"
  vivify_715:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "pass" :anon :subid("36_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1240
    .param pmc param_1241
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 357
    .const 'Sub' $P1248 = "56_1339198201.402" 
    capture_lex $P1248
    .lex "self", param_1240
    .lex "$node", param_1241
.annotate 'line', 358
    new $P100, "Undef"
    set $P1242, $P100
    .lex "$ops", $P1242
.annotate 'line', 359
    $P1244 = root_new ['parrot';'ResizablePMCArray']
    set $P1243, $P1244
    .lex "@backtrack", $P1243
.annotate 'line', 358
    set $P101, param_1240
    nqp_decontainerize $P102, $P101
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_716
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_717
    die "Contextual %*REG not found"
  vivify_717:
  vivify_716:
    set $P106, $P105["cur"]
    unless_null $P106, vivify_718
    new $P106, "Undef"
  vivify_718:
    $P107 = $P102."post_new"("Ops", $P106 :named("result"))
    set $P1242, $P107
.annotate 'line', 360
    set $P101, param_1241
    unless_null $P101, vivify_719
    new $P101, "Undef"
  vivify_719:
    $S100 = $P101."backtrack"()
    isne $I100, $S100, "r"
    unless $I100, if_1245_end
.annotate 'line', 359
    new $P102, "ResizablePMCArray"
    push $P102, "'backtrack'=>1"
    set $P1243, $P102
  if_1245_end:
.annotate 'line', 361
    set $P101, param_1241
    unless_null $P101, vivify_720
    new $P101, "Undef"
  vivify_720:
    $P102 = $P101."name"()
    if $P102, if_1246
.annotate 'line', 366
    set $P104, $P1242
    unless_null $P104, vivify_721
    new $P104, "Undef"
  vivify_721:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_722
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_723
    die "Contextual %*REG not found"
  vivify_723:
  vivify_722:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_724
    new $P108, "Undef"
  vivify_724:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_725
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_726
    die "Contextual %*REG not found"
  vivify_726:
  vivify_725:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_727
    new $P112, "Undef"
  vivify_727:
    set $P1251, $P1243
    unless_null $P1251, vivify_728
    $P1251 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
    $P104."push_pirop"("callmethod", "\"!cursor_pass\"", $P108, $P112, $P1251 :flat)
.annotate 'line', 365
    goto if_1246_end
  if_1246:
.annotate 'line', 361
    .const 'Sub' $P1248 = "56_1339198201.402" 
    capture_lex $P1248
    $P1248()
  if_1246_end:
.annotate 'line', 368
    set $P101, $P1242
    unless_null $P101, vivify_741
    new $P101, "Undef"
  vivify_741:
    find_dynamic_lex $P104, "%*REG"
    unless_null $P104, vivify_742
    get_hll_global $P102, "GLOBAL"
    get_who $P103, $P102
    set $P104, $P103["%REG"]
    unless_null $P104, vivify_743
    die "Contextual %*REG not found"
  vivify_743:
  vivify_742:
    set $P105, $P104["cur"]
    unless_null $P105, vivify_744
    new $P105, "Undef"
  vivify_744:
    $P101."push_pirop"("return", $P105)
.annotate 'line', 357
    set $P101, $P1242
    unless_null $P101, vivify_745
    new $P101, "Undef"
  vivify_745:
    .return ($P101)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1247"  :anon :subid("56_1339198201.402") :outer("36_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 362
    new $P103, "Undef"
    set $P1249, $P103
    .lex "$name", $P1249
    find_dynamic_lex $P106, "$*PASTCOMPILER"
    unless_null $P106, vivify_729
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["$PASTCOMPILER"]
    unless_null $P106, vivify_730
    die "Contextual $*PASTCOMPILER not found"
  vivify_730:
  vivify_729:
    find_lex $P107, "$node"
    unless_null $P107, vivify_731
    new $P107, "Undef"
  vivify_731:
    $P108 = $P107."name"()
    $P109 = $P106."as_post"($P108, "~" :named("rtype"))
    set $P1249, $P109
.annotate 'line', 363
    find_lex $P104, "$ops"
    unless_null $P104, vivify_732
    new $P104, "Undef"
  vivify_732:
    find_dynamic_lex $P107, "%*REG"
    unless_null $P107, vivify_733
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%REG"]
    unless_null $P107, vivify_734
    die "Contextual %*REG not found"
  vivify_734:
  vivify_733:
    set $P108, $P107["cur"]
    unless_null $P108, vivify_735
    new $P108, "Undef"
  vivify_735:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_736
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_737
    die "Contextual %*REG not found"
  vivify_737:
  vivify_736:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_738
    new $P112, "Undef"
  vivify_738:
    set $P113, $P1249
    unless_null $P113, vivify_739
    new $P113, "Undef"
  vivify_739:
    find_lex $P1250, "@backtrack"
    unless_null $P1250, vivify_740
    $P1250 = root_new ['parrot';'ResizablePMCArray']
  vivify_740:
    $P114 = $P104."push_pirop"("callmethod", "\"!cursor_pass\"", $P108, $P112, $P113, $P1250 :flat)
.annotate 'line', 361
    .return ($P114)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "pastnode" :anon :subid("37_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 372
    .lex "self", param_1253
    .lex "$node", param_1254
.annotate 'line', 373
    new $P100, "Undef"
    set $P1255, $P100
    .lex "$ops", $P1255
.annotate 'line', 376
    new $P101, "Undef"
    set $P1256, $P101
    .lex "$cpost", $P1256
.annotate 'line', 373
    set $P102, param_1253
    nqp_decontainerize $P103, $P102
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_746
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_747
    die "Contextual %*REG not found"
  vivify_747:
  vivify_746:
    set $P107, $P106["cur"]
    unless_null $P107, vivify_748
    new $P107, "Undef"
  vivify_748:
    $P108 = $P103."post_new"("Ops", $P107 :named("result"))
    set $P1255, $P108
.annotate 'line', 374
    set $P102, $P1255
    unless_null $P102, vivify_749
    new $P102, "Undef"
  vivify_749:
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_750
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_751
    die "Contextual %*REG not found"
  vivify_751:
  vivify_750:
    set $P106, $P105["cur"]
    unless_null $P106, vivify_752
    new $P106, "Undef"
  vivify_752:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_753
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_754
    die "Contextual %*REG not found"
  vivify_754:
  vivify_753:
    set $P110, $P109["curclass"]
    unless_null $P110, vivify_755
    new $P110, "Undef"
  vivify_755:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_756
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_757
    die "Contextual %*REG not found"
  vivify_757:
  vivify_756:
    set $P114, $P113["pos"]
    unless_null $P114, vivify_758
    new $P114, "Undef"
  vivify_758:
    $P102."push_pirop"("repr_bind_attr_int", $P106, $P110, "\"$!pos\"", $P114)
.annotate 'line', 375
    set $P102, $P1255
    unless_null $P102, vivify_759
    new $P102, "Undef"
  vivify_759:
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_760
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_761
    die "Contextual %*REG not found"
  vivify_761:
  vivify_760:
    set $P106, $P105["cur"]
    unless_null $P106, vivify_762
    new $P106, "Undef"
  vivify_762:
    $P102."push_pirop"("store_lex", unicode:"unicode:\"$\\x{a2}\"", $P106)
.annotate 'line', 376
    find_dynamic_lex $P104, "$*PASTCOMPILER"
    unless_null $P104, vivify_763
    get_hll_global $P102, "GLOBAL"
    get_who $P103, $P102
    set $P104, $P103["$PASTCOMPILER"]
    unless_null $P104, vivify_764
    die "Contextual $*PASTCOMPILER not found"
  vivify_764:
  vivify_763:
    set $P1257, param_1254
    unless_null $P1257, vivify_765
    $P1257 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    set $P105, $P1257[0]
    unless_null $P105, vivify_766
    new $P105, "Undef"
  vivify_766:
    $P106 = $P104."as_post"($P105, "P" :named("rtype"))
    set $P1256, $P106
.annotate 'line', 377
    set $P102, $P1255
    unless_null $P102, vivify_767
    new $P102, "Undef"
  vivify_767:
    set $P103, $P1256
    unless_null $P103, vivify_768
    new $P103, "Undef"
  vivify_768:
    $P102."push"($P103)
.annotate 'line', 378
    set $P102, param_1254
    unless_null $P102, vivify_769
    new $P102, "Undef"
  vivify_769:
    $S100 = $P102."subtype"()
    iseq $I100, $S100, "zerowidth"
    unless $I100, if_1258_end
.annotate 'line', 379
    set $P103, $P1255
    unless_null $P103, vivify_770
    new $P103, "Undef"
  vivify_770:
    set $P105, param_1254
    unless_null $P105, vivify_771
    new $P105, "Undef"
  vivify_771:
    $P106 = $P105."negate"()
    if $P106, if_1259
    new $P108, "String"
    assign $P108, "unless"
    set $P104, $P108
    goto if_1259_end
  if_1259:
    new $P107, "String"
    assign $P107, "if"
    set $P104, $P107
  if_1259_end:
    set $P109, $P1256
    unless_null $P109, vivify_772
    new $P109, "Undef"
  vivify_772:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_773
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_774
    die "Contextual %*REG not found"
  vivify_774:
  vivify_773:
    set $P113, $P112["fail"]
    unless_null $P113, vivify_775
    new $P113, "Undef"
  vivify_775:
    $P103."push_pirop"($P104, $P109, $P113)
  if_1258_end:
.annotate 'line', 372
    set $P102, $P1255
    unless_null $P102, vivify_776
    new $P102, "Undef"
  vivify_776:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "quant" :anon :subid("38_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1261
    .param pmc param_1262
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 384
    .const 'Sub' $P1283 = "57_1339198201.402" 
    capture_lex $P1283
    .lex "self", param_1261
    .lex "$node", param_1262
.annotate 'line', 385
    new $P100, "Undef"
    set $P1263, $P100
    .lex "$ops", $P1263
.annotate 'line', 386
    new $P101, "Undef"
    set $P1264, $P101
    .lex "$backtrack", $P1264
.annotate 'line', 387
    new $P102, "Undef"
    set $P1265, $P102
    .lex "$sep", $P1265
.annotate 'line', 388
    new $P103, "Undef"
    set $P1266, $P103
    .lex "$prefix", $P1266
.annotate 'line', 389
    new $P104, "Undef"
    set $P1267, $P104
    .lex "$looplabel", $P1267
.annotate 'line', 390
    new $P105, "Undef"
    set $P1268, $P105
    .lex "$donelabel", $P1268
.annotate 'line', 391
    new $P106, "Undef"
    set $P1269, $P106
    .lex "$min", $P1269
.annotate 'line', 392
    new $P107, "Undef"
    set $P1270, $P107
    .lex "$max", $P1270
.annotate 'line', 393
    new $P108, "Undef"
    set $P1271, $P108
    .lex "$needrep", $P1271
.annotate 'line', 394
    new $P109, "Undef"
    set $P1272, $P109
    .lex "$needmark", $P1272
.annotate 'line', 385
    set $P110, param_1261
    nqp_decontainerize $P111, $P110
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_777
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_778
    die "Contextual %*REG not found"
  vivify_778:
  vivify_777:
    set $P115, $P114["cur"]
    unless_null $P115, vivify_779
    new $P115, "Undef"
  vivify_779:
    $P116 = $P111."post_new"("Ops", $P115 :named("result"))
    set $P1263, $P116
.annotate 'line', 386
    set $P111, param_1262
    unless_null $P111, vivify_780
    new $P111, "Undef"
  vivify_780:
    $P112 = $P111."backtrack"()
    unless $P112, unless_1273
    set $P110, $P112
    goto unless_1273_end
  unless_1273:
    new $P113, "String"
    assign $P113, "g"
    set $P110, $P113
  unless_1273_end:
    set $P1264, $P110
.annotate 'line', 387
    set $P1274, param_1262
    unless_null $P1274, vivify_781
    $P1274 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P110, $P1274[1]
    unless_null $P110, vivify_782
    new $P110, "Undef"
  vivify_782:
    set $P1265, $P110
.annotate 'line', 388
    set $P110, param_1261
    nqp_decontainerize $P111, $P110
    new $P112, "String"
    assign $P112, "rxquant"
    set $P113, $P1264
    unless_null $P113, vivify_783
    new $P113, "Undef"
  vivify_783:
    concat $P114, $P112, $P113
    $P115 = $P111."unique"($P114)
    set $P1266, $P115
.annotate 'line', 389
    set $P110, param_1261
    nqp_decontainerize $P111, $P110
    set $P112, $P1266
    unless_null $P112, vivify_784
    new $P112, "Undef"
  vivify_784:
    concat $P113, $P112, "_loop"
    $P114 = $P111."post_new"("Label", $P113 :named("result"))
    set $P1267, $P114
.annotate 'line', 390
    set $P110, param_1261
    nqp_decontainerize $P111, $P110
    set $P112, $P1266
    unless_null $P112, vivify_785
    new $P112, "Undef"
  vivify_785:
    concat $P113, $P112, "_done"
    $P114 = $P111."post_new"("Label", $P113 :named("result"))
    set $P1268, $P114
.annotate 'line', 391
    set $P111, param_1262
    unless_null $P111, vivify_786
    new $P111, "Undef"
  vivify_786:
    $P112 = $P111."min"()
    unless $P112, unless_1275
    set $P110, $P112
    goto unless_1275_end
  unless_1275:
    new $P113, "Float"
    assign $P113, 0
    set $P110, $P113
  unless_1275_end:
    set $P1269, $P110
.annotate 'line', 392
    set $P110, param_1262
    unless_null $P110, vivify_787
    new $P110, "Undef"
  vivify_787:
    $P111 = $P110."max"()
    set $P1276, $P111
    defined $I1278, $P1276
    if $I1278, default_1277
    new $P112, "Float"
    assign $P112, -1
    set $P1276, $P112
  default_1277:
    set $P1270, $P1276
.annotate 'line', 393
    set $P111, $P1269
    unless_null $P111, vivify_788
    new $P111, "Undef"
  vivify_788:
    set $N100, $P111
    set $N101, 1
    isgt $I100, $N100, $N101
    unless $I100, unless_1279
    new $P110, 'Integer'
    set $P110, $I100
    goto unless_1279_end
  unless_1279:
    set $P112, $P1270
    unless_null $P112, vivify_789
    new $P112, "Undef"
  vivify_789:
    set $N102, $P112
    set $N103, 1
    isgt $I101, $N102, $N103
    new $P110, 'Integer'
    set $P110, $I101
  unless_1279_end:
    set $P1271, $P110
.annotate 'line', 394
    set $P111, $P1271
    unless_null $P111, vivify_790
    new $P111, "Undef"
  vivify_790:
    unless $P111, unless_1280
    set $P110, $P111
    goto unless_1280_end
  unless_1280:
    set $P112, $P1264
    unless_null $P112, vivify_791
    new $P112, "Undef"
  vivify_791:
    set $S100, $P112
    iseq $I100, $S100, "r"
    new $P110, 'Integer'
    set $P110, $I100
  unless_1280_end:
    set $P1272, $P110
.annotate 'line', 396
    set $P110, $P1263
    unless_null $P110, vivify_792
    new $P110, "Undef"
  vivify_792:
    set $P111, $P1266
    unless_null $P111, vivify_793
    new $P111, "Undef"
  vivify_793:
    set $P112, $P1269
    unless_null $P112, vivify_794
    new $P112, "Undef"
  vivify_794:
    set $P113, $P1270
    unless_null $P113, vivify_795
    new $P113, "Undef"
  vivify_795:
    $P110."push_pirop"("inline", $P111, $P112, $P113, "  # rx %0 ** %1..%2" :named("inline"))
.annotate 'line', 398
    set $P110, $P1264
    unless_null $P110, vivify_796
    new $P110, "Undef"
  vivify_796:
    set $S100, $P110
    iseq $I100, $S100, "f"
    if $I100, if_1281
.annotate 'line', 420
    set $P113, $P1269
    unless_null $P113, vivify_797
    new $P113, "Undef"
  vivify_797:
    set $N100, $P113
    set $N101, 0
    iseq $I101, $N100, $N101
    if $I101, if_1294
.annotate 'line', 421
    set $P114, $P1272
    unless_null $P114, vivify_798
    new $P114, "Undef"
  vivify_798:
    unless $P114, if_1295_end
    set $P116, param_1261
    nqp_decontainerize $P117, $P116
    set $P118, $P1263
    unless_null $P118, vivify_799
    new $P118, "Undef"
  vivify_799:
    set $P119, $P1268
    unless_null $P119, vivify_800
    new $P119, "Undef"
  vivify_800:
    $P117."regex_mark"($P118, $P119, -1, 0)
  if_1295_end:
    goto if_1294_end
  if_1294:
.annotate 'line', 420
    set $P114, param_1261
    nqp_decontainerize $P116, $P114
    set $P117, $P1263
    unless_null $P117, vivify_801
    new $P117, "Undef"
  vivify_801:
    set $P118, $P1268
    unless_null $P118, vivify_802
    new $P118, "Undef"
  vivify_802:
    find_dynamic_lex $P121, "%*REG"
    unless_null $P121, vivify_803
    get_hll_global $P119, "GLOBAL"
    get_who $P120, $P119
    set $P121, $P120["%REG"]
    unless_null $P121, vivify_804
    die "Contextual %*REG not found"
  vivify_804:
  vivify_803:
    set $P122, $P121["pos"]
    unless_null $P122, vivify_805
    new $P122, "Undef"
  vivify_805:
    $P116."regex_mark"($P117, $P118, $P122, 0)
  if_1294_end:
.annotate 'line', 422
    set $P113, $P1263
    unless_null $P113, vivify_806
    new $P113, "Undef"
  vivify_806:
    set $P114, $P1267
    unless_null $P114, vivify_807
    new $P114, "Undef"
  vivify_807:
    $P113."push"($P114)
.annotate 'line', 423
    set $P113, $P1263
    unless_null $P113, vivify_808
    new $P113, "Undef"
  vivify_808:
    set $P114, param_1261
    nqp_decontainerize $P116, $P114
    set $P1296, param_1262
    unless_null $P1296, vivify_809
    $P1296 = root_new ['parrot';'ResizablePMCArray']
  vivify_809:
    set $P117, $P1296[0]
    unless_null $P117, vivify_810
    new $P117, "Undef"
  vivify_810:
    $P118 = $P116."regex_post"($P117)
    $P113."push"($P118)
.annotate 'line', 424
    set $P113, $P1272
    unless_null $P113, vivify_811
    new $P113, "Undef"
  vivify_811:
    unless $P113, if_1297_end
.annotate 'line', 425
    set $P114, param_1261
    nqp_decontainerize $P116, $P114
    set $P117, $P1263
    unless_null $P117, vivify_812
    new $P117, "Undef"
  vivify_812:
    set $P118, $P1268
    unless_null $P118, vivify_813
    new $P118, "Undef"
  vivify_813:
    find_dynamic_lex $P121, "%*REG"
    unless_null $P121, vivify_814
    get_hll_global $P119, "GLOBAL"
    get_who $P120, $P119
    set $P121, $P120["%REG"]
    unless_null $P121, vivify_815
    die "Contextual %*REG not found"
  vivify_815:
  vivify_814:
    set $P122, $P121["rep"]
    unless_null $P122, vivify_816
    new $P122, "Undef"
  vivify_816:
    $P116."regex_peek"($P117, $P118, "*", $P122)
.annotate 'line', 426
    set $P114, $P1264
    unless_null $P114, vivify_817
    new $P114, "Undef"
  vivify_817:
    set $S101, $P114
    iseq $I101, $S101, "r"
    unless $I101, if_1298_end
    set $P116, param_1261
    nqp_decontainerize $P117, $P116
    set $P118, $P1263
    unless_null $P118, vivify_818
    new $P118, "Undef"
  vivify_818:
    set $P119, $P1268
    unless_null $P119, vivify_819
    new $P119, "Undef"
  vivify_819:
    $P117."regex_commit"($P118, $P119)
  if_1298_end:
.annotate 'line', 427
    set $P114, $P1263
    unless_null $P114, vivify_820
    new $P114, "Undef"
  vivify_820:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_821
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_822
    die "Contextual %*REG not found"
  vivify_822:
  vivify_821:
    set $P119, $P118["rep"]
    unless_null $P119, vivify_823
    new $P119, "Undef"
  vivify_823:
    $P114."push_pirop"("inc", $P119)
.annotate 'line', 429
    set $P114, $P1270
    unless_null $P114, vivify_824
    new $P114, "Undef"
  vivify_824:
    set $N100, $P114
    set $N101, 1
    isgt $I101, $N100, $N101
    unless $I101, if_1299_end
.annotate 'line', 428
    set $P116, $P1263
    unless_null $P116, vivify_825
    new $P116, "Undef"
  vivify_825:
    find_dynamic_lex $P119, "%*REG"
    unless_null $P119, vivify_826
    get_hll_global $P117, "GLOBAL"
    get_who $P118, $P117
    set $P119, $P118["%REG"]
    unless_null $P119, vivify_827
    die "Contextual %*REG not found"
  vivify_827:
  vivify_826:
    set $P120, $P119["rep"]
    unless_null $P120, vivify_828
    new $P120, "Undef"
  vivify_828:
    set $P121, param_1262
    unless_null $P121, vivify_829
    new $P121, "Undef"
  vivify_829:
    $P122 = $P121."max"()
    set $P123, $P1268
    unless_null $P123, vivify_830
    new $P123, "Undef"
  vivify_830:
    $P116."push_pirop"("ge", $P120, $P122, $P123)
  if_1299_end:
  if_1297_end:
.annotate 'line', 431
    set $P113, $P1270
    unless_null $P113, vivify_831
    new $P113, "Undef"
  vivify_831:
    set $N100, $P113
    set $N101, 1
    iseq $I101, $N100, $N101
    if $I101, unless_1300_end
.annotate 'line', 432
    set $P114, param_1261
    nqp_decontainerize $P116, $P114
    set $P117, $P1263
    unless_null $P117, vivify_832
    new $P117, "Undef"
  vivify_832:
    set $P118, $P1268
    unless_null $P118, vivify_833
    new $P118, "Undef"
  vivify_833:
    find_dynamic_lex $P121, "%*REG"
    unless_null $P121, vivify_834
    get_hll_global $P119, "GLOBAL"
    get_who $P120, $P119
    set $P121, $P120["%REG"]
    unless_null $P121, vivify_835
    die "Contextual %*REG not found"
  vivify_835:
  vivify_834:
    set $P122, $P121["pos"]
    unless_null $P122, vivify_836
    new $P122, "Undef"
  vivify_836:
    find_dynamic_lex $P125, "%*REG"
    unless_null $P125, vivify_837
    get_hll_global $P123, "GLOBAL"
    get_who $P124, $P123
    set $P125, $P124["%REG"]
    unless_null $P125, vivify_838
    die "Contextual %*REG not found"
  vivify_838:
  vivify_837:
    set $P126, $P125["rep"]
    unless_null $P126, vivify_839
    new $P126, "Undef"
  vivify_839:
    $P116."regex_mark"($P117, $P118, $P122, $P126)
.annotate 'line', 433
    set $P114, $P1265
    unless_null $P114, vivify_840
    new $P114, "Undef"
  vivify_840:
    unless $P114, if_1301_end
    set $P116, $P1263
    unless_null $P116, vivify_841
    new $P116, "Undef"
  vivify_841:
    set $P117, param_1261
    nqp_decontainerize $P118, $P117
    set $P119, $P1265
    unless_null $P119, vivify_842
    new $P119, "Undef"
  vivify_842:
    $P120 = $P118."regex_post"($P119)
    $P116."push"($P120)
  if_1301_end:
.annotate 'line', 434
    set $P114, $P1263
    unless_null $P114, vivify_843
    new $P114, "Undef"
  vivify_843:
    set $P116, $P1267
    unless_null $P116, vivify_844
    new $P116, "Undef"
  vivify_844:
    $P114."push_pirop"("goto", $P116)
  unless_1300_end:
.annotate 'line', 436
    set $P113, $P1263
    unless_null $P113, vivify_845
    new $P113, "Undef"
  vivify_845:
    set $P114, $P1268
    unless_null $P114, vivify_846
    new $P114, "Undef"
  vivify_846:
    $P113."push"($P114)
.annotate 'line', 438
    set $P113, $P1269
    unless_null $P113, vivify_847
    new $P113, "Undef"
  vivify_847:
    set $N100, $P113
    set $N101, 1
    isgt $I101, $N100, $N101
    unless $I101, if_1302_end
.annotate 'line', 437
    set $P114, $P1263
    unless_null $P114, vivify_848
    new $P114, "Undef"
  vivify_848:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_849
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_850
    die "Contextual %*REG not found"
  vivify_850:
  vivify_849:
    set $P119, $P118["rep"]
    unless_null $P119, vivify_851
    new $P119, "Undef"
  vivify_851:
    set $P120, param_1262
    unless_null $P120, vivify_852
    new $P120, "Undef"
  vivify_852:
    $P121 = $P120."min"()
    set $N102, $P121
    find_dynamic_lex $P124, "%*REG"
    unless_null $P124, vivify_853
    get_hll_global $P122, "GLOBAL"
    get_who $P123, $P122
    set $P124, $P123["%REG"]
    unless_null $P124, vivify_854
    die "Contextual %*REG not found"
  vivify_854:
  vivify_853:
    set $P125, $P124["fail"]
    unless_null $P125, vivify_855
    new $P125, "Undef"
  vivify_855:
    $P114."push_pirop"("lt", $P119, $N102, $P125)
  if_1302_end:
.annotate 'line', 419
    goto if_1281_end
  if_1281:
.annotate 'line', 398
    .const 'Sub' $P1283 = "57_1339198201.402" 
    capture_lex $P1283
    $P1283()
  if_1281_end:
.annotate 'line', 384
    set $P110, $P1263
    unless_null $P110, vivify_925
    new $P110, "Undef"
  vivify_925:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1282"  :anon :subid("57_1339198201.402") :outer("38_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 399
    new $P111, "Undef"
    set $P1284, $P111
    .lex "$seplabel", $P1284
.annotate 'line', 400
    new $P112, "Undef"
    set $P1285, $P112
    .lex "$ireg", $P1285
.annotate 'line', 399
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$prefix"
    unless_null $P115, vivify_856
    new $P115, "Undef"
  vivify_856:
    concat $P116, $P115, "_sep"
    $P117 = $P114."post_new"("Label", $P116 :named("result"))
    set $P1284, $P117
.annotate 'line', 400
    new $P113, "String"
    assign $P113, "$I12"
    set $P1285, $P113
.annotate 'line', 401
    find_lex $P113, "$ops"
    unless_null $P113, vivify_857
    new $P113, "Undef"
  vivify_857:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_858
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_859
    die "Contextual %*REG not found"
  vivify_859:
  vivify_858:
    set $P117, $P116["rep"]
    unless_null $P117, vivify_860
    new $P117, "Undef"
  vivify_860:
    $P113."push_pirop"("set", $P117, 0)
.annotate 'line', 402
    find_lex $P113, "$min"
    unless_null $P113, vivify_861
    new $P113, "Undef"
  vivify_861:
    set $N100, $P113
    set $N101, 1
    islt $I101, $N100, $N101
    unless $I101, if_1286_end
.annotate 'line', 403
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$ops"
    unless_null $P116, vivify_862
    new $P116, "Undef"
  vivify_862:
    find_lex $P117, "$looplabel"
    unless_null $P117, vivify_863
    new $P117, "Undef"
  vivify_863:
    find_dynamic_lex $P120, "%*REG"
    unless_null $P120, vivify_864
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["%REG"]
    unless_null $P120, vivify_865
    die "Contextual %*REG not found"
  vivify_865:
  vivify_864:
    set $P121, $P120["pos"]
    unless_null $P121, vivify_866
    new $P121, "Undef"
  vivify_866:
    find_dynamic_lex $P124, "%*REG"
    unless_null $P124, vivify_867
    get_hll_global $P122, "GLOBAL"
    get_who $P123, $P122
    set $P124, $P123["%REG"]
    unless_null $P124, vivify_868
    die "Contextual %*REG not found"
  vivify_868:
  vivify_867:
    set $P125, $P124["rep"]
    unless_null $P125, vivify_869
    new $P125, "Undef"
  vivify_869:
    $P115."regex_mark"($P116, $P117, $P121, $P125)
.annotate 'line', 404
    find_lex $P114, "$ops"
    unless_null $P114, vivify_870
    new $P114, "Undef"
  vivify_870:
    find_lex $P115, "$donelabel"
    unless_null $P115, vivify_871
    new $P115, "Undef"
  vivify_871:
    $P114."push_pirop"("goto", $P115)
  if_1286_end:
.annotate 'line', 406
    find_lex $P113, "$sep"
    unless_null $P113, vivify_872
    new $P113, "Undef"
  vivify_872:
    unless $P113, if_1287_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_873
    new $P114, "Undef"
  vivify_873:
    set $P115, $P1284
    unless_null $P115, vivify_874
    new $P115, "Undef"
  vivify_874:
    $P114."push_pirop"("goto", $P115)
  if_1287_end:
.annotate 'line', 407
    find_lex $P113, "$ops"
    unless_null $P113, vivify_875
    new $P113, "Undef"
  vivify_875:
    find_lex $P114, "$looplabel"
    unless_null $P114, vivify_876
    new $P114, "Undef"
  vivify_876:
    $P113."push"($P114)
.annotate 'line', 408
    find_lex $P113, "$ops"
    unless_null $P113, vivify_877
    new $P113, "Undef"
  vivify_877:
    set $P114, $P1285
    unless_null $P114, vivify_878
    new $P114, "Undef"
  vivify_878:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_879
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_880
    die "Contextual %*REG not found"
  vivify_880:
  vivify_879:
    set $P118, $P117["rep"]
    unless_null $P118, vivify_881
    new $P118, "Undef"
  vivify_881:
    $P113."push_pirop"("set", $P114, $P118)
.annotate 'line', 409
    find_lex $P113, "$sep"
    unless_null $P113, vivify_882
    new $P113, "Undef"
  vivify_882:
    unless $P113, if_1288_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_883
    new $P114, "Undef"
  vivify_883:
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    find_lex $P117, "$sep"
    unless_null $P117, vivify_884
    new $P117, "Undef"
  vivify_884:
    $P118 = $P116."regex_post"($P117)
    $P114."push"($P118)
  if_1288_end:
.annotate 'line', 410
    find_lex $P113, "$sep"
    unless_null $P113, vivify_885
    new $P113, "Undef"
  vivify_885:
    unless $P113, if_1289_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_886
    new $P114, "Undef"
  vivify_886:
    set $P115, $P1284
    unless_null $P115, vivify_887
    new $P115, "Undef"
  vivify_887:
    $P114."push"($P115)
  if_1289_end:
.annotate 'line', 411
    find_lex $P113, "$ops"
    unless_null $P113, vivify_888
    new $P113, "Undef"
  vivify_888:
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P1290, "$node"
    unless_null $P1290, vivify_889
    $P1290 = root_new ['parrot';'ResizablePMCArray']
  vivify_889:
    set $P116, $P1290[0]
    unless_null $P116, vivify_890
    new $P116, "Undef"
  vivify_890:
    $P117 = $P115."regex_post"($P116)
    $P113."push"($P117)
.annotate 'line', 412
    find_lex $P113, "$ops"
    unless_null $P113, vivify_891
    new $P113, "Undef"
  vivify_891:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_892
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_893
    die "Contextual %*REG not found"
  vivify_893:
  vivify_892:
    set $P117, $P116["rep"]
    unless_null $P117, vivify_894
    new $P117, "Undef"
  vivify_894:
    set $P118, $P1285
    unless_null $P118, vivify_895
    new $P118, "Undef"
  vivify_895:
    $P113."push_pirop"("set", $P117, $P118)
.annotate 'line', 413
    find_lex $P113, "$ops"
    unless_null $P113, vivify_896
    new $P113, "Undef"
  vivify_896:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_897
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_898
    die "Contextual %*REG not found"
  vivify_898:
  vivify_897:
    set $P117, $P116["rep"]
    unless_null $P117, vivify_899
    new $P117, "Undef"
  vivify_899:
    $P113."push_pirop"("inc", $P117)
.annotate 'line', 414
    find_lex $P113, "$min"
    unless_null $P113, vivify_900
    new $P113, "Undef"
  vivify_900:
    set $N100, $P113
    set $N101, 1
    isgt $I101, $N100, $N101
    unless $I101, if_1291_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_901
    new $P114, "Undef"
  vivify_901:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_902
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_903
    die "Contextual %*REG not found"
  vivify_903:
  vivify_902:
    set $P118, $P117["rep"]
    unless_null $P118, vivify_904
    new $P118, "Undef"
  vivify_904:
    find_lex $P119, "$min"
    unless_null $P119, vivify_905
    new $P119, "Undef"
  vivify_905:
    find_lex $P120, "$looplabel"
    unless_null $P120, vivify_906
    new $P120, "Undef"
  vivify_906:
    $P114."push_pirop"("lt", $P118, $P119, $P120)
  if_1291_end:
.annotate 'line', 415
    find_lex $P113, "$max"
    unless_null $P113, vivify_907
    new $P113, "Undef"
  vivify_907:
    set $N100, $P113
    set $N101, 1
    isgt $I101, $N100, $N101
    unless $I101, if_1292_end
    find_lex $P114, "$ops"
    unless_null $P114, vivify_908
    new $P114, "Undef"
  vivify_908:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_909
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_910
    die "Contextual %*REG not found"
  vivify_910:
  vivify_909:
    set $P118, $P117["rep"]
    unless_null $P118, vivify_911
    new $P118, "Undef"
  vivify_911:
    find_lex $P119, "$max"
    unless_null $P119, vivify_912
    new $P119, "Undef"
  vivify_912:
    find_lex $P120, "$donelabel"
    unless_null $P120, vivify_913
    new $P120, "Undef"
  vivify_913:
    $P114."push_pirop"("ge", $P118, $P119, $P120)
  if_1292_end:
.annotate 'line', 416
    find_lex $P113, "$max"
    unless_null $P113, vivify_914
    new $P113, "Undef"
  vivify_914:
    set $N100, $P113
    set $N101, 1
    isne $I101, $N100, $N101
    unless $I101, if_1293_end
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$ops"
    unless_null $P116, vivify_915
    new $P116, "Undef"
  vivify_915:
    find_lex $P117, "$looplabel"
    unless_null $P117, vivify_916
    new $P117, "Undef"
  vivify_916:
    find_dynamic_lex $P120, "%*REG"
    unless_null $P120, vivify_917
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["%REG"]
    unless_null $P120, vivify_918
    die "Contextual %*REG not found"
  vivify_918:
  vivify_917:
    set $P121, $P120["pos"]
    unless_null $P121, vivify_919
    new $P121, "Undef"
  vivify_919:
    find_dynamic_lex $P124, "%*REG"
    unless_null $P124, vivify_920
    get_hll_global $P122, "GLOBAL"
    get_who $P123, $P122
    set $P124, $P123["%REG"]
    unless_null $P124, vivify_921
    die "Contextual %*REG not found"
  vivify_921:
  vivify_920:
    set $P125, $P124["rep"]
    unless_null $P125, vivify_922
    new $P125, "Undef"
  vivify_922:
    $P115."regex_mark"($P116, $P117, $P121, $P125)
  if_1293_end:
.annotate 'line', 417
    find_lex $P113, "$ops"
    unless_null $P113, vivify_923
    new $P113, "Undef"
  vivify_923:
    find_lex $P114, "$donelabel"
    unless_null $P114, vivify_924
    new $P114, "Undef"
  vivify_924:
    $P115 = $P113."push"($P114)
.annotate 'line', 398
    .return ($P115)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "scan" :anon :subid("39_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1304
    .param pmc param_1305
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 443
    .lex "self", param_1304
    .lex "$node", param_1305
.annotate 'line', 444
    new $P100, "Undef"
    set $P1306, $P100
    .lex "$ops", $P1306
.annotate 'line', 445
    new $P101, "Undef"
    set $P1307, $P101
    .lex "$prefix", $P1307
.annotate 'line', 446
    new $P102, "Undef"
    set $P1308, $P102
    .lex "$looplabel", $P1308
.annotate 'line', 447
    new $P103, "Undef"
    set $P1309, $P103
    .lex "$scanlabel", $P1309
.annotate 'line', 448
    new $P104, "Undef"
    set $P1310, $P104
    .lex "$donelabel", $P1310
.annotate 'line', 444
    set $P105, param_1304
    nqp_decontainerize $P106, $P105
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_926
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_927
    die "Contextual %*REG not found"
  vivify_927:
  vivify_926:
    set $P110, $P109["cur"]
    unless_null $P110, vivify_928
    new $P110, "Undef"
  vivify_928:
    $P111 = $P106."post_new"("Ops", $P110 :named("result"))
    set $P1306, $P111
.annotate 'line', 445
    set $P105, param_1304
    nqp_decontainerize $P106, $P105
    $P107 = $P106."unique"("rxscan")
    set $P1307, $P107
.annotate 'line', 446
    set $P105, param_1304
    nqp_decontainerize $P106, $P105
    set $P107, $P1307
    unless_null $P107, vivify_929
    new $P107, "Undef"
  vivify_929:
    concat $P108, $P107, "_loop"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1308, $P109
.annotate 'line', 447
    set $P105, param_1304
    nqp_decontainerize $P106, $P105
    set $P107, $P1307
    unless_null $P107, vivify_930
    new $P107, "Undef"
  vivify_930:
    concat $P108, $P107, "_scan"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1309, $P109
.annotate 'line', 448
    set $P105, param_1304
    nqp_decontainerize $P106, $P105
    set $P107, $P1307
    unless_null $P107, vivify_931
    new $P107, "Undef"
  vivify_931:
    concat $P108, $P107, "_done"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1310, $P109
.annotate 'line', 449
    set $P105, $P1306
    unless_null $P105, vivify_932
    new $P105, "Undef"
  vivify_932:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_933
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_934
    die "Contextual %*REG not found"
  vivify_934:
  vivify_933:
    set $P109, $P108["curclass"]
    unless_null $P109, vivify_935
    new $P109, "Undef"
  vivify_935:
    $P105."push_pirop"("repr_get_attr_int", "$I11", "self", $P109, "\"$!from\"")
.annotate 'line', 450
    set $P105, $P1306
    unless_null $P105, vivify_936
    new $P105, "Undef"
  vivify_936:
    set $P106, $P1310
    unless_null $P106, vivify_937
    new $P106, "Undef"
  vivify_937:
    $P105."push_pirop"("ne", "$I11", -1, $P106)
.annotate 'line', 451
    set $P105, $P1306
    unless_null $P105, vivify_938
    new $P105, "Undef"
  vivify_938:
    set $P106, $P1309
    unless_null $P106, vivify_939
    new $P106, "Undef"
  vivify_939:
    $P105."push_pirop"("goto", $P106)
.annotate 'line', 452
    set $P105, $P1306
    unless_null $P105, vivify_940
    new $P105, "Undef"
  vivify_940:
    set $P106, $P1308
    unless_null $P106, vivify_941
    new $P106, "Undef"
  vivify_941:
    $P105."push"($P106)
.annotate 'line', 453
    set $P105, $P1306
    unless_null $P105, vivify_942
    new $P105, "Undef"
  vivify_942:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_943
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_944
    die "Contextual %*REG not found"
  vivify_944:
  vivify_943:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_945
    new $P109, "Undef"
  vivify_945:
    $P105."push_pirop"("inc", $P109)
.annotate 'line', 454
    set $P105, $P1306
    unless_null $P105, vivify_946
    new $P105, "Undef"
  vivify_946:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_947
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_948
    die "Contextual %*REG not found"
  vivify_948:
  vivify_947:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_949
    new $P109, "Undef"
  vivify_949:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_950
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_951
    die "Contextual %*REG not found"
  vivify_951:
  vivify_950:
    set $P113, $P112["eos"]
    unless_null $P113, vivify_952
    new $P113, "Undef"
  vivify_952:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_953
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_954
    die "Contextual %*REG not found"
  vivify_954:
  vivify_953:
    set $P117, $P116["fail"]
    unless_null $P117, vivify_955
    new $P117, "Undef"
  vivify_955:
    $P105."push_pirop"("gt", $P109, $P113, $P117)
.annotate 'line', 455
    set $P105, $P1306
    unless_null $P105, vivify_956
    new $P105, "Undef"
  vivify_956:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_957
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_958
    die "Contextual %*REG not found"
  vivify_958:
  vivify_957:
    set $P109, $P108["cur"]
    unless_null $P109, vivify_959
    new $P109, "Undef"
  vivify_959:
    find_dynamic_lex $P112, "%*REG"
    unless_null $P112, vivify_960
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%REG"]
    unless_null $P112, vivify_961
    die "Contextual %*REG not found"
  vivify_961:
  vivify_960:
    set $P113, $P112["curclass"]
    unless_null $P113, vivify_962
    new $P113, "Undef"
  vivify_962:
    find_dynamic_lex $P116, "%*REG"
    unless_null $P116, vivify_963
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["%REG"]
    unless_null $P116, vivify_964
    die "Contextual %*REG not found"
  vivify_964:
  vivify_963:
    set $P117, $P116["pos"]
    unless_null $P117, vivify_965
    new $P117, "Undef"
  vivify_965:
    $P105."push_pirop"("repr_bind_attr_int", $P109, $P113, "\"$!from\"", $P117)
.annotate 'line', 456
    set $P105, $P1306
    unless_null $P105, vivify_966
    new $P105, "Undef"
  vivify_966:
    set $P106, $P1309
    unless_null $P106, vivify_967
    new $P106, "Undef"
  vivify_967:
    $P105."push"($P106)
.annotate 'line', 457
    set $P105, param_1304
    nqp_decontainerize $P106, $P105
    set $P107, $P1306
    unless_null $P107, vivify_968
    new $P107, "Undef"
  vivify_968:
    set $P108, $P1308
    unless_null $P108, vivify_969
    new $P108, "Undef"
  vivify_969:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_970
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_971
    die "Contextual %*REG not found"
  vivify_971:
  vivify_970:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_972
    new $P112, "Undef"
  vivify_972:
    $P106."regex_mark"($P107, $P108, $P112, 0)
.annotate 'line', 458
    set $P105, $P1306
    unless_null $P105, vivify_973
    new $P105, "Undef"
  vivify_973:
    set $P106, $P1310
    unless_null $P106, vivify_974
    new $P106, "Undef"
  vivify_974:
    $P105."push"($P106)
.annotate 'line', 443
    set $P105, $P1306
    unless_null $P105, vivify_975
    new $P105, "Undef"
  vivify_975:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "subcapture" :anon :subid("40_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1312
    .param pmc param_1313
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 462
    .lex "self", param_1312
    .lex "$node", param_1313
.annotate 'line', 463
    new $P100, "Undef"
    set $P1314, $P100
    .lex "$ops", $P1314
.annotate 'line', 464
    new $P101, "Undef"
    set $P1315, $P101
    .lex "$prefix", $P1315
.annotate 'line', 465
    new $P102, "Undef"
    set $P1316, $P102
    .lex "$donelabel", $P1316
.annotate 'line', 466
    new $P103, "Undef"
    set $P1317, $P103
    .lex "$faillabel", $P1317
.annotate 'line', 467
    new $P104, "Undef"
    set $P1318, $P104
    .lex "$name", $P1318
.annotate 'line', 463
    set $P105, param_1312
    nqp_decontainerize $P106, $P105
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_976
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_977
    die "Contextual %*REG not found"
  vivify_977:
  vivify_976:
    set $P110, $P109["cur"]
    unless_null $P110, vivify_978
    new $P110, "Undef"
  vivify_978:
    $P111 = $P106."post_new"("Ops", $P110 :named("result"))
    set $P1314, $P111
.annotate 'line', 464
    set $P105, param_1312
    nqp_decontainerize $P106, $P105
    $P107 = $P106."unique"("rxcap")
    set $P1315, $P107
.annotate 'line', 465
    set $P105, param_1312
    nqp_decontainerize $P106, $P105
    set $P107, $P1315
    unless_null $P107, vivify_979
    new $P107, "Undef"
  vivify_979:
    concat $P108, $P107, "_done"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1316, $P109
.annotate 'line', 466
    set $P105, param_1312
    nqp_decontainerize $P106, $P105
    set $P107, $P1315
    unless_null $P107, vivify_980
    new $P107, "Undef"
  vivify_980:
    concat $P108, $P107, "_fail"
    $P109 = $P106."post_new"("Label", $P108 :named("result"))
    set $P1317, $P109
.annotate 'line', 467
    find_dynamic_lex $P107, "$*PASTCOMPILER"
    unless_null $P107, vivify_981
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["$PASTCOMPILER"]
    unless_null $P107, vivify_982
    die "Contextual $*PASTCOMPILER not found"
  vivify_982:
  vivify_981:
    set $P108, param_1313
    unless_null $P108, vivify_983
    new $P108, "Undef"
  vivify_983:
    $P109 = $P108."name"()
    $P110 = $P107."as_post"($P109, "*" :named("rtype"))
    set $P1318, $P110
.annotate 'line', 468
    set $P105, param_1312
    nqp_decontainerize $P106, $P105
    set $P107, $P1314
    unless_null $P107, vivify_984
    new $P107, "Undef"
  vivify_984:
    set $P108, $P1317
    unless_null $P108, vivify_985
    new $P108, "Undef"
  vivify_985:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_986
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_987
    die "Contextual %*REG not found"
  vivify_987:
  vivify_986:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_988
    new $P112, "Undef"
  vivify_988:
    $P106."regex_mark"($P107, $P108, $P112, 0)
.annotate 'line', 469
    set $P105, $P1314
    unless_null $P105, vivify_989
    new $P105, "Undef"
  vivify_989:
    set $P106, param_1312
    nqp_decontainerize $P107, $P106
    set $P1319, param_1313
    unless_null $P1319, vivify_990
    $P1319 = root_new ['parrot';'ResizablePMCArray']
  vivify_990:
    set $P108, $P1319[0]
    unless_null $P108, vivify_991
    new $P108, "Undef"
  vivify_991:
    $P109 = $P107."regex_post"($P108)
    $P105."push"($P109)
.annotate 'line', 470
    set $P105, param_1312
    nqp_decontainerize $P106, $P105
    set $P107, $P1314
    unless_null $P107, vivify_992
    new $P107, "Undef"
  vivify_992:
    set $P108, $P1317
    unless_null $P108, vivify_993
    new $P108, "Undef"
  vivify_993:
    $P106."regex_peek"($P107, $P108, "$I11")
.annotate 'line', 471
    set $P105, $P1314
    unless_null $P105, vivify_994
    new $P105, "Undef"
  vivify_994:
    set $P106, $P1318
    unless_null $P106, vivify_995
    new $P106, "Undef"
  vivify_995:
    $P105."push"($P106)
.annotate 'line', 472
    set $P105, $P1314
    unless_null $P105, vivify_996
    new $P105, "Undef"
  vivify_996:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_997
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_998
    die "Contextual %*REG not found"
  vivify_998:
  vivify_997:
    set $P109, $P108["cur"]
    unless_null $P109, vivify_999
    new $P109, "Undef"
  vivify_999:
    $P105."push_pirop"("callmethod", "\"!cursor_start_subcapture\"", $P109, "$I11", "$P11" :named("result"))
.annotate 'line', 473
    set $P105, $P1314
    unless_null $P105, vivify_1000
    new $P105, "Undef"
  vivify_1000:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_1001
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_1002
    die "Contextual %*REG not found"
  vivify_1002:
  vivify_1001:
    set $P109, $P108["pos"]
    unless_null $P109, vivify_1003
    new $P109, "Undef"
  vivify_1003:
    $P105."push_pirop"("callmethod", "\"!cursor_pass\"", "$P11", $P109)
.annotate 'line', 474
    set $P105, $P1314
    unless_null $P105, vivify_1004
    new $P105, "Undef"
  vivify_1004:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_1005
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_1006
    die "Contextual %*REG not found"
  vivify_1006:
  vivify_1005:
    set $P109, $P108["cur"]
    unless_null $P109, vivify_1007
    new $P109, "Undef"
  vivify_1007:
    set $P110, $P1318
    unless_null $P110, vivify_1008
    new $P110, "Undef"
  vivify_1008:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_1009
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_1010
    die "Contextual %*REG not found"
  vivify_1010:
  vivify_1009:
    set $P114, $P113["cstack"]
    unless_null $P114, vivify_1011
    new $P114, "Undef"
  vivify_1011:
    $P105."push_pirop"("callmethod", "\"!cursor_capture\"", $P109, "$P11", $P110, $P114 :named("result"))
.annotate 'line', 476
    set $P105, $P1314
    unless_null $P105, vivify_1012
    new $P105, "Undef"
  vivify_1012:
    set $P106, $P1316
    unless_null $P106, vivify_1013
    new $P106, "Undef"
  vivify_1013:
    $P105."push_pirop"("goto", $P106)
.annotate 'line', 477
    set $P105, $P1314
    unless_null $P105, vivify_1014
    new $P105, "Undef"
  vivify_1014:
    set $P106, $P1317
    unless_null $P106, vivify_1015
    new $P106, "Undef"
  vivify_1015:
    $P105."push"($P106)
.annotate 'line', 478
    set $P105, $P1314
    unless_null $P105, vivify_1016
    new $P105, "Undef"
  vivify_1016:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_1017
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_1018
    die "Contextual %*REG not found"
  vivify_1018:
  vivify_1017:
    set $P109, $P108["fail"]
    unless_null $P109, vivify_1019
    new $P109, "Undef"
  vivify_1019:
    $P105."push_pirop"("goto", $P109)
.annotate 'line', 479
    set $P105, $P1314
    unless_null $P105, vivify_1020
    new $P105, "Undef"
  vivify_1020:
    set $P106, $P1316
    unless_null $P106, vivify_1021
    new $P106, "Undef"
  vivify_1021:
    $P105."push"($P106)
.annotate 'line', 462
    set $P105, $P1314
    unless_null $P105, vivify_1022
    new $P105, "Undef"
  vivify_1022:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "subrule" :anon :subid("41_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1321
    .param pmc param_1322
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 483
    .const 'Sub' $P1350 = "58_1339198201.402" 
    capture_lex $P1350
    .lex "self", param_1321
    .lex "$node", param_1322
.annotate 'line', 484
    new $P100, "Undef"
    set $P1323, $P100
    .lex "$ops", $P1323
.annotate 'line', 485
    new $P101, "Undef"
    set $P1324, $P101
    .lex "$name", $P1324
.annotate 'line', 486
    new $P102, "Undef"
    set $P1325, $P102
    .lex "$subtype", $P1325
.annotate 'line', 487
    new $P103, "Undef"
    set $P1326, $P103
    .lex "$cpn", $P1326
.annotate 'line', 488
    $P1328 = root_new ['parrot';'ResizablePMCArray']
    set $P1327, $P1328
    .lex "@pargs", $P1327
.annotate 'line', 489
    $P1330 = root_new ['parrot';'ResizablePMCArray']
    set $P1329, $P1330
    .lex "@nargs", $P1329
.annotate 'line', 490
    new $P104, "Undef"
    set $P1331, $P104
    .lex "$subpost", $P1331
.annotate 'line', 491
    new $P105, "Undef"
    set $P1332, $P105
    .lex "$testop", $P1332
.annotate 'line', 492
    new $P106, "Undef"
    set $P1333, $P106
    .lex "$captured", $P1333
.annotate 'line', 484
    set $P107, param_1321
    nqp_decontainerize $P108, $P107
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_1023
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_1024
    die "Contextual %*REG not found"
  vivify_1024:
  vivify_1023:
    set $P112, $P111["cur"]
    unless_null $P112, vivify_1025
    new $P112, "Undef"
  vivify_1025:
    $P113 = $P108."post_new"("Ops", $P112 :named("result"))
    set $P1323, $P113
.annotate 'line', 485
    find_dynamic_lex $P109, "$*PASTCOMPILER"
    unless_null $P109, vivify_1026
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["$PASTCOMPILER"]
    unless_null $P109, vivify_1027
    die "Contextual $*PASTCOMPILER not found"
  vivify_1027:
  vivify_1026:
    set $P110, param_1322
    unless_null $P110, vivify_1028
    new $P110, "Undef"
  vivify_1028:
    $P111 = $P110."name"()
    $P112 = $P109."as_post"($P111, "*" :named("rtype"))
    set $P1324, $P112
.annotate 'line', 486
    set $P107, param_1322
    unless_null $P107, vivify_1029
    new $P107, "Undef"
  vivify_1029:
    $P108 = $P107."subtype"()
    set $P1325, $P108
.annotate 'line', 487
    set $P107, param_1321
    nqp_decontainerize $P108, $P107
    set $P1334, param_1322
    unless_null $P1334, vivify_1030
    $P1334 = root_new ['parrot';'ResizablePMCArray']
  vivify_1030:
    set $P109, $P1334[0]
    unless_null $P109, vivify_1031
    new $P109, "Undef"
  vivify_1031:
    $P110 = $P108."post_children"($P109)
    set $P1326, $P110
.annotate 'line', 488
    set $P1336, $P1326
    unless_null $P1336, vivify_1032
    $P1336 = root_new ['parrot';'ResizablePMCArray']
  vivify_1032:
    set $P107, $P1336[1]
    unless_null $P107, vivify_1033
    new $P107, "Undef"
  vivify_1033:
    set $P1335, $P107
    defined $I1338, $P1335
    if $I1338, default_1337
    new $P108, "ResizablePMCArray"
    set $P1335, $P108
  default_1337:
    set $P1327, $P1335
.annotate 'line', 489
    set $P1340, $P1326
    unless_null $P1340, vivify_1034
    $P1340 = root_new ['parrot';'ResizablePMCArray']
  vivify_1034:
    set $P107, $P1340[2]
    unless_null $P107, vivify_1035
    new $P107, "Undef"
  vivify_1035:
    set $P1339, $P107
    defined $I1342, $P1339
    if $I1342, default_1341
    new $P108, "ResizablePMCArray"
    set $P1339, $P108
  default_1341:
    set $P1329, $P1339
.annotate 'line', 490
    set $P1343, $P1327
    unless_null $P1343, vivify_1036
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_1036:
    shift $P107, $P1343
    set $P1331, $P107
.annotate 'line', 491
    set $P108, param_1322
    unless_null $P108, vivify_1037
    new $P108, "Undef"
  vivify_1037:
    $P109 = $P108."negate"()
    if $P109, if_1344
    new $P111, "String"
    assign $P111, "lt"
    set $P107, $P111
    goto if_1344_end
  if_1344:
    new $P110, "String"
    assign $P110, "ge"
    set $P107, $P110
  if_1344_end:
    set $P1332, $P107
.annotate 'line', 492
    new $P107, "Float"
    assign $P107, 0
    set $P1333, $P107
.annotate 'line', 493
    set $P107, $P1323
    unless_null $P107, vivify_1038
    new $P107, "Undef"
  vivify_1038:
    set $P1345, $P1326
    unless_null $P1345, vivify_1039
    $P1345 = root_new ['parrot';'ResizablePMCArray']
  vivify_1039:
    set $P108, $P1345[0]
    unless_null $P108, vivify_1040
    new $P108, "Undef"
  vivify_1040:
    $P107."push"($P108)
.annotate 'line', 494
    set $P107, $P1323
    unless_null $P107, vivify_1041
    new $P107, "Undef"
  vivify_1041:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_1042
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_1043
    die "Contextual %*REG not found"
  vivify_1043:
  vivify_1042:
    set $P111, $P110["cur"]
    unless_null $P111, vivify_1044
    new $P111, "Undef"
  vivify_1044:
    find_dynamic_lex $P114, "%*REG"
    unless_null $P114, vivify_1045
    get_hll_global $P112, "GLOBAL"
    get_who $P113, $P112
    set $P114, $P113["%REG"]
    unless_null $P114, vivify_1046
    die "Contextual %*REG not found"
  vivify_1046:
  vivify_1045:
    set $P115, $P114["curclass"]
    unless_null $P115, vivify_1047
    new $P115, "Undef"
  vivify_1047:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1048
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1049
    die "Contextual %*REG not found"
  vivify_1049:
  vivify_1048:
    set $P119, $P118["pos"]
    unless_null $P119, vivify_1050
    new $P119, "Undef"
  vivify_1050:
    $P107."push_pirop"("repr_bind_attr_int", $P111, $P115, "\"$!pos\"", $P119)
.annotate 'line', 495
    set $P107, $P1323
    unless_null $P107, vivify_1051
    new $P107, "Undef"
  vivify_1051:
    set $P108, $P1331
    unless_null $P108, vivify_1052
    new $P108, "Undef"
  vivify_1052:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_1053
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_1054
    die "Contextual %*REG not found"
  vivify_1054:
  vivify_1053:
    set $P112, $P111["cur"]
    unless_null $P112, vivify_1055
    new $P112, "Undef"
  vivify_1055:
    set $P1346, $P1327
    unless_null $P1346, vivify_1056
    $P1346 = root_new ['parrot';'ResizablePMCArray']
  vivify_1056:
    set $P1347, $P1329
    unless_null $P1347, vivify_1057
    $P1347 = root_new ['parrot';'ResizablePMCArray']
  vivify_1057:
    $P107."push_pirop"("callmethod", $P108, $P112, $P1346 :flat, $P1347 :flat, "$P11" :named("result"))
.annotate 'line', 496
    set $P107, $P1323
    unless_null $P107, vivify_1058
    new $P107, "Undef"
  vivify_1058:
    find_dynamic_lex $P110, "%*REG"
    unless_null $P110, vivify_1059
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%REG"]
    unless_null $P110, vivify_1060
    die "Contextual %*REG not found"
  vivify_1060:
  vivify_1059:
    set $P111, $P110["curclass"]
    unless_null $P111, vivify_1061
    new $P111, "Undef"
  vivify_1061:
    $P107."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P111, "\"$!pos\"")
.annotate 'line', 497
    set $P107, $P1323
    unless_null $P107, vivify_1062
    new $P107, "Undef"
  vivify_1062:
    set $P108, $P1332
    unless_null $P108, vivify_1063
    new $P108, "Undef"
  vivify_1063:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_1064
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_1065
    die "Contextual %*REG not found"
  vivify_1065:
  vivify_1064:
    set $P112, $P111["fail"]
    unless_null $P112, vivify_1066
    new $P112, "Undef"
  vivify_1066:
    $P107."push_pirop"($P108, "$I11", "0", $P112)
.annotate 'line', 498
    set $P107, $P1325
    unless_null $P107, vivify_1067
    new $P107, "Undef"
  vivify_1067:
    set $S100, $P107
    isne $I100, $S100, "zerowidth"
    unless $I100, if_1348_end
    .const 'Sub' $P1350 = "58_1339198201.402" 
    capture_lex $P1350
    $P1350()
  if_1348_end:
.annotate 'line', 534
    set $P108, $P1333
    unless_null $P108, vivify_1133
    new $P108, "Undef"
  vivify_1133:
    isfalse $I100, $P108
    if $I100, if_1360
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1360_end
  if_1360:
    set $P109, $P1325
    unless_null $P109, vivify_1134
    new $P109, "Undef"
  vivify_1134:
    set $S100, $P109
    iseq $I101, $S100, "capture"
    new $P107, 'Integer'
    set $P107, $I101
  if_1360_end:
    unless $P107, if_1359_end
.annotate 'line', 532
    set $P110, $P1323
    unless_null $P110, vivify_1135
    new $P110, "Undef"
  vivify_1135:
    find_dynamic_lex $P113, "%*REG"
    unless_null $P113, vivify_1136
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%REG"]
    unless_null $P113, vivify_1137
    die "Contextual %*REG not found"
  vivify_1137:
  vivify_1136:
    set $P114, $P113["cur"]
    unless_null $P114, vivify_1138
    new $P114, "Undef"
  vivify_1138:
    set $P115, $P1324
    unless_null $P115, vivify_1139
    new $P115, "Undef"
  vivify_1139:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1140
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1141
    die "Contextual %*REG not found"
  vivify_1141:
  vivify_1140:
    set $P119, $P118["cstack"]
    unless_null $P119, vivify_1142
    new $P119, "Undef"
  vivify_1142:
    $P110."push_pirop"("callmethod", "\"!cursor_capture\"", $P114, "$P11", $P115, $P119 :named("result"))
  if_1359_end:
.annotate 'line', 536
    set $P107, $P1325
    unless_null $P107, vivify_1143
    new $P107, "Undef"
  vivify_1143:
    set $S100, $P107
    iseq $I100, $S100, "zerowidth"
    if $I100, unless_1361_end
.annotate 'line', 535
    set $P108, $P1323
    unless_null $P108, vivify_1144
    new $P108, "Undef"
  vivify_1144:
    find_dynamic_lex $P111, "%*REG"
    unless_null $P111, vivify_1145
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%REG"]
    unless_null $P111, vivify_1146
    die "Contextual %*REG not found"
  vivify_1146:
  vivify_1145:
    set $P112, $P111["pos"]
    unless_null $P112, vivify_1147
    new $P112, "Undef"
  vivify_1147:
    find_dynamic_lex $P115, "%*REG"
    unless_null $P115, vivify_1148
    get_hll_global $P113, "GLOBAL"
    get_who $P114, $P113
    set $P115, $P114["%REG"]
    unless_null $P115, vivify_1149
    die "Contextual %*REG not found"
  vivify_1149:
  vivify_1148:
    set $P116, $P115["curclass"]
    unless_null $P116, vivify_1150
    new $P116, "Undef"
  vivify_1150:
    $P108."push_pirop"("repr_get_attr_int", $P112, "$P11", $P116, "\"$!pos\"")
  unless_1361_end:
.annotate 'line', 483
    set $P107, $P1323
    unless_null $P107, vivify_1151
    new $P107, "Undef"
  vivify_1151:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1349"  :anon :subid("58_1339198201.402") :outer("41_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 498
    .const 'Sub' $P1356 = "59_1339198201.402" 
    capture_lex $P1356
.annotate 'line', 499
    new $P108, "Undef"
    set $P1351, $P108
    .lex "$rxname", $P1351
.annotate 'line', 500
    new $P109, "Undef"
    set $P1352, $P109
    .lex "$passlabel", $P1352
.annotate 'line', 499
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    $P112 = $P111."unique"("rxsubrule")
    set $P1351, $P112
.annotate 'line', 500
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    set $P112, $P1351
    unless_null $P112, vivify_1068
    new $P112, "Undef"
  vivify_1068:
    concat $P113, $P112, "_pass"
    $P114 = $P111."post_new"("Label", $P113 :named("result"))
    set $P1352, $P114
.annotate 'line', 501
    find_lex $P111, "$node"
    unless_null $P111, vivify_1069
    new $P111, "Undef"
  vivify_1069:
    $S101 = $P111."backtrack"()
    iseq $I101, $S101, "r"
    if $I101, if_1353
.annotate 'line', 507
    .const 'Sub' $P1356 = "59_1339198201.402" 
    capture_lex $P1356
    $P114 = $P1356()
    set $P110, $P114
.annotate 'line', 501
    goto if_1353_end
  if_1353:
.annotate 'line', 502
    find_lex $P113, "$subtype"
    unless_null $P113, vivify_1128
    new $P113, "Undef"
  vivify_1128:
    set $S102, $P113
    iseq $I102, $S102, "method"
    unless $I102, unless_1354
    new $P112, 'Integer'
    set $P112, $I102
    goto unless_1354_end
  unless_1354:
.annotate 'line', 503
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$ops"
    unless_null $P116, vivify_1129
    new $P116, "Undef"
  vivify_1129:
    set $P117, $P1352
    unless_null $P117, vivify_1130
    new $P117, "Undef"
  vivify_1130:
    $P115."regex_mark"($P116, $P117, -1, 0)
.annotate 'line', 504
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1131
    new $P114, "Undef"
  vivify_1131:
    set $P115, $P1352
    unless_null $P115, vivify_1132
    new $P115, "Undef"
  vivify_1132:
    $P116 = $P114."push"($P115)
.annotate 'line', 502
    set $P112, $P116
  unless_1354_end:
.annotate 'line', 501
    set $P110, $P112
  if_1353_end:
.annotate 'line', 498
    .return ($P110)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1355"  :anon :subid("59_1339198201.402") :outer("58_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 508
    new $P113, "Undef"
    set $P1357, $P113
    .lex "$backlabel", $P1357
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    find_lex $P116, "$rxname"
    unless_null $P116, vivify_1070
    new $P116, "Undef"
  vivify_1070:
    concat $P117, $P116, "_back"
    $P118 = $P115."post_new"("Label", $P117 :named("result"))
    set $P1357, $P118
.annotate 'line', 509
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1071
    new $P114, "Undef"
  vivify_1071:
    find_lex $P115, "$passlabel"
    unless_null $P115, vivify_1072
    new $P115, "Undef"
  vivify_1072:
    $P114."push_pirop"("goto", $P115)
.annotate 'line', 510
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1073
    new $P114, "Undef"
  vivify_1073:
    set $P115, $P1357
    unless_null $P115, vivify_1074
    new $P115, "Undef"
  vivify_1074:
    $P114."push"($P115)
.annotate 'line', 511
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1075
    new $P114, "Undef"
  vivify_1075:
    $P114."push_pirop"("callmethod", "\"!cursor_next\"", "$P11", "$P11" :named("result"))
.annotate 'line', 512
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1076
    new $P114, "Undef"
  vivify_1076:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1077
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1078
    die "Contextual %*REG not found"
  vivify_1078:
  vivify_1077:
    set $P118, $P117["curclass"]
    unless_null $P118, vivify_1079
    new $P118, "Undef"
  vivify_1079:
    $P114."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P118, "\"$!pos\"")
.annotate 'line', 513
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1080
    new $P114, "Undef"
  vivify_1080:
    find_lex $P115, "$testop"
    unless_null $P115, vivify_1081
    new $P115, "Undef"
  vivify_1081:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1082
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1083
    die "Contextual %*REG not found"
  vivify_1083:
  vivify_1082:
    set $P119, $P118["fail"]
    unless_null $P119, vivify_1084
    new $P119, "Undef"
  vivify_1084:
    $P114."push_pirop"($P115, "$I11", "0", $P119)
.annotate 'line', 514
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1085
    new $P114, "Undef"
  vivify_1085:
    find_lex $P115, "$passlabel"
    unless_null $P115, vivify_1086
    new $P115, "Undef"
  vivify_1086:
    $P114."push"($P115)
.annotate 'line', 515
    find_lex $P114, "$subtype"
    unless_null $P114, vivify_1087
    new $P114, "Undef"
  vivify_1087:
    set $S102, $P114
    iseq $I102, $S102, "capture"
    if $I102, if_1358
.annotate 'line', 521
    find_lex $P115, "$ops"
    unless_null $P115, vivify_1088
    new $P115, "Undef"
  vivify_1088:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1089
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1090
    die "Contextual %*REG not found"
  vivify_1090:
  vivify_1089:
    set $P119, $P118["cur"]
    unless_null $P119, vivify_1091
    new $P119, "Undef"
  vivify_1091:
    find_dynamic_lex $P122, "%*REG"
    unless_null $P122, vivify_1092
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["%REG"]
    unless_null $P122, vivify_1093
    die "Contextual %*REG not found"
  vivify_1093:
  vivify_1092:
    set $P123, $P122["cstack"]
    unless_null $P123, vivify_1094
    new $P123, "Undef"
  vivify_1094:
    $P115."push_pirop"("callmethod", "\"!cursor_push_cstack\"", $P119, "$P11", $P123 :named("result"))
.annotate 'line', 520
    goto if_1358_end
  if_1358:
.annotate 'line', 516
    find_lex $P115, "$ops"
    unless_null $P115, vivify_1095
    new $P115, "Undef"
  vivify_1095:
    find_dynamic_lex $P118, "%*REG"
    unless_null $P118, vivify_1096
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["%REG"]
    unless_null $P118, vivify_1097
    die "Contextual %*REG not found"
  vivify_1097:
  vivify_1096:
    set $P119, $P118["cur"]
    unless_null $P119, vivify_1098
    new $P119, "Undef"
  vivify_1098:
    find_lex $P120, "$name"
    unless_null $P120, vivify_1099
    new $P120, "Undef"
  vivify_1099:
    find_dynamic_lex $P123, "%*REG"
    unless_null $P123, vivify_1100
    get_hll_global $P121, "GLOBAL"
    get_who $P122, $P121
    set $P123, $P122["%REG"]
    unless_null $P123, vivify_1101
    die "Contextual %*REG not found"
  vivify_1101:
  vivify_1100:
    set $P124, $P123["cstack"]
    unless_null $P124, vivify_1102
    new $P124, "Undef"
  vivify_1102:
    $P115."push_pirop"("callmethod", "\"!cursor_capture\"", $P119, "$P11", $P120, $P124 :named("result"))
.annotate 'line', 518
    new $P115, "Float"
    assign $P115, 1
    store_lex "$captured", $P115
  if_1358_end:
.annotate 'line', 524
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1103
    new $P114, "Undef"
  vivify_1103:
    set $P115, $P1357
    unless_null $P115, vivify_1104
    new $P115, "Undef"
  vivify_1104:
    $P114."push_pirop"("set_addr", "$I11", $P115)
.annotate 'line', 525
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1105
    new $P114, "Undef"
  vivify_1105:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1106
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1107
    die "Contextual %*REG not found"
  vivify_1107:
  vivify_1106:
    set $P118, $P117["bstack"]
    unless_null $P118, vivify_1108
    new $P118, "Undef"
  vivify_1108:
    $P114."push_pirop"("push", $P118, "$I11")
.annotate 'line', 526
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1109
    new $P114, "Undef"
  vivify_1109:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1110
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1111
    die "Contextual %*REG not found"
  vivify_1111:
  vivify_1110:
    set $P118, $P117["bstack"]
    unless_null $P118, vivify_1112
    new $P118, "Undef"
  vivify_1112:
    $P114."push_pirop"("push", $P118, 0)
.annotate 'line', 527
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1113
    new $P114, "Undef"
  vivify_1113:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1114
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1115
    die "Contextual %*REG not found"
  vivify_1115:
  vivify_1114:
    set $P118, $P117["bstack"]
    unless_null $P118, vivify_1116
    new $P118, "Undef"
  vivify_1116:
    find_dynamic_lex $P121, "%*REG"
    unless_null $P121, vivify_1117
    get_hll_global $P119, "GLOBAL"
    get_who $P120, $P119
    set $P121, $P120["%REG"]
    unless_null $P121, vivify_1118
    die "Contextual %*REG not found"
  vivify_1118:
  vivify_1117:
    set $P122, $P121["pos"]
    unless_null $P122, vivify_1119
    new $P122, "Undef"
  vivify_1119:
    $P114."push_pirop"("push", $P118, $P122)
.annotate 'line', 528
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1120
    new $P114, "Undef"
  vivify_1120:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1121
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1122
    die "Contextual %*REG not found"
  vivify_1122:
  vivify_1121:
    set $P118, $P117["cstack"]
    unless_null $P118, vivify_1123
    new $P118, "Undef"
  vivify_1123:
    $P114."push_pirop"("elements", "$I11", $P118)
.annotate 'line', 529
    find_lex $P114, "$ops"
    unless_null $P114, vivify_1124
    new $P114, "Undef"
  vivify_1124:
    find_dynamic_lex $P117, "%*REG"
    unless_null $P117, vivify_1125
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%REG"]
    unless_null $P117, vivify_1126
    die "Contextual %*REG not found"
  vivify_1126:
  vivify_1125:
    set $P118, $P117["bstack"]
    unless_null $P118, vivify_1127
    new $P118, "Undef"
  vivify_1127:
    $P119 = $P114."push_pirop"("push", $P118, "$I11")
.annotate 'line', 507
    .return ($P119)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "uniprop" :anon :subid("42_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1363
    .param pmc param_1364
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 540
    .lex "self", param_1363
    .lex "$node", param_1364
.annotate 'line', 541
    new $P100, "Undef"
    set $P1365, $P100
    .lex "$ops", $P1365
.annotate 'line', 542
    new $P101, "Undef"
    set $P1366, $P101
    .lex "$cmpop", $P1366
.annotate 'line', 541
    set $P102, param_1363
    nqp_decontainerize $P103, $P102
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_1152
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_1153
    die "Contextual %*REG not found"
  vivify_1153:
  vivify_1152:
    set $P107, $P106["cur"]
    unless_null $P107, vivify_1154
    new $P107, "Undef"
  vivify_1154:
    $P108 = $P103."post_new"("Ops", $P107 :named("result"))
    set $P1365, $P108
.annotate 'line', 542
    set $P103, param_1364
    unless_null $P103, vivify_1155
    new $P103, "Undef"
  vivify_1155:
    $P104 = $P103."negate"()
    if $P104, if_1367
    new $P106, "String"
    assign $P106, "eq"
    set $P102, $P106
    goto if_1367_end
  if_1367:
    new $P105, "String"
    assign $P105, "ne"
    set $P102, $P105
  if_1367_end:
    set $P1366, $P102
.annotate 'line', 543
    set $P102, $P1365
    unless_null $P102, vivify_1156
    new $P102, "Undef"
  vivify_1156:
    new $P103, "String"
    assign $P103, "\""
    set $P1368, param_1364
    unless_null $P1368, vivify_1157
    $P1368 = root_new ['parrot';'ResizablePMCArray']
  vivify_1157:
    set $P104, $P1368[0]
    unless_null $P104, vivify_1158
    new $P104, "Undef"
  vivify_1158:
    concat $P105, $P103, $P104
    concat $P106, $P105, "\""
    $P102."push_pirop"("assign", "$S10", $P106)
.annotate 'line', 544
    set $P102, $P1365
    unless_null $P102, vivify_1159
    new $P102, "Undef"
  vivify_1159:
    find_dynamic_lex $P105, "%*REG"
    unless_null $P105, vivify_1160
    get_hll_global $P103, "GLOBAL"
    get_who $P104, $P103
    set $P105, $P104["%REG"]
    unless_null $P105, vivify_1161
    die "Contextual %*REG not found"
  vivify_1161:
  vivify_1160:
    set $P106, $P105["tgt"]
    unless_null $P106, vivify_1162
    new $P106, "Undef"
  vivify_1162:
    find_dynamic_lex $P109, "%*REG"
    unless_null $P109, vivify_1163
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%REG"]
    unless_null $P109, vivify_1164
    die "Contextual %*REG not found"
  vivify_1164:
  vivify_1163:
    set $P110, $P109["pos"]
    unless_null $P110, vivify_1165
    new $P110, "Undef"
  vivify_1165:
    $P102."push_pirop"("is_uprop", "$I11", "$S10", $P106, $P110)
.annotate 'line', 545
    set $P102, $P1365
    unless_null $P102, vivify_1166
    new $P102, "Undef"
  vivify_1166:
    set $P103, $P1366
    unless_null $P103, vivify_1167
    new $P103, "Undef"
  vivify_1167:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_1168
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_1169
    die "Contextual %*REG not found"
  vivify_1169:
  vivify_1168:
    set $P107, $P106["fail"]
    unless_null $P107, vivify_1170
    new $P107, "Undef"
  vivify_1170:
    $P102."push_pirop"($P103, "$I11", 0, $P107)
.annotate 'line', 546
    set $P102, param_1364
    unless_null $P102, vivify_1171
    new $P102, "Undef"
  vivify_1171:
    $S100 = $P102."subtype"()
    iseq $I100, $S100, "zerowidth"
    if $I100, unless_1369_end
    set $P103, $P1365
    unless_null $P103, vivify_1172
    new $P103, "Undef"
  vivify_1172:
    find_dynamic_lex $P106, "%*REG"
    unless_null $P106, vivify_1173
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%REG"]
    unless_null $P106, vivify_1174
    die "Contextual %*REG not found"
  vivify_1174:
  vivify_1173:
    set $P107, $P106["pos"]
    unless_null $P107, vivify_1175
    new $P107, "Undef"
  vivify_1175:
    $P103."push_pirop"("inc", $P107)
  unless_1369_end:
.annotate 'line', 540
    set $P102, $P1365
    unless_null $P102, vivify_1176
    new $P102, "Undef"
  vivify_1176:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "ws" :anon :subid("43_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1371
    .param pmc param_1372
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 551
    .lex "self", param_1371
    .lex "$node", param_1372
    set $P100, param_1371
    nqp_decontainerize $P101, $P100
    set $P102, param_1372
    unless_null $P102, vivify_1177
    new $P102, "Undef"
  vivify_1177:
    $P103 = $P101."subrule"($P102)
    .return ($P103)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "regex_mark" :anon :subid("44_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1374
    .param pmc param_1375
    .param pmc param_1376
    .param pmc param_1377
    .param pmc param_1378
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 553
    .lex "self", param_1374
    .lex "$ops", param_1375
    .lex "$mark", param_1376
    .lex "$pos", param_1377
    .lex "$rep", param_1378
.annotate 'line', 554
    set $P100, param_1375
    unless_null $P100, vivify_1178
    new $P100, "Undef"
  vivify_1178:
    find_dynamic_lex $P103, "%*REG"
    unless_null $P103, vivify_1179
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%REG"]
    unless_null $P103, vivify_1180
    die "Contextual %*REG not found"
  vivify_1180:
  vivify_1179:
    set $P104, $P103["bstack"]
    unless_null $P104, vivify_1181
    new $P104, "Undef"
  vivify_1181:
    set $P105, param_1376
    unless_null $P105, vivify_1182
    new $P105, "Undef"
  vivify_1182:
    set $P106, param_1377
    unless_null $P106, vivify_1183
    new $P106, "Undef"
  vivify_1183:
    set $P107, param_1378
    unless_null $P107, vivify_1184
    new $P107, "Undef"
  vivify_1184:
    $P108 = $P100."push_pirop"("nqp_rxmark", $P104, $P105, $P106, $P107)
.annotate 'line', 553
    .return ($P108)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.include "except_types.pasm"
.sub "regex_peek" :anon :subid("45_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1380
    .param pmc param_1381
    .param pmc param_1382
    .param pmc param_1383 :slurpy
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 557
    .const 'Sub' $P1386 = "60_1339198201.402" 
    capture_lex $P1386
    .lex "self", param_1380
    .lex "$ops", param_1381
    .lex "$mark", param_1382
    .lex "@regs", param_1383
.annotate 'line', 558
    set $P100, param_1381
    unless_null $P100, vivify_1185
    new $P100, "Undef"
  vivify_1185:
    find_dynamic_lex $P103, "%*REG"
    unless_null $P103, vivify_1186
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%REG"]
    unless_null $P103, vivify_1187
    die "Contextual %*REG not found"
  vivify_1187:
  vivify_1186:
    set $P104, $P103["bstack"]
    unless_null $P104, vivify_1188
    new $P104, "Undef"
  vivify_1188:
    set $P105, param_1382
    unless_null $P105, vivify_1189
    new $P105, "Undef"
  vivify_1189:
    $P100."push_pirop"("nqp_rxpeek", "$I19", $P104, $P105)
.annotate 'line', 559
    set $P1384, param_1383
    unless_null $P1384, vivify_1190
    $P1384 = root_new ['parrot';'ResizablePMCArray']
  vivify_1190:
    defined $I100, $P1384
    unless $I100, for_undef_1191
    iter $P100, $P1384
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop1389_handler
    push_eh $P103
  loop1389_test:
    unless $P100, loop1389_done
    shift $P101, $P100
  loop1389_redo:
    .const 'Sub' $P1386 = "60_1339198201.402" 
    capture_lex $P1386
    $P1386($P101)
  loop1389_next:
    goto loop1389_test
  loop1389_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop1389_next
    eq $P104, .CONTROL_LOOP_REDO, loop1389_redo
  loop1389_done:
    pop_eh 
  for_undef_1191:
.annotate 'line', 557
    .return ($P100)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "_block1385"  :anon :subid("60_1339198201.402") :outer("45_1339198201.402")
    .param pmc param_1387
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 559
    .lex "$_", param_1387
.annotate 'line', 560
    find_lex $P102, "$ops"
    unless_null $P102, vivify_1192
    new $P102, "Undef"
  vivify_1192:
    $P102."push_pirop"("inc", "$I19")
.annotate 'line', 561
    find_lex $P103, "$_"
    unless_null $P103, vivify_1193
    new $P103, "Undef"
  vivify_1193:
    set $S100, $P103
    isne $I101, $S100, "*"
    if $I101, if_1388
    new $P102, 'Integer'
    set $P102, $I101
    goto if_1388_end
  if_1388:
    find_lex $P104, "$ops"
    unless_null $P104, vivify_1194
    new $P104, "Undef"
  vivify_1194:
    find_lex $P105, "$_"
    unless_null $P105, vivify_1195
    new $P105, "Undef"
  vivify_1195:
    find_dynamic_lex $P108, "%*REG"
    unless_null $P108, vivify_1196
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%REG"]
    unless_null $P108, vivify_1197
    die "Contextual %*REG not found"
  vivify_1197:
  vivify_1196:
    set $P109, $P108["bstack"]
    unless_null $P109, vivify_1198
    new $P109, "Undef"
  vivify_1198:
    concat $P110, $P109, "[$I19]"
    $P111 = $P104."push_pirop"("set", $P105, $P110)
    set $P102, $P111
  if_1388_end:
.annotate 'line', 559
    .return ($P102)
.end


.HLL "nqp"

.namespace ["QAST";"Compiler"]
.sub "regex_commit" :anon :subid("46_1339198201.402") :outer("51_1339198201.402")
    .param pmc param_1391
    .param pmc param_1392
    .param pmc param_1393
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 565
    .lex "self", param_1391
    .lex "$ops", param_1392
    .lex "$mark", param_1393
.annotate 'line', 566
    set $P100, param_1392
    unless_null $P100, vivify_1199
    new $P100, "Undef"
  vivify_1199:
    find_dynamic_lex $P103, "%*REG"
    unless_null $P103, vivify_1200
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%REG"]
    unless_null $P103, vivify_1201
    die "Contextual %*REG not found"
  vivify_1201:
  vivify_1200:
    set $P104, $P103["bstack"]
    unless_null $P104, vivify_1202
    new $P104, "Undef"
  vivify_1202:
    set $P105, param_1393
    unless_null $P105, vivify_1203
    new $P105, "Undef"
  vivify_1203:
    $P106 = $P100."push_pirop"("nqp_rxcommit", $P104, $P105)
.annotate 'line', 565
    .return ($P106)
.end


.HLL "nqp"

.namespace []
.sub "_block1396" :load :anon :subid("61_1339198201.402")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1
    .const '' $P1398 = "47_1339198201.402" 
    $P106 = $P1398()
    .return ($P106)
.end

