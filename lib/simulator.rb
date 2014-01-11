require_relative 'table_top'
require_relative 'command'
require_relative 'robot'

class Simulator 
  def initialize
    @table_top = TableTop.new(5, 5)
    @robot = Robot.new(@table_top)
  end

  def parse(params)
    Command.new(@robot, params).public_send(command_name(params))
  end

  private

  def command_name(params)
    params.split.first.downcase
  end
end
