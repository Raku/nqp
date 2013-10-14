puts "1..9"
a=[10,18+2 , 30]
a[3] = 40
puts "#{a[0] == 10? 'ok' : 'nok'} 1 - a[0]"
puts "#{a[1] == 20? 'ok' : 'nok'} 2 - a[1]"
puts "#{a['2'] == 30? 'ok' : 'nok'} 3 - a['2']"
puts "#{a[1+2] == 40? 'ok' : 'nok'} 4 - a[1+2]"

for val in a do
    puts "ok #{ val / 10  +  4 } - array iteration (#{val})"
end

puts "#{%w{nok ok nok}[1]} 9 - quote words"

