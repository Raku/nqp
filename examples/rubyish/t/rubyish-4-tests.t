puts "1..5"

a = "ok 1"
puts a

ifb = "nok 1"
ifb = "ok 2"
puts ifb

def pass_a_test
    puts "ok 3"
end
pass_a_test()

def pass_another(test)
    puts test
end
pass_another("ok 4")

class Tester
    def test
        puts "ok 5"
    end
end
t = new Tester()
t.test()
