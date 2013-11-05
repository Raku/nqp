puts "1..13"

a = "ok 1"
b = "ok 2"
$a = "ok 3"
$c = "nok 4"

def some_sub 
    b = "nok 2"
    $c = "ok 4"
    $d = "ok 5"
end
some_sub()

class MyClass
  @@final_test = 13

  def set_class(v); @@c = v; b = 'wtf'; end
  def get_class; @@c;                   end
  def set_inst(v); @i = v;              end
  def get_inst; @i;                     end
  def class_const; @@final_test ;       end
  def tickle_f(f); @f = f ;             end

end

class OtherClass
  def set_class(v); @@c = v; end
  def get_class; @@c;        end
end

obj1 = MyClass.new;
obj2 = MyClass.new;
obj3 = OtherClass.new;

obj1.set_class(8)
obj3.set_class(10)

puts "#{a} - local: main"
puts "#{b} - local: main, function"
puts "#{$a} - $global: main"
puts "#{$c} - $global: main, function"
puts "#{$d} - $global: function"

@e=6
@f='ok'
obj1.tickle_f('nok')
puts "ok #{@e} - @instance: main"
puts "#{@f} 7 - @instance: main, object"

puts "ok #{obj1.get_class} - @@class access"
puts "ok #{obj2.get_class() + 1} - @@class access"
puts "ok #{obj3.get_class} - @@class variable"

obj1.set_inst(11)
obj2.set_inst(12)

puts "ok #{obj1.get_inst} - @instance access"
puts "ok #{obj2.get_inst} - @instance access"
puts "ok #{obj2.class_const} - @@class constant"
