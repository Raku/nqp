plan(42);
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

#               012 3456 789
my $teststr := "aB\n.8 \t!π_\c[EN QUAD]\c[EM QUAD]";

#                                     0123456789
my %matches := nqp::hash(
    nqp::const::CCLASS_ANY,          '111111111111',
    nqp::const::CCLASS_NUMERIC,      '000010000000',
    nqp::const::CCLASS_WHITESPACE,   '001001100011',
    nqp::const::CCLASS_WORD,         '110010001100',
    nqp::const::CCLASS_NEWLINE,      '001000000000',
    nqp::const::CCLASS_ALPHABETIC,   '110000001000',
    nqp::const::CCLASS_UPPERCASE,    '010000000000',
    nqp::const::CCLASS_LOWERCASE,    '100000001000',
    nqp::const::CCLASS_HEXADECIMAL,  '110010000000',
    nqp::const::CCLASS_BLANK,        '000001100011',
    nqp::const::CCLASS_CONTROL,      '001000100000',
    nqp::const::CCLASS_PRINTING,     '110111011111',
    nqp::const::CCLASS_PUNCTUATION,  '000100010100',
    nqp::const::CCLASS_ALPHANUMERIC, '110010001000',
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
    nqp::const::CCLASS_PRINTING, 'PRINTING', 
);

for %const -> $cclass {
    is( test_cclass($cclass.key, $teststr), %matches{$cclass.key}, "nqp::iscclass CCLASS_{$cclass.value}");
}

sub mock_find_cclass($c, $str, $offset, $count) {
    my $i := $offset;
    my int $end := $offset + $count;

    $end := nqp::chars($str) < $end ?? nqp::chars($str) !! $end;

    while $i < $end {
        if nqp::substr(%matches{$c}, $i, 1) eq '1' {
            return $i;
        }
        $i++;
    }
    $end;
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
    is($got, $expected, "nqp::findcclass CCLASS_{$cclass.value}");
    if ($got ne $expected) {
        say("# GOT: $got");
        say("# EXPECTED: $expected");
    }
}


sub mock_find_notcclass($c, $str, $offset, $count) {
    my $i := $offset;
    my int $end := $offset + $count;

    $end := nqp::chars($str) < $end ?? nqp::chars($str) !! $end;

    while $i < $end {
        if nqp::substr(%matches{$c}, $i, 1) eq '0' {
            return $i;
        }
        $i++;
    }
    $end;
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
    my $got := test_findnotcclass($cclass.key, $teststr, 12);
    my $expected := test_mock_findnotcclass($cclass.key, $teststr, 12);
    is($got, $expected, "nqp::findnotcclass CCLASS_{$cclass.value}");
}
