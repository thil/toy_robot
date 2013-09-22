class Placement
  attr_reader :x, :y, :orientation

  def initialize(x, y, orientation)
    @x =x; @y = y; @orientation = orientation
  end

  def valid?(table_top)
    x >= 0 && x < table_top.width && y >= 0 && y < table_top.height
  end
end
