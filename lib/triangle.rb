class Triangle
 
   attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if triangle_true == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if x == y && y == z && x == z
      :equilateral
    elsif x != y && y != z && z != x
      :scalene 
    else 
      :isosceles
    end 
  end
  
  def triangle_true 
   ((x > 0) && (y > 0) && (z > 0)) && ((x + y > z) && (x + z > y) && (y + z > x))
  end 
end

class TriangleError < StandardError
  
end

