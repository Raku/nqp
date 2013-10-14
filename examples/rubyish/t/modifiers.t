puts "1..8"
n=0
puts "ok #{n+=1} - if modifier" if 1==1
puts "nok #{n+=1} - if modifier" if 1==0
puts "ok #{n+=1} - unless modifier" unless 1==0
puts "nok #{n+=1} - unless modifier" unless 1==1
puts "ok #{n+=1} - until modifier" until n >= 6
puts "ok #{n+=1} - while modifier" while n < 8
