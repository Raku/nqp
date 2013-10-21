puts "1..5"
def make_iterator(n)
    lambda { |incr,desc| n += incr; puts "ok #{n} - #{desc}"}
end

it1 = make_iterator(-1)
it2 = make_iterator(3)

it1.call(2,"iterator 1")
it1.call(1,"iterator 1")
it2.call(0,"iterator 2")
it2.call(1,"iterator 2")
it1.call(3,"iterator 1")

