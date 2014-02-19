puts"1..9"
# These tests explore context sensitive parsing of variables vs methods
def xx(n=-7) ; 2 - n; end
def three ; 3; end

def zz(m)
    three = 3
    xx = 1
    puts  "ok #{xx + m +3} - nested symbols"
    puts  "ok #{three +m +2} - nested symbols"
    8
end

# in particular, `xx +1` is parsed as a method call, `yy -1` as an expression

puts "ok #{xx +1} - method parse"

yy = 3
puts "ok #{yy -1} - arithmetic parse"

puts "ok #{three} - parameterless method"
puts "ok #{three + 1} - parameterless method arithmetic"
puts "ok #{three() +2} - parameterless method + paren arithmetic"

puts "ok #{zz 2} - method with args"
puts "ok #{xx} - parameter defaulting"

