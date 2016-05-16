plan(39);
sub test_cclass($c, $str) { 
  my $s := '';
  my $i := 0;
  my $len := nqp::chars($str); 
  while $i < $len {
    $s := nqp::concat($s, nqp::iscclass($c, $str, $i) > 0 ?? '1' !! '0'); 
    $i++; 
  }
  return $s;
}

my $teststr := "aB\n.8 \t!";
ok( test_cclass(nqp::const::CCLASS_ANY, $teststr) eq '11111111', 'nqp::iscclass CCLASS_ANY');
ok( test_cclass(nqp::const::CCLASS_NUMERIC, $teststr) eq '00001000', 'nqp::iscclass CCLASS_NUMERIC');
ok( test_cclass(nqp::const::CCLASS_WHITESPACE, $teststr) eq '00100110', 'nqp::iscclass CCLASS_WHITESPACE');
ok( test_cclass(nqp::const::CCLASS_WORD, $teststr) eq '11001000', 'nqp::iscclass CCLASS_WORD');
ok( test_cclass(nqp::const::CCLASS_NEWLINE, $teststr) eq '00100000', 'nqp::iscclass CCLASS_NEWLINE');
ok( test_cclass(nqp::const::CCLASS_ALPHABETIC, $teststr) eq '11000000', 'nqp::iscclass CCLASS_ALPHABETIC');
ok( test_cclass(nqp::const::CCLASS_UPPERCASE, $teststr) eq '01000000', 'nqp::iscclass CCLASS_UPPERCASE');
ok( test_cclass(nqp::const::CCLASS_LOWERCASE, $teststr) eq '10000000', 'nqp::iscclass CCLASS_LOWERCASE');
ok( test_cclass(nqp::const::CCLASS_HEXADECIMAL, $teststr) eq '11001000', 'nqp::iscclass CCLASS_HEXADECIMAL');
ok( test_cclass(nqp::const::CCLASS_BLANK, $teststr) eq '00000110', 'nqp::iscclass CCLASS_BLANK');
ok( test_cclass(nqp::const::CCLASS_CONTROL, $teststr) eq '00100010', 'nqp::iscclass CCLASS_CONTROL');
ok( test_cclass(nqp::const::CCLASS_PUNCTUATION, $teststr) eq '00010001', 'nqp::iscclass CCLASS_PUNCTUATION');
ok( test_cclass(nqp::const::CCLASS_ALPHANUMERIC, $teststr) eq '11001000', 'nqp::iscclass CCLASS_ALPHANUMERIC');

sub test_findcclass($c, $str, $len) {
  my $s := '';
  my $i := 0; 
  while $i < $len {
    $s := nqp::concat($s, nqp::findcclass($c, $str, $i, $len));
    $s := nqp::concat($s, ';');
    $i++;
  }
  nqp::say($s);
  return $s;
}

ok( test_findcclass(nqp::const::CCLASS_ANY, $teststr, 10) eq '0;1;2;3;4;5;6;7;8;8;', 'nqp::findcclass CCLASS_ANY');
ok( test_findcclass(nqp::const::CCLASS_NUMERIC, $teststr, 10) eq '4;4;4;4;4;8;8;8;8;8;', 'nqp::findcclass CCLASS_NUMERIC');
ok( test_findcclass(nqp::const::CCLASS_WHITESPACE, $teststr, 10) eq '2;2;2;5;5;5;6;8;8;8;', 'nqp::findcclass CCLASS_WHITESPACE');
ok( test_findcclass(nqp::const::CCLASS_WORD, $teststr, 10) eq '0;1;4;4;4;8;8;8;8;8;', 'nqp::findcclass CCLASS_WORD');
ok( test_findcclass(nqp::const::CCLASS_NEWLINE, $teststr, 10) eq '2;2;2;8;8;8;8;8;8;8;', 'nqp::findcclass CCLASS_NEWLINE');
ok( test_findcclass(nqp::const::CCLASS_ALPHABETIC, $teststr, 10) eq '0;1;8;8;8;8;8;8;8;8;', 'nqp::findcclass CCLASS_ALPHABETIC');
ok( test_findcclass(nqp::const::CCLASS_UPPERCASE, $teststr, 10) eq '1;1;8;8;8;8;8;8;8;8;', 'nqp::findcclass CCLASS_UPPERCASE');
ok( test_findcclass(nqp::const::CCLASS_LOWERCASE, $teststr, 10) eq '0;8;8;8;8;8;8;8;8;8;', 'nqp::findcclass CCLASS_LOWERCASE');
ok( test_findcclass(nqp::const::CCLASS_HEXADECIMAL, $teststr, 10) eq '0;1;4;4;4;8;8;8;8;8;', 'nqp::findcclass CCLASS_HEXADECIMAL');
ok( test_findcclass(nqp::const::CCLASS_BLANK, $teststr, 10) eq '5;5;5;5;5;5;6;8;8;8;', 'nqp::findcclass CCLASS_BLANK');
ok( test_findcclass(nqp::const::CCLASS_CONTROL, $teststr, 10) eq '2;2;2;6;6;6;6;8;8;8;', 'nqp::findcclass CCLASS_CONTROL');
ok( test_findcclass(nqp::const::CCLASS_PUNCTUATION, $teststr, 10) eq '3;3;3;3;7;7;7;7;8;8;', 'nqp::findcclass CCLASS_PUNCTUATION');
ok( test_findcclass(nqp::const::CCLASS_ALPHANUMERIC, $teststr, 10) eq '0;1;4;4;4;8;8;8;8;8;', 'nqp::findcclass CCLASS_ALPHANUMERIC');

sub test_findnotcclass($c, $str, $len) {
  my $s := '';
  my $i := 0; 
  while $i < $len {
    $s := nqp::concat($s, nqp::findnotcclass($c, $str, $i, $len));
    $s := nqp::concat($s, ';');
    $i++;
  }
  nqp::say($s);
  return $s;
}

ok( test_findnotcclass(nqp::const::CCLASS_ANY, $teststr, 10) eq '8;8;8;8;8;8;8;8;8;8;', 'nqp::findnotcclass CCLASS_ANY');
ok( test_findnotcclass(nqp::const::CCLASS_NUMERIC, $teststr, 10) eq '0;1;2;3;5;5;6;7;8;8;', 'nqp::findnotcclass CCLASS_NUMERIC');
ok( test_findnotcclass(nqp::const::CCLASS_WHITESPACE, $teststr, 10) eq '0;1;3;3;4;7;7;7;8;8;', 'nqp::findnotcclass CCLASS_WHITESPACE');
ok( test_findnotcclass(nqp::const::CCLASS_WORD, $teststr, 10) eq '2;2;2;3;5;5;6;7;8;8;', 'nqp::findnotcclass CCLASS_WORD');
ok( test_findnotcclass(nqp::const::CCLASS_NEWLINE, $teststr, 10) eq '0;1;3;3;4;5;6;7;8;8;', 'nqp::findnotcclass CCLASS_NEWLINE');
ok( test_findnotcclass(nqp::const::CCLASS_ALPHABETIC, $teststr, 10) eq '2;2;2;3;4;5;6;7;8;8;', 'nqp::findnotcclass CCLASS_ALPHABETIC');
ok( test_findnotcclass(nqp::const::CCLASS_UPPERCASE, $teststr, 10) eq '0;2;2;3;4;5;6;7;8;8;', 'nqp::findnotcclass CCLASS_UPPERCASE');
ok( test_findnotcclass(nqp::const::CCLASS_LOWERCASE, $teststr, 10) eq '1;1;2;3;4;5;6;7;8;8;', 'nqp::findnotcclass CCLASS_LOWERCASE');
ok( test_findnotcclass(nqp::const::CCLASS_HEXADECIMAL, $teststr, 10) eq '2;2;2;3;5;5;6;7;8;8;', 'nqp::findnotcclass CCLASS_HEXADECIMAL');
ok( test_findnotcclass(nqp::const::CCLASS_BLANK, $teststr, 10) eq '0;1;2;3;4;7;7;7;8;8;', 'nqp::findnotcclass CCLASS_BLANK');
ok( test_findnotcclass(nqp::const::CCLASS_CONTROL, $teststr, 10) eq '0;1;3;3;4;5;7;7;8;8;', 'nqp::findnotcclass CCLASS_CONTROL');
ok( test_findnotcclass(nqp::const::CCLASS_PUNCTUATION, $teststr, 10) eq '0;1;2;4;4;5;6;8;8;8;', 'nqp::findnotcclass CCLASS_PUNCTUATION');
ok( test_findnotcclass(nqp::const::CCLASS_ALPHANUMERIC, $teststr, 10) eq '2;2;2;3;5;5;6;7;8;8;', 'nqp::findnotcclass CCLASS_ALPHANUMERIC');
