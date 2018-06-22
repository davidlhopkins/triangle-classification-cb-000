class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    #valid?
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end

    if a + b <= c || b + c <= a || a + c <= b
      raise TriangleError
    end

    if a == b && b == c
      :equilateral
    elsif
      a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

#   def valid?
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#       raise TriangleError if real_triangle.include?(false)
#   end

  class TriangleError < StandardError
  end
end
