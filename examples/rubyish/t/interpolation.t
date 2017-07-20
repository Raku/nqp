puts "1..10"
a = 2
puts "ok #{1} - num"
puts "ok #{a} - variable"
puts "ok #{a+1} - expression"
b = 'ok'
puts "#{b} #{3*(a - 1) + 1} - expression"
tst=5
puts %q<ok> " #{tst}" ' - adjacent' ' strings'
puts %Q{ok #{a*=3} - expression - side affect}
puts %Q{ok #{(a+=2)-1} - expression - side affect}
puts "#{if a==8 then 'ok' else 'nok' end} #{a} - nested statement"
puts "#{'#{tst}' eq '#' '{' 'tst}'? 'ok' : 'nok'} 9 - nested starters / stoppers"
puts "ok #{
     x = 4; x+= 1
     x+5
     } - multiline interpolation"
