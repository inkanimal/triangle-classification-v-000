class Triangle
 
  attr_accessor :side_x, :side_y, :side_z
 
  def initialize(side_x, side_y, side_z)
    @side_x = side_x
    @side_y = side_y
    @side_z = side_z
  end
  
  def kind 
     if (side_x == side_y) && (side_x == side_z) && (side_y == side_z)
      :equilateral
    elsif 
      (side_x == side_y) || (side_x == side_z) || (side_y == side_z)
      :isosceles
    else 
      :scalene
    end
    if triangle_true != true
      raise TriangleError 
    else 
      triangle_true
    end 
  end
      
  
  def triangle_true
   side_x + side_y < side_z || side_y + side_z < side_x || side_x + side_z < side_y && side_x > 0 && side_y > 0 && side_z > 0
  end
  
  class TriangleError < StandardError
  end 
 
end
