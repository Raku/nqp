puts "1..4"

def capitalize(s)
    nqp:uc(nqp:substr(s, 0, 1)) ~ nqp:lc(nqp:substr(s, 1));
end

class HelloWorld
   def initialize(name)
      puts "ok 1 - initialize called"
      @name = capitalize name
   end
   def sayHi
      puts "ok 4 - Hello #{@name}!"
   end
end

hello = HelloWorld.new("worldish")
puts "#{nqp:can(hello, 'sayHi')? 'ok' : 'nok'} 2 - can say Hi"
puts "#{nqp:can(hello, 'sayBye')? 'nok' : 'ok'} 3 - can't say Bye"
hello.sayHi

