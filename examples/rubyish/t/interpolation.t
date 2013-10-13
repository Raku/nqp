puts "1..8"
a = 2
puts "ok #{1} - num"
puts "ok #{a} - variable"
puts "ok #{a+1} - expression"
b = 'ok'
puts "#{b} #{3*(a - 1) + 1} - expression"
puts %q{ok 5}
puts %Q{ok #{a*=3} - expression - side affect}
puts %Q{ok #{(a+=2)-1} - expression - side affect}
puts "#{if a==8 then 'ok' else 'nok' end} #{a} - nested statement"
