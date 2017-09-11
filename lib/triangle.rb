class Triangle
  # attr_accessor: length, width, height
  def initialize(length, width, height)
    @length = length.to_i
    @width = width.to_i
    @height = height.to_i
  end

  def triangle_check

    if @length === @width && @length === @height
      return "an Equilateral"
    elsif @length >= (@height + @width) || @width >= (@height + @length) || @height >= (@length + @width)
      return 'not a'
    elsif @length === @width || @height === @length || @width === @height
       return "an Isosceles"
    elsif @length != @width && @length != @height && @width != @height
      return "a Scalene"
    end

  end
end
