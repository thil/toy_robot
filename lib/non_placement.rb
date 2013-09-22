#null object class for placement, so can be used to ignore other commands
class NonPlacement
  REPORT = "Non Placement"

  def valid?
    true
  end

  def report
    REPORT
  end
end
