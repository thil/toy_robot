class Pos
  attr_reader :x, :y, :orientation
  NORTH = :north
  EAST  = :east
  WEST  = :west
  SOUTH = :south
  DIRECTIONS = [ NORTH, EAST, SOUTH, WEST ]
  LEFT  = -1
  RIGHT = 1

  def initialize(x, y, orientation)
    @x = x; @y = y; @orientation = orientation
  end

  def forward
    move(1)
  end

  def report
    "OUTPUT: #{x}, #{y}, #{orientation.to_s.upcase}"
  end

  def left
    Pos.new(x, y, turn(LEFT))
  end

  def right
    Pos.new(x, y, turn(RIGHT))
  end

  def valid?(table_top)
    x >= 0 && x < table_top.width && y >= 0 && y < table_top.height
  end

  private

  def move(movement)
    case orientation
    when NORTH
      Pos.new(x, y + movement, orientation)
    when SOUTH
      Pos.new(x, y - movement, orientation)
    when EAST
      Pos.new(x + movement, y, orientation)
    when WEST
      Pos.new(x - movement, y, orientation)
    else
      fail 'Invalid Orientation'
    end
  end

  def turn(direction)
    index = DIRECTIONS.index(orientation)
    DIRECTIONS.rotate(direction)[index]
  end
end
