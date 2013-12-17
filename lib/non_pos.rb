#null object class for placement, so can be used to ignore other commands
class NonPos
  REPORT = "Non Placement"

  def valid?(table_top)
    true
  end

  def report
    REPORT
  end

  def left
    self
  end

  def right
    self
  end

  def move
    self
  end
end
