# While the grammar represents the syntactic elements of our language and
# the actions take care of building up an AST to represent the semantics
# of it, the world is about the declarative aspects of a language. This
# includes:
#
# * Symbol table management
# * Creating meta-object instances
# * Parts of library loading (most likely it delegates to an actual loader)
# * Resolving references to objects, within or between compilation units
#
# Just as there is one AST produced per compilation unit, there is also a
# world produce per compilation unit.
#
# A world includes a serialization context. This contains a bunch of
# objects - often meta-objects - that we want to persist across the
# compile time / run time boundary. If we're doing pre-compilation
# rather than "immediate run" then we serialize the contents of the
# serialization context.

class HLL::World {
    class CompilationContext {
        # The serialization context that we're building.
        has $!sc;

        # The number of code refs we've added to the code refs root so far.
        has int $!num_code_refs;

        # List of QAST blocks that map to the code refs table, for use in
        # building deserialization code.
        has $!code_ref_blocks;

        # List of QAST nodes specifying fixup tasks, either after deserialization
        # or between compile time and run time.
        has @!fixup_tasks;

        method BUILD(:$handle, :$description) {
            $!sc              := nqp::createsc($handle);
            $!num_code_refs   := 0;
            $!code_ref_blocks := [];
            @!fixup_tasks     := nqp::list();

            nqp::scsetdesc($!sc, $description);

            # Add to currently compiling SC stack.
            nqp::pushcompsc($!sc);
        }

        # Gets the built serialization context.
        method sc() {
            $!sc
        }

        method next_code_ref_num() {
            my int $code_ref_idx := $!num_code_refs;
            $!num_code_refs := $!num_code_refs + 1;
            $code_ref_idx
        }

        method code_ref_blocks() {
            $!code_ref_blocks
        }

        # Gets the list of tasks to do at fixup time.
        method fixup_tasks() {
            @!fixup_tasks
        }
    }

    has $!context;

    # The handle for the context.
    has $!handle;

    # Whether we're in pre-compilation mode.
    has $!precomp_mode;

    # List of QAST nodes specifying dependency loading related tasks. These
    # are done before the deserialization of the current context, or if in
    # immediate run mode before any of the other fixup tasks.
    # DON'T SHARE because we'd run the outer worlds tasks which include loading a setting!
    has @!load_dependency_tasks;

    has $!is_nested;

    method BUILD(:$handle!, :$description = '<unknown>', :$context) {
        if $context {
            $!context   := $context;
            $!is_nested := 1;
        }
        else {
            $!context   := self.context_class().new(:$handle, :$description);
            $!is_nested := 0;
        }
        # Initialize attributes.
        $!handle          := $handle;
        @!load_dependency_tasks := nqp::list();
        $!precomp_mode    := %*COMPILING<%?OPTIONS><precomp>;
    }

    method context_class() {
        CompilationContext
    }

    # Adds an object to the root set, along with a mapping.
    method add_object($obj) {
        my $sc := $!context.sc;
        nqp::setobjsc($obj, $sc);
        my int $idx := nqp::scobjcount($sc);
        nqp::scsetobj($sc, $idx, $obj);
        $idx
    }

    # Adds a code reference to the root set of code refs.
    method add_root_code_ref($code_ref, $ast_block) {
        my int $code_ref_idx := $!context.next_code_ref_num;
        $!context.code_ref_blocks.push($ast_block);
        nqp::scsetcode($!context.sc, $code_ref_idx, $code_ref);
        $code_ref_idx
    }

    # Updates a code reference in the root set.
    method update_root_code_ref($idx, $new_code_ref) {
        nqp::scsetcode($!context.sc, $idx, $new_code_ref);
    }

    # Checks if we are in pre-compilation mode.
    method is_precompilation_mode() {
        $!precomp_mode
    }

    method is_nested() {
        $!is_nested
    }

    method context() {
        $!context
    }

    # Add an event that we want to run before deserialization or before any
    # other fixup.
    method add_load_dependency_task(:$deserialize_ast, :$fixup_ast) {
        if $!precomp_mode {
            @!load_dependency_tasks.push($deserialize_ast) if $deserialize_ast;
        }
        else {
            @!load_dependency_tasks.push($fixup_ast) if $fixup_ast;
        }
    }

    # Add an event that we need to run at fixup time (after deserialization of
    # between compilation and runtime).
    method add_fixup_task(:$deserialize_ast, :$fixup_ast) {
        if $!precomp_mode {
            $!context.fixup_tasks.push($deserialize_ast) if $deserialize_ast;
        }
        else {
            $!context.fixup_tasks.push($fixup_ast) if $fixup_ast;
        }
    }

    # Gets the built serialization context.
    method sc() {
        $!context.sc
    }

    # Gets the SC handle.
    method handle() {
         $!handle
    }

    method code_ref_blocks() {
        $!context.code_ref_blocks
    }

    # Gets the list of load dependency tasks to do.
    method load_dependency_tasks() {
        @!load_dependency_tasks
    }

    # Gets the list of tasks to do at fixup time.
    method fixup_tasks() {
        $!context.fixup_tasks
    }

    method add_comp_line_directive(@directive) {
        my @clds := @*comp_line_directives;
        my int $elems := nqp::elems(@clds);
        if $elems == 0 || !(@clds[$elems - 1][0] eq @directive[0]) {
            nqp::push(@clds, @directive);
        }
    }
}
