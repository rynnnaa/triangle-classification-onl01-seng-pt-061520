class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  class TriangleError < StandardError
  
   def kind
    if(side_one * length_two * side_three) == 0 || (side_one + side_two) <= side_three || (side_two + side_three) <= side_one || (side_three + side_one) <= side_two
      begin
        raise TriangleError
        puts error.message
      end
   
    elsif side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
  end
end
