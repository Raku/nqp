# naive approximation: pi = 4 * (1 - /1/3 + 1/5 ...)

limit = 2500000
def time ; nqp:time_i() ; end

n = 1;
pi_over_4 = 0.0

print 'hang on a few moments...'
start_time = time()

while n < limit do

    m = 4.0*n - 1.0
    pi_over_4 += 1/(m - 2) - 1/m
    n += 1

end

puts "(completed #{limit} iterations in #{time() - start_time} sec )"

pi = pi_over_4 * 4
puts pi
