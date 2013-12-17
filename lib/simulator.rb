require_relative 'table_top'
require_relative 'command'
require_relative 'robot'

class Simulator 
  def initialize
    @table_top = TableTop.new(5, 5)
    @robot = Robot.new(@table_top)
  end

  def parse(params)
    Command.find(params.split.first.capitalize, @robot, params).run
  end
end
