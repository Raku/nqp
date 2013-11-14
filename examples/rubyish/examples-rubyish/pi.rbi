# naive approximation: pi = 4 * (1 - /1/3 + 1/5 ...)

LIMIT = 50000
def time() ; nqp::time_n() ; end
def sprintf(fmt, *args) ; nqp::sprintf(fmt, args) ; end

pi_over_4 = 0.0

print 'hang on a few moments...'
start_time = time()

# sum terms in reverse order to reduce accumulated error
n = LIMIT;

while n > 0 do
    m = 4.0*n - 1.0
    pi_over_4 += 1/(m - 2) - 1/m
    n -= 1
end

puts sprintf("(completed %d iterations in %.2f sec)",
             LIMIT, time() - start_time)

pi = pi_over_4 * 4
puts pi
