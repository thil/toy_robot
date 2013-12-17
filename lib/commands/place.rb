require_relative 'base'
require_relative '../pos'

module Commands
  class Place < Base
    def run
      pos = Pos.new position[0].to_i, position[1].to_i, position[2].downcase.to_sym
      robot.place pos
    end

    private
    def position
      @position ||= params.split.last.split(',')
    end
  end
end
