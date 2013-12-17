require_relative 'base'

module Commands
  class Left < Base
    def run
      robot.left
    end
  end
end
