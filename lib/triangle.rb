class Triangle
 
   attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if triangle_true == true #&& kosher_triangle2 == true 
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
  
  # def kosher_triangle2 
  #   x + y > z && x + z > y && y + z > x
  # end 
end

class TriangleError < StandardError
  
end
#   def initialize(x,y,z)
#     @x = x
#     @y = y
#     @z = z
#     @sides = [x,y,z]
#   end
  
#   def kind
#     if (x == y) && (x == z) && (y == z)
#       :equilateral
#     elsif 
#       (x == y) || (x == z) || (y == z)
#       :isosceles
#     else 
#       :scalene
#     end
#     if !triangle_true
#       raise TriangleError
#     end
#   end
      
  
#   def triangle_true
#   (x + y < z)|| (y + z < x) || (x + z < y) && (x > 0) && (y > 0) && (z > 0)
#   end
  
#   class TriangleError < StandardError
#   end 
 
# end
