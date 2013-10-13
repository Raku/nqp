puts "1..6"

n = 1

while n <= 3 do
    puts "ok #{n} - while loop"
    n += 1
end

until n > 5 do
    puts "ok #{n} - until loop"
    n += 1
end

puts "ok #{n} - postloop"
