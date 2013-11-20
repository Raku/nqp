puts "1..2"

def fact!(n)
    if n <= 1 then
       1
    else
       n * fact!(n - 1)
    end
end

result = fact!(6)
expected =  6*5*4*3*2

puts "#{result == expected ? 'ok' : 'nok'} 1 - sub recursion: 6! == #{expected}"

# ----------

class MethodRecursion
    def fibonacci(n)
        n <= 1  \
            ? n \
            : self.fibonacci( n - 1 ) + self.fibonacci(n - 2 ) 
## todo: -- dereferencing of self should be optional. both of the
##       -- following recursive calls are valid Ruby
##       self.fibonacci( n - 1 ) + fibonacci(n - 2 )
    end
end

fib = MethodRecursion.new.fibonacci(9)
expected2 = 34

puts "# todo - automatic passing of self"
puts "#{fib == expected2 ? 'ok' : 'nok'} 2 - method recursion: (#{expected2})"
