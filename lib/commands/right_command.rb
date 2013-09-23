class RightCommand < Struct.new(:robot, :params)

  def run
    robot.right
  end

end
