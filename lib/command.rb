require_relative 'pos'

class Command
  def initialize(robot, params)
    @robot = robot
    @params = params
  end

  def place
    pos = Pos.new position[0].to_i, position[1].to_i, position[2].downcase.to_sym
    @robot.place pos
  end

  def method_missing(method, *args, &block)
    if @robot.respond_to?(method)
      @robot.public_send(method)
    else
      super
    end
  end

  private
  def position
    @position ||= @params.split.last.split(',')
  end
end
