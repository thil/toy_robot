class Robot
  attr_reader :x, :y, :orientation

  def place(x, y, orientation)
    @x = x; @y = y; @orientation = orientation
  end
end
