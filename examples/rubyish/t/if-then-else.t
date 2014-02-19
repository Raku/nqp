puts "1..17"

if 1+1==3 then
    puts "nok 1"
    puts "nok 2"
else
    puts "ok 1"
    puts "ok 2"
end

if 2+2==4 then
    puts "ok 3"
    puts "ok 4"
else
    puts "nok 3"
    puts "nok 4"
end

if "a" eq "a" && 3+3 == 6; puts "ok 5"; else
puts "nok 6"; end

if "a"~"a" eq "a""a" && 3+3 == 5; puts "nok 6"; else
puts "ok 6"; end

if "a" eq "b" || 1+1==3; puts "nok 7"; puts "nok 8" else
puts "ok 7"; puts "ok 8"; end

if "a" eq "b" || 1+1==2; puts "ok 9" else
puts puts "nok 9"; end

if "a" eq "b" || 1+1==3; puts "nok 10" else
puts "ok 10"; end

if 2 >= 1 && 1 <= 2 && "b" gt "a" && "a" lt "b" && (2 != 1) ; puts "ok 11"
else puts "nok 11"; end

def one_liner(i)
   if i == 42 then 'nok' elsif i == 12 then 'ok' else 'nok' end
end

puts "#{one_liner(12)} 12 - single line statement"

def iffy(n)
   if n == 10
      13
   elsif n == 20
      14
   elsif n == 30
      m = 15
      m
   else
      16
   end
end

puts "ok #{iffy 10} - [if] elsif  elsif  else"
puts "ok #{iffy 20} -  if [elsif] elsif  else"
puts "ok #{iffy 30} -  if  elsif [elsif] else"
puts "ok #{iffy 42} -  if  elsif  elsif [else]"

x=10
unless x > 2
  puts "nok 17 - unless"
elsif x == 20
  puts "nok 17 - unless (elsif)"
else
  puts "ok 17 - unless"
end
