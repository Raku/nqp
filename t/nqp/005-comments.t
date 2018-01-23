#! nqp

# check comments

say('1..16');

#Comment preceding
say("ok 1");

say("ok 2"); #Comment following

#say("not ok 3");
#          say("not ok 4");

{ say('ok 3'); } # comment
{ say('ok 4'); }

=for comment
say("not ok 5");

=for comment say("not ok 6");

=begin comment
say("not ok 7");

say("not ok 8");
=end comment

=comment say("not ok 9");
say("not ok 10");

=for comment blah

say("ok 5");

=begin comment
=end comment
say("ok 6");

# This doesn't quite work right... but it doesn't work in STD either
#=for comment
#=begin comment
#=end comment
#=say("ok 7");

=comment

say("ok 7");

    =begin comment indented pod
    this is indented pod
    say("not ok 8");
    =end comment

    say("ok 8");

    =begin comment
    this is indented pod with an unaligned =end comment
      =end comment
say("ok 9");


    =begin comment
    this is another indented pod with an unaligned =end comment
  =end comment
say("ok 10");

# Parsing breaks down here: no errors are found
# with the second =end and how it's interpreted.
# seems to be a pod object of unknown type.
# the second =begin seems to be ignored or
# considered part of the comment.
# may need a :nested config key
    =begin comment
    this is indented pod with an unaligned =end comment
    =begin comment
    this is a nested comment
  =end comment
    say("ok 11");

    say("ok 12");
  # the following doesn't trigger a panic:
  =end comment

say("ok 13");


=begin comment
this is indented pod with an unaligned =end comment
 =begin comment
 this is a nested comment
 =end comment
say("ok 14");
say("ok 15");
# the following triggers a panic if uncommented:
#=end comment
say("ok 16");
