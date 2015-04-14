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

puts "#{result == expected ? 'ok' : 'nok'} 1 - sub recursion"

# ----------

class MethodRecursion
    def fibonacci(n)
        n <= 1  \
            ? n \
            : self.fibonacci( n - 1 ) + fibonacci(n - 2 ) 
## 2 styles:  ^^ explicit method call   ^^ implied method call
    end
end

fib = MethodRecursion.new.fibonacci(9)
expected2 = 34

puts "#{fib == expected2 ? 'ok' : 'nok'} 2 - method recursion"
