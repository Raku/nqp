puts "1..13"

a=[10,
   20]

puts "#{a[1]? 'ok' : 'nok'} 1 - array spanning lines"

=begin
This is a multi-line comment and can span as many lines as you
like. But =begin and =end should appear at the start of line only.
#{exit 42}
=end

b = [30 # some comments
,
    40

]
puts "#{b[1]? 'ok' : 'nok'} 2 - array spanning lines"

h = {"a" => 10,
     "b"
 , 20
, "c" => 30
}
puts "#{h<c> == 30? 'ok' : 'nok'} 3 - hash spanning lines"

def tricky(k,
   n, desc)
    puts "#{k} #{n} - multi-line signatures #{desc}"
end

tricky('ok',4,"simple call")
tricky(
      "ok",

      5,

      "multi-line call"

     )

puts \
  "ok 6 - \\ line continuation"

heredoc = <<EOF
ok 7 - heredoc line 1
ok 8 - heredoc line 2
EOF
puts heredoc

heredoc2 = <<'EOF'
ok 9 - heredoc2
EOF
puts heredoc2

tst = 10

theredoc = <<"THE_END"
ok #{tst} - heredoc interpolating line 1
ok #{tst += 1} - heredoc interpolating line 2
THE_END
puts theredoc

print "ok 12 - multi-line string line 1
ok 13 - multi-line string line 2
"
