puts "1..5"

def capitalize(s)
    nqp::uc(nqp::substr(s, 0, 1)) ~ nqp::lc(nqp::substr(s, 1));
end

class HelloWorld
   puts "ok 1 - class immediate code"
   def initialize(name)
      puts "ok 2 - initialize called"
      @name = capitalize name
   end
   def sayHi
      puts "ok 5 - Hello #{@name}!"
   end
end

hello = HelloWorld.new("worldish")
puts "#{nqp::can(hello, 'sayHi')? 'ok' : 'nok'} 3 - can say Hi"
puts "#{nqp::can(hello, 'sayBye')? 'nok' : 'ok'} 4 - can't say Bye"
hello.sayHi
