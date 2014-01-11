require_relative 'non_pos'

class Robot
  attr_reader :pos, :table_top

  def initialize(table_top)
    @table_top = table_top
    @pos = NonPos.new
  end

  def move
    place pos.move
  end

  def right
    place pos.right
  end

  def report
    puts pos.report
  end

  def left
    place pos.left
  end

  def place(pos)
    @pos = pos if pos.valid?(table_top)
  end
end
