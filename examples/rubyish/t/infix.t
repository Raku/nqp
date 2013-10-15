puts "1..19"
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

puts "#{(0 && 2)? 'nok' : 'ok'} 12 - infix &&"
puts "#{(0 || 2) == 2? 'ok' : 'nok'} 13 - infix ||"
puts "#{(0 // 2) == 0? 'ok' : 'nok'} 14 - infix // shorted"
puts "#{(nil // 2) == 2? 'ok' : 'nok'} 15 - infix // arced"

puts "ok #{2 **4} - exponentiation **"
puts "ok #{37 % 20} - modulus %"

puts "#{1&&0 or 1? 'ok' : 'nok'} 18 - loose 'or'"
puts "#{1||0 and 0||1? 'ok' : 'nok'} 19 - loose 'and'"
