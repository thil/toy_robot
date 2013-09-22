class Placement
  attr_reader :pos

  def initialize(pos)
    @pos = pos
  end

  def move
    Placement.new( pos.move )
  end

  def left
    Placement.new( pos.left )
  end

  def report
    pos.report
  end

  def right
    Placement.new( pos.right )
  end

  def valid?(table_top)
    pos.x >= 0 && pos.x < table_top.width && 
      pos.y >= 0 && pos.y < table_top.height
  end
end
