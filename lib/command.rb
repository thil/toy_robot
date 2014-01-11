require_relative 'commands/move'
require_relative 'commands/place'
require_relative 'commands/report'
require_relative 'commands/left'
require_relative 'commands/right'
require_relative 'commands/base'

class Command
  class << self
    def find(command_name, robot, params)
      Commands.const_get(command_name).new(robot, params)
      rescue NameError
        Commands::Base.new()
    end
  end
end
