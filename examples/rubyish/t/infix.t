puts "1..25"
x=1

puts "ok #{x} - assignment"
puts "ok #{4/2} - division"
puts "ok #{5-2} - subtraction"
puts "ok #{2*2} - multiplication"
puts "ok #{2+3} - addition"

x *= 6
puts "ok #{x} - '*=' assignment"

x += 1+1
y = x
y -= 1
puts "ok #{y} - '-=' assignment"
puts "ok #{x} - '+=' assignment"

z = 27
z /= 3

puts "ok #{z} - '/=' assignment"

puts "#{1+1==2? 'ok' : 'nok'} 10 - ternary (true)"
puts "#{1+1==3? 'nok' : 'ok'} 11 - ternary (false)"

puts "#{(false && 2)? 'nok' : 'ok'} 12 - infix &&"

xx = nil
yy = 42
puts "#{(false || 2) == 2? 'ok' : 'nok'} 13 - infix ||"
puts "#{xx.nil? == true? 'ok' : 'nok'} 14 - .nil? when true"
puts "#{yy.nil? == false? 'ok' : 'nok'} 15 - .nil? when false"

puts "ok #{2 ** 4} - exponentiation **"
puts "ok #{37 % 20} - modulus %"

puts "#{1&&false  or  1? 'ok' : 'nok'} 18 - loose 'or'"
puts "#{1||false  and  false||1? 'ok' : 'nok'} 19 - loose 'and'"

n = 22

for tst in [[20, -1, 'less than'],
            [22,  0, 'equal'],
            [24,  1, 'greater than']
           ] do
   puts "#{ (tst[0] <=> n) == tst[1]? 'ok' :'nok'} #{tst[0]} - <=> #{tst[2]}"
   puts "#{ ('x'~tst[0] cmp 'x'~n) == tst[1]? 'ok' :'nok'} #{tst[0]+1} - cmp #{tst[2]}"
end

