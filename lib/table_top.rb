class TableTop < Struct.new(:width, :height)
  def valid?(pos)
    pos.x >= 0 && pos.x < width && pos.y >= 0 && pos.y < height
  end
end
