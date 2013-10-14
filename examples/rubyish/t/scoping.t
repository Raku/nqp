puts "1..11"

$a = "ok 1"
a = "ok 2"
b = "ok 3"
$c = "nok 4"

def some_sub 
    b = "nok 3"
    $c = "ok 4"
    $d = "ok 5"
end
some_sub()

class MyClass
  def set_class(v); @@c = v; end
  def get_class; @@c; end

  def set_inst(v); @i = v; end
  def get_inst; @i; end
end

class OtherClass
  def set_class(v); @@c = v; end
  def get_class; @@c; end
end

puts "#{$a} - $a (global)"
puts "#{a} - a (local)"
puts "#{b} - b (local)"
puts "#{$c} - $c (global)"
puts "#{$d} - $d (global)"

obj1 = MyClass.new;
obj2 = MyClass.new;
obj3 = OtherClass.new;

@e=6
puts "ok #{@e} - @gobal"

obj1.set_class(7)
obj3.set_class(9)

puts "ok #{obj1.get_class} - class access"
puts "ok #{obj2.get_class() + 1} - class access"
puts "ok #{obj3.get_class} - class variable"

obj1.set_inst(10)
obj2.set_inst(11)

puts "ok #{obj1.get_inst} - instance access"
puts "ok #{obj2.get_inst} - instance access"
