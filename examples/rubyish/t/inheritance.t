puts "1..10"

class Point
  @@tst = -1
  def initialize(x, y)
    puts "ok #{ @@tst = @@tst + 2 } - Point.initialize called"
    @x = x
    @y = y
  end
  
  def x; @x ; end
  def y; @y ; end

  def radius; (x * @x  +  y * @y) ** 0.5; end
end

class Point3D < Point
  def initialize(x, y, z)
      puts "ok 2 - Point3D.initialize called"
      super(x, y)
      @z = z
  end

  def z; @z ; end

  def radius; (x * @x  +  y * @y  +  z * @z) ** 0.5; end
end

obj_2d = Point.new(10, 20)
obj_3d = Point3D.new(15, 25, 35)

puts "#{obj_2d.x == 10 ? 'ok' : 'nok'} 4 - 2d obj x"
puts "#{obj_2d.y == 20 ? 'ok' : 'nok'} 5 - 2d obj y"

t2 = obj_2d.radius
puts "#{t2 > 22 && t2 < 23 ? 'ok' : 'nok'} 6 - radius 2d (approx)"

puts "#{obj_3d.x == 15 ? 'ok' : 'nok'} 7 - 3d obj x"
puts "#{obj_3d.y == 25 ? 'ok' : 'nok'} 8 - 3d obj y"
puts "#{obj_3d.z == 35 ? 'ok' : 'nok'} 9 - 3d obj z"

t3 = obj_3d.radius
puts "#{t3 > 45 && t3 < 46 ? 'ok' : 'nok'} 10 - radius 3d (approx)"
