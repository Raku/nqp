puts "1..19"

class BaseClass
  Y = 16;

  def set_inst1(v); @i1 = v;             end
  def set_inst2(v); @i2 = v;             end
  def get_inst1; @i1;                    end
  def get_inst2; @i2;                    end
  def tickle_f(f); @f = f ;              end

  def const_tests
      puts "ok #{BaseClass::Y} - package constant qualified"
      puts "ok #{Y + 1} - package constant unqualified"
  end
end

class DerivedClass < BaseClass
  def set_inst1_child(v); @i1 = v; end
  def get_inst1_child;    @i1;     end
end

class DisjointClass
  Y = 42;
  def set_inst1(v); @i1 = v;             end
  def set_inst2(v); @i2 = v;             end
  def get_inst1; @i1;                    end
  def get_inst2; @i2;                    end

  def more_const_tests
      puts "ok #{BaseClass::Y + 2} - package constant cross reference"
      puts "ok #{Y} - package constant internal reference"
  end

end

a = "ok 1"
b = "ok 2"
$a = "ok 3"
$c = "nok 4"

base_obj = BaseClass.new;
sibling_obj = BaseClass.new;
disjoint_obj = DisjointClass.new;
child_obj = DerivedClass.new;

def some_sub 
    b = "nok 2"
    $c = "ok 4"
    $d = "ok 5"
end
some_sub()

puts "#{a} - local: main"
puts "#{b} - local: main, function"
puts "#{$a} - $global: main"
puts "#{$c} - $global: main, function"
puts "#{$d} - $global: function"

@e=6
@f='ok'
base_obj.tickle_f('nok')
puts "ok #{@e} - @instance: main"
puts "#{@f} 7 - @instance: main, object"

t = 7
base_obj.set_inst1(t+=1)
base_obj.set_inst2(t+=1)
sibling_obj.set_inst1(t+=1)
sibling_obj.set_inst2(t+=1)
disjoint_obj.set_inst1(t+=1)
disjoint_obj.set_inst2(t+=1)
child_obj.set_inst1(t+=1)

puts "ok #{base_obj.get_inst1} - @instance access (base)"
puts "ok #{base_obj.get_inst2} - @instance access (base)"
puts "ok #{sibling_obj.get_inst1} - @instance access (sibling)"
puts "ok #{sibling_obj.get_inst2} - @instance access (sibling)"
puts "ok #{disjoint_obj.get_inst1} - @instance access (disjoint)"
puts "ok #{disjoint_obj.get_inst2} - @instance access (disjoint)"
puts "ok #{child_obj.get_inst1} - @instance access (child)"
puts "ok #{child_obj.get_inst1_child+1} - @instance access (child)"

base_obj.const_tests

DisjointClass::Y = t+5
disjoint_obj.more_const_tests
