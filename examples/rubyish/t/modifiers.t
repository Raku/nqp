puts "1..10"
n=0
puts "ok #{n+=1} - if modifier" if true
puts "nok #{n+=1} - if modifier" if false
puts "ok #{n+=1} - unless modifier" unless false
puts "nok #{n+=1} - unless modifier" unless true
puts "ok #{n+=1} - until modifier" until n >= 6
puts "ok #{n+=1} - while modifier" while n < 8
begin
    puts "ok #{n+=1} - while modifier - begin .. end block" while n < 10
end until n >= 10
