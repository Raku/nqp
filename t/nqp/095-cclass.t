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
my $teststr := "aB\n.8 \t!π_";

#                                     0123456789
my %matches := nqp::hash(
    nqp::const::CCLASS_ANY,          '1111111111',
    nqp::const::CCLASS_NUMERIC,      '0000100000',
    nqp::const::CCLASS_WHITESPACE,   '0010011000',
    nqp::const::CCLASS_WORD,         '1100100011',
    nqp::const::CCLASS_NEWLINE,      '0010000000',
    nqp::const::CCLASS_ALPHABETIC,   '1100000010',
    nqp::const::CCLASS_UPPERCASE,    '0100000000',
    nqp::const::CCLASS_LOWERCASE,    '1000000010',
    nqp::const::CCLASS_HEXADECIMAL,  '1100100000',
    nqp::const::CCLASS_BLANK,        '0000011000',
    nqp::const::CCLASS_CONTROL,      '0010001000',
    nqp::const::CCLASS_PRINTING,     '1101110111',
    nqp::const::CCLASS_PUNCTUATION,  '0001000101',
    nqp::const::CCLASS_ALPHANUMERIC, '1100100010',
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
    is($got, $expected, "nqp::findcclass CCLASS_{$cclass.value}");
    if ($got ne $expected) {
        say("# GOT: $got");
        say("# EXPECTED: $expected");
    }
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
    is($got, $expected, "nqp::findnotcclass CCLASS_{$cclass.value}");
}
