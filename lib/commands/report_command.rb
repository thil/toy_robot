class ReportCommand < Struct.new(:robot, :params)

  def run
    puts robot.report
  end

end
