puts "1..21"

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
  @@final_test = 17

  def set_class(v); @@c = v; b = 'wtf';  end
  def get_class; @@c;                    end
  def set_inst(v1,v2); @i1 = v1; @i2= v2 end
  def get_inst1; @i1;                    end
  def get_inst2; @i2;                    end
  def class_const; @@final_test ;        end
  def tickle_f(f); @f = f ;              end

  Y = 18
  def const_tests
      puts "ok #{MyClass::Y} - package constant qualified"
      puts "ok #{Y + 1} - package constant unqualified"
  end

  def putZ
      puts "ok #{Z} - package constant unqualified"
  end
end

class OtherClass
  def set_class(v); @@c = v; end
  def get_class; @@c;        end
  def set_inst(v1,v2); @i1 = v1; @i2= v2 end
  def get_inst1; @i1;                    end
  def get_inst2; @i2;                    end

  def more_const_tests
      puts "ok #{MyClass::Y + 2} - package constant cross reference"
      puts "ok #{Y + 1} - package constant internal reference"
  end

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

obj1.set_inst(11,12)
obj2.set_inst(13,14)
obj3.set_inst(15,16)

puts "ok #{obj1.get_inst1} - @instance access"
puts "ok #{obj1.get_inst2} - @instance access"
puts "ok #{obj2.get_inst1} - @instance access"
puts "ok #{obj2.get_inst2} - @instance access"
puts "ok #{obj3.get_inst1} - @instance access"
puts "ok #{obj3.get_inst2} - @instance access"
puts "ok #{obj2.class_const} - @@class constant"

obj1.const_tests

OtherClass::Y = 20
obj3.more_const_tests
