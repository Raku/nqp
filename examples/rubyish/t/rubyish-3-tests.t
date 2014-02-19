puts "1..4"

a = "ok 1"
puts a

b = "nok 1"
b = "ok 2"
puts b

def pass_a_test
    puts "ok 3"
end
pass_a_test()

def pass_another(test)
    puts test
end
pass_another("ok 4")
