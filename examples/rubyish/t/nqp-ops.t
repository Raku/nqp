puts "1..11"
nqp:say("ok 1 - nqp:say")
nqp:print("ok 2 - nqp:print with new-line\n")
puts nqp:concat("ok ", '3 - nqp:concat')
puts nqp:substr("nok 4 - nqp:substr", 1)
puts nqp:lc("OK 5 - nqp:lC")
nqp:print nqp:chr(nqp:ord('o')); puts 'k 6 - nqp:ord and nqp:chr'

def ok(i,msg)
    nqp:say("ok #{i} - #{msg}");
end
def nok(i,msg)
    nqp:say("nok #{i} - #{msg}");
end

nqp:if(2+2 == 4, ok(7, "nqp:if (true)"),  nok(7, "nqp:if (true)"))
nqp:if(2+2 == 5, nok(8, "nqp:if (true)"),  ok(8, "nqp:if (false)"))

n = 9

nqp:while n <= 11, begin
    ok(n, "nqp:while (#{n})")
    n += 1
end
