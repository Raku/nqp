def gen_times(factor)
    lambda {|n| n*factor }
end

times3 = gen_times(3)      # 'factor' is replaced with 3
times5 = gen_times(5)

puts "3 X 12      = #{times3.call( 12 )}"
puts "5 X 5       = #{times5.call( 5 )}"
puts "3 X (5 X 4) = #{times3.call( times5.call(4) )}"
