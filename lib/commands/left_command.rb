class LeftCommand < Struct.new(:robot, :params)

  def run
    robot.left
  end

end
