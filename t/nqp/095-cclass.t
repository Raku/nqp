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

my %matches := nqp::hash(
    nqp::const::CCLASS_ANY, '11111111',
    nqp::const::CCLASS_NUMERIC, '00001000',
    nqp::const::CCLASS_WHITESPACE, '00100110',
    nqp::const::CCLASS_WORD, '11001000',
    nqp::const::CCLASS_NEWLINE, '00100000',
    nqp::const::CCLASS_ALPHABETIC, '11000000',
    nqp::const::CCLASS_UPPERCASE, '01000000',
    nqp::const::CCLASS_LOWERCASE, '10000000',
    nqp::const::CCLASS_HEXADECIMAL, '11001000',
    nqp::const::CCLASS_BLANK, '00000110',
    nqp::const::CCLASS_CONTROL, '00100010',
    nqp::const::CCLASS_PUNCTUATION, '00010001',
    nqp::const::CCLASS_ALPHANUMERIC, '11001000',
);

my %const := nqp::hash(
    nqp::const::CCLASS_ANY, 'ANY', 
    nqp::const::CCLASS_NUMERIC, 'NUMERIC', 
    nqp::const::CCLASS_WHITESPACE, 'WHITESPACE', 
    nqp::const::CCLASS_WORD, 'WORD', 
    nqp::const::CCLASS_NEWLINE, 'NEWLINE', 
    nqp::const::CCLASS_ALPHABETIC, 'ALPHABETIC', 
    nqp::const::CCLASS_UPPERCASE, 'UPPERCASE', 
    nqp::const::CCLASS_LOWERCASE, 'LOWERCASE', 
    nqp::const::CCLASS_HEXADECIMAL, 'HEXADECIMAL', 
    nqp::const::CCLASS_BLANK, 'BLANK', 
    nqp::const::CCLASS_CONTROL, 'CONTROL', 
    nqp::const::CCLASS_PUNCTUATION, 'PUNCTUATION', 
    nqp::const::CCLASS_ALPHANUMERIC, 'ALPHANUMERIC', 
);

for %const -> $cclass {
    ok( test_cclass($cclass.key, $teststr) eq %matches{$cclass.key}, "nqp::iscclass CCLASS_{$cclass.value}");
}

sub mock_find_cclass($c, $str, $start, $len) {
    my $i := $start;
    while $i < $len && $i < nqp::chars($str) {
        if nqp::substr(%matches{$c}, $i, 1) eq '1' {
            return $i;
        }
        $i++;
    }
    nqp::chars($str) < $len ?? nqp::chars($str) !! $len;
}

sub test_findcclass($c, $str, $len) {
  my $s := '';
  my $i := 0; 
  while $i < $len {
    $s := nqp::concat($s, nqp::findcclass($c, $str, $i, $len));
    $s := nqp::concat($s, ';');
    $i++;
  }
  return $s;
}

sub test_mock_findcclass($c, $str, $len) {
  my $s := '';
  my $i := 0; 
  while $i < $len {
    $s := nqp::concat($s, mock_find_cclass($c, $str, $i, $len));
    $s := nqp::concat($s, ';');
    $i++;
  }
  return $s;
}

for %const -> $cclass {
    my $got := test_findcclass($cclass.key, $teststr, 10);
    my $expected := test_mock_findcclass($cclass.key, $teststr, 10);
    ok($got eq $expected, "nqp::findcclass CCLASS_{$cclass.value}");
}


sub mock_find_notcclass($c, $str, $start, $len) {
    my $i := $start;
    while $i < $len && $i < nqp::chars($str) {
        if nqp::substr(%matches{$c}, $i, 1) eq '0' {
            return $i;
        }
        $i++;
    }
    nqp::chars($str) < $len ?? nqp::chars($str) !! $len;
}

sub test_mock_findnotcclass($c, $str, $len) {
  my $s := '';
  my $i := 0; 
  while $i < $len {
    $s := nqp::concat($s, mock_find_notcclass($c, $str, $i, $len));
    $s := nqp::concat($s, ';');
    $i++;
  }
  return $s;
}

sub test_findnotcclass($c, $str, $len) {
  my $s := '';
  my $i := 0; 
  while $i < $len {
    $s := nqp::concat($s, nqp::findnotcclass($c, $str, $i, $len));
    $s := nqp::concat($s, ';');
    $i++;
  }
  return $s;
}

for %const -> $cclass {
    my $got := test_findnotcclass($cclass.key, $teststr, 10);
    my $expected := test_mock_findnotcclass($cclass.key, $teststr, 10);
    ok($got eq $expected, "nqp::findnotcclass CCLASS_{$cclass.value}");
}
