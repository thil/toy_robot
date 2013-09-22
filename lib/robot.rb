class Robot
  attr_reader :placement

  def place(placement)
    @placement = placement if placement.valid?
  end
end
