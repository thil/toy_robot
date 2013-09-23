class MoveCommand < Struct.new(:robot, :params)

  def run
    robot.move
  end

end
