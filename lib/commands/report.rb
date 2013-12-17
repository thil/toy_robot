require_relative 'base'

module Commands
  class Report < Base
    def run
      puts robot.report
    end
  end
end
