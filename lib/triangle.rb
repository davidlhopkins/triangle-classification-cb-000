class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if @length <= 0 || @width <= 0 || @height <= 0
      raise TriangleError
    end

    if @length + @width <= @height || @width + @height <= @length || @length + @height <= @width
      raise TriangleError
      end

    if @length == @width && @width == @height
      :equilateral
    elsif
      @length == @width || @width == @height || @length == @height
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
