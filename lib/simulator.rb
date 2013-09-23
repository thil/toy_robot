require_relative 'commands/move_command'
require_relative 'commands/place_command'
require_relative 'commands/report_command'
require_relative 'commands/left_command'
require_relative 'commands/right_command'
require_relative 'table_top'
require_relative 'robot'

class Simulator 
  COMMANDS = {
    "PLACE" => PlaceCommand,
    "REPORT" => ReportCommand,
    "MOVE" => MoveCommand,
    "LEFT" => LeftCommand,
    "RIGHT" => RightCommand
  }

  def initialize
    @table_top = TableTop.new(5, 5)
    @robot = Robot.new(@table_top)
  end

  def parse(params)
    command(params).new(@robot, params).run
  end

  private
  def command(params)
    COMMANDS.fetch params.split.first.upcase
  end

end
