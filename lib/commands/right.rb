require_relative 'base'

module Commands
  class Right < Base
    def run
      robot.right
    end
  end
end
