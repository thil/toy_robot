class Robot
  attr_reader :placement, :table_top

  def initialize(table_top)
    @table_top = table_top
  end

  def place(placement)
    @placement = placement if placement.valid? table_top
  end
end
