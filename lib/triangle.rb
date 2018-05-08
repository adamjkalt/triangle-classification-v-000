class Triangle

attr_accessor :one, :two, :three

def initialize(one, two, three)
  @one = one
  @two = two
  @three = three
end

def validate_triangle
  real_triangle = [(one + two > three), (one + three > two), (two + three > one)]
end

def kind
  if one == two && two == three
    :equilateral
  elsif one == two || two == three || one == three
    :isosceles
  else
    :scalene
  end
end

class TriangleError < StandardError
end

end
