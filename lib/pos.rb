class Pos
  attr_reader :x, :y, :orientation
  NORTH = :north
  EAST = :east
  WEST = :west
  SOUTH = :south
  DIRECTIONS = [ NORTH, EAST, SOUTH, WEST ]

  def initialize(x, y, orientation)
    @x = x; @y = y; @orientation = orientation
  end

  def move
    case orientation
    when NORTH
      Pos.new(x, y + 1, orientation)
    when SOUTH
      Pos.new(x, y - 1, orientation)
    when EAST
      Pos.new(x + 1, y, orientation)
    when WEST
      Pos.new(x - 1, y, orientation)
    end
  end

  def left
    Pos.new(x, y, turn_left)
  end

  private
  def turn_left
    index = DIRECTIONS.index(orientation)
    DIRECTIONS.rotate(-1)[index]
  end

end
