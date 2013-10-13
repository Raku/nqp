puts"1..8"
# These tests explore context sensitive parsing of variables vs methods
def xx(n) ; 2 - n; end
def three ; 3; end

def zz(m)
    def three(n) ; 3 + 2* n; end
    def xx; 1; end
    puts  "ok #{xx + m +3} - nested symbols"
    puts  "ok #{three +m} - nested symbols"
    8
end

# in particular, `xx +1` is parsed as a method call, `yy -1` as an expression

puts "ok #{xx +1} - method parse"

yy = 3
puts "ok #{yy -1} - arithmetic parse"

puts "ok #{three} - parameterless method"
puts "ok #{three + 1} - parameterless method arithmetic"
puts "ok #{three() +2} - parameterless method + paren arithmetic"

puts "ok #{zz 2} - method with methods"
