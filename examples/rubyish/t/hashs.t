puts "1..8"
h = {'a' =>10,'b' => 18+2 , 'c' , 30}
h{'d'} = 40
puts "#{h{'a'} == 10? 'ok' : 'nok'} 1 - h{'a'}"
puts "#{h<b> == 20? 'ok' : 'nok'} 2 - h<b>"
h_idx = 'c'
puts "#{h{h_idx} == 30? 'ok' : 'nok'} 3 - h{c_idx}"
puts "#{h{'d'} == 40? 'ok' : 'nok'} 4 - h{'d'}"

for key in h do
    puts "ok #{ h{key} / 10  +  4 } - hash key iteration (#{key})"
end