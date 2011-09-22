# This exposes the NQP NCI call builder interface and implements it in
# terms of the Parrot VM's Native Call Interface. It works in terms of
# argument descriptor hashes, which can have the following keys/values:
# 
#   type (the type of the argument)
#       int8
#       int16
#       int32
#       int
#       num32
#       num64
#       str         (A VM string we'll convert to null-terminated C string)
#       ptr         (Just any old pointer.)
#       struct      (Expects a CStruct representation; NYI)
#       array       (Expects elemtype; NYI)
#       void        (Valid for returns only)
#
#   elemtype (only applicable for array)
#       NYI
# 
# The thunk it returns will be able to do some basic work on the arguments,
# but not everything. In general, it expects the following:
# 
#       int8        Something it can unbox_i
#       int16       Something it can unbox_i
#       int32       Something it can unbox_i
#       int         Something it can unbox_i
#       num32       Something it can unbox_n
#       num64       Something it can unbox_n
#       str         Something it can unbox_s
#       ptr         Pointer handle (which we will have returned in the past)
#       struct      A 6model object with CStruct representation (NYI)
#       array       NYI
# 
# Since the language may not work directly in terms of those, we give it a
# chance to do some mapping of its own too for the arguments by passing an
# optional arg_mapper code ref.
# 
# For returns, the return descriptor describes what to do. For all the numeric
# types and str, this is done by the language passing a "box_to" key with the
# type object of the target box type as the value. This also applies to ptr,
# but 'box_attr_name' must be supplied to say which attribute to stash the
# VM-level pointer object in. Currently, struct and array are NYI in this case.

class NCI::CallBuilder {

    # Creates a thunk.
    #   $libname is the library to load from
    #   $funcname is the function to look up.
    #   @arg_descriptors - array of hashes describing arguments
    #   $return_descriptor - hash describing what's returned
    method create_thunk($libname, $funcname, @arg_descriptors, $return_descriptor,
                        :$arg_mapper) {
        # Look up thing to call.
        my $lib := pir::loadlib__Ps($libname);
        unless $lib {
            pir::die("Could not locate native library '$libname'");
        }
        my $sig := sig_from(@arg_descriptors, $return_descriptor);
        my $fun := pir::dlfunc__PPss($lib, $funcname, $sig);
        unless $fun {
            pir::die("Could not locate function '$funcname' in native library '$libname'");
        }

        # Create call thunk.
        -> *@pos_args, *%forbidden {
            # Check and pre-process the args.
            if %forbidden {
                pir::die("Cannot pass named arguments to a native call")
            }
            if +@pos_args != +@arg_descriptors {
                pir::die("Wrong number of arguments for native call; expected " ~
                    @arg_descriptors ~ " but got " ~ +@pos_args);
            }
            my @args := $arg_mapper ?? $arg_mapper(@pos_args) !! @pos_args;
            
            # Do our processing on them.
            my @to_pass;
            my @free_cstrings;
            my $i := 0;
            while $i < +@arg_descriptors {
                my $type := pir::substr(@arg_descriptors[$i]<type>, 0, 3);
                if $type eq 'int' {
                    @to_pass[$i] := nqp::unbox_i(@args[$i]);
                }
                elsif $type eq 'num' {
                    @to_pass[$i] := nqp::unbox_n(@args[$i]);
                }
                elsif $type eq 'ptr' {
                    @to_pass[$i] := @args[$i];
                }
                else {
                    pir::die("Cannot yet process " ~ @arg_descriptors[$i]<type>);
                }
                $i := $i + 1;
            }
            
            # Make call.
            my $result := $fun(|@to_pass);
            
            # Pre-process result.
            my $ret_type := pir::substr($return_descriptor<type>, 0, 3);
            if $ret_type eq 'int' {
                return nqp::box_i($result, $return_descriptor<box_type>);
            }
            elsif $ret_type eq 'num' {
                return nqp::box_n($result, $return_descriptor<box_type>);
            }
            elsif $ret_type eq 'ptr' {
                my $wrap := nqp::create($return_descriptor<box_type>);
                nqp::bindattr($wrap, $return_descriptor<box_type>,
                    $return_descriptor<attr_name>, $wrap);
                return $wrap;
            }
            else {
                pir::die("Cannot yet process " ~ $return_descriptor<type>);
            }
        }
    }
    
    # Creates the Parrot signature from the descriptors.
    my %sig_char := nqp::hash(
        'int8',   'c',
        'int16',  's',
        'int32',  'i',
        'int',    'l',
        'num32',  'f',
        'num64',  'd',
        'str',    'p',
        'ptr',    'p',
        'struct', 'p',
        'array',  'p'
    );
    sub sig_from(@arg_descriptors, $return_descriptor) {
        my @chars;
        unless pir::exists(%sig_char, $return_descriptor<type>) {
            pir::die("Native call return type '" ~ $return_descriptor<type> ~ "' not handled");
        }
        @chars.push(%sig_char{$return_descriptor<type>});
        for @arg_descriptors {
            unless pir::exists(%sig_char, $_<type>) {
                pir::die("Native call argument type '" ~ $_<type> ~ "' not handled");
            }
            @chars.push(%sig_char{$_<type>});
        }
        pir::join('', @chars)
    }
}
