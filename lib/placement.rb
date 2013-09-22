class Placement
  attr_reader :pos

  def initialize(pos)
    @pos = pos
  end

  def valid?(table_top)
    pos.x >= 0 && pos.x < table_top.width && 
      pos.y >= 0 && pos.y < table_top.height
  end
end
